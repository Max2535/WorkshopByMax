﻿using ConApp.Class;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using WorkShopRabbitMQ.Class;
using WorkShopRabbitMQ.Models.Config;

namespace ConApp
{
    internal class Startup : BackgroundService
    {
        private readonly cDbContext _context;
        private HostBuilderContext _host;
        private readonly ILogger<Startup> _logger;
        public Startup(cDbContext context, HostBuilderContext host, ILogger<Startup> logger)
        {
            _context = context ?? throw new ArgumentNullException(nameof(context));
            _host = host ?? throw new ArgumentNullException(nameof(host));
            _logger = logger ?? throw new ArgumentNullException(nameof(logger));
        }

        protected override async Task ExecuteAsync(CancellationToken stoppingToken)
        {
            //Insert Code
            //var config = await _context.TSOLSConfigs.ToListAsync();
            //var cof = _configuration.GetSection("RabbitMQSettings");

            cVB.oVB_MQSetting = new cmlRabbitMQSetting();
            _host.Configuration.GetSection("RabbitMQSettings").Bind(cVB.oVB_MQSetting);
            new cMQReceiver().C_MQRxProcess();



        }
    }
}
