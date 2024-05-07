using BuildingBlocks.Models.WebService.Request.ShopOnline;
using ConApp.Class;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using RabbitMQ.Client;
using RabbitMQ.Client.Events;
using System;
using System.Threading;
using System.Threading.Channels;
using System.Threading.Tasks;
using System.Xml.Linq;
using WorkShopRabbitMQ.Class;
using WorkShopRabbitMQ.Models.Config;

namespace ConApp
{
    internal class Startup : BackgroundService
    {
        private cDbContext oContext;
        private HostBuilderContext oHost;
        private readonly ILogger<Startup> oLogger;
        private IConnection oConnection;
        private IModel oChannel;

        public Startup(cDbContext context, HostBuilderContext host, ILogger<Startup> logger)
        {
            oContext = context ?? throw new ArgumentNullException(nameof(context));
            oHost = host ?? throw new ArgumentNullException(nameof(host));
            oLogger = logger ?? throw new ArgumentNullException(nameof(logger));
            C_InITxRabbitMQ();
        }

        private void C_InITxRabbitMQ()
        {
            cVB.oVB_MQSetting = new cmlRabbitMQSetting();
            oHost.Configuration.GetSection("RabbitMQSettings").Bind(cVB.oVB_MQSetting);

            var oFactory = new ConnectionFactory();

            oFactory = new ConnectionFactory();
            oFactory.HostName = cVB.oVB_MQSetting.tMQHostName;
            oFactory.UserName = cVB.oVB_MQSetting.tMQUserName;
            oFactory.Password = cVB.oVB_MQSetting.tMQPassword;
            oFactory.VirtualHost = cVB.oVB_MQSetting.tMQVirtualHost;

            if (cVB.oVB_MQSetting.nPort == 5672)
            {
                oFactory.Ssl = new SslOption();
                oFactory.Ssl.Enabled = true;
                oFactory.Ssl.AcceptablePolicyErrors = System.Net.Security.SslPolicyErrors.RemoteCertificateNameMismatch | System.Net.Security.SslPolicyErrors.RemoteCertificateChainErrors;
                oFactory.Ssl.Version = System.Security.Authentication.SslProtocols.Tls12;
            }

            // create connection
            oConnection = oFactory.CreateConnection();

            // create channel
            oChannel = oConnection.CreateModel();

            oChannel.ExchangeDeclare("ExchangeName1", ExchangeType.Fanout);
            //DOTO:get by config
            oChannel.QueueDeclare("MaxQueueAddPdt", true, false, false, null);
            //oChannel.QueueBind("MaxQueueAddPdt", "max.exchange", "max.queue.*", null);
            //oChannel.BasicQos(0, 1, false);

            oConnection.ConnectionShutdown += RabbitMQoConnectionShutdown;
        }

        protected override async Task ExecuteAsync(CancellationToken stoppingToken)
        {
            stoppingToken.ThrowIfCancellationRequested();
            //DOTO:Muliple Queue
            var oConsumer = new EventingBasicConsumer(oChannel);
            oConsumer.Received += async (ch, ea) =>
            {
                // received message ea.RoutingKey
                var tMessage = System.Text.Encoding.UTF8.GetString(ea.Body);

                // handle the received message
                try
                {
                    cmlDataProduct oRcvPdt = Newtonsoft.Json.JsonConvert.DeserializeObject<cmlDataProduct>(tMessage);
                    //Insert Master Product
                    oContext.TSOLMProducts.Add(new ConApp.Models.TSOLMProduct
                    {
                        FTPdtCode = oRcvPdt.ptCode,
                        FTPdtName = oRcvPdt.ptName,
                        FCPdtPri = oRcvPdt.pnPri,
                        FNPdtQty = oRcvPdt.pnQty,
                        FBPdtAct = true,
                        FNPdtCnfVat = 1,
                    });
                    await oContext.SaveChangesAsync();
                    //Delete queue
                    oChannel.BasicAck(ea.DeliveryTag, false);
                }
                catch (Exception ex)
                {
                    //Re queue
                    //oChannel.BasicNack(ea.DeliveryTag, false, true);
                    //Delete queue error
                    oChannel.BasicNack(ea.DeliveryTag, false, false);
                }
            };

            oConsumer.Shutdown += C_SDxConsumer;
            oConsumer.Registered += C_REGxConsumer;
            oConsumer.Unregistered += C_UNREGxConsumer;
            oConsumer.ConsumerCancelled += C_CNxConsumer;

            oChannel.BasicConsume("MaxQueueAddPdt", false, oConsumer);
            //return Task.CompletedTask;
        }

        private void HandleMessage(string content)
        {
            // we just print this message 
            oLogger.LogInformation($"consumer received {content}");
        }

        private void RabbitMQoConnectionShutdown(object sender, ShutdownEventArgs e)
        {
            oLogger.LogInformation($"connection shut down {e.ReplyText}");
        }

        private void C_CNxConsumer(object sender, ConsumerEventArgs e)
        {
            oLogger.LogInformation($"consumer cancelled {e.ConsumerTag}");
        }

        private void C_UNREGxConsumer(object sender, ConsumerEventArgs e)
        {
            oLogger.LogInformation($"consumer unregistered {e.ConsumerTag}");
        }

        private void C_REGxConsumer(object sender, ConsumerEventArgs e)
        {
            oLogger.LogInformation($"consumer registered {e.ConsumerTag}");
        }

        private void C_SDxConsumer(object sender, ShutdownEventArgs e)
        {
            oLogger.LogInformation($"consumer shutdown {e.ReplyText}");
        }

        public override void Dispose()
        {
            oContext.Dispose();
            oChannel.Close();
            oConnection.Close();
            base.Dispose();
        }
    }
}
