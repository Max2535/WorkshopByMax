using ConApp.Class;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using System;
using System.Configuration;
using System.IO;
using System.Reflection;
using System.Threading.Tasks;
using WorkShopRabbitMQ.Class;
using WorkShopRabbitMQ.Models.Config;

namespace ConApp
{
    internal class Program
    {
        private static IHostBuilder CreateHostBuilder(string[] args) =>
        Host.CreateDefaultBuilder(args)
         .ConfigureAppConfiguration(LoadConfiguration)
         .ConfigureServices(ConfigureServices);

        private static async Task Main(string[] args)
        {
            CreateHostBuilder(args).Build().Run();
        }
        public static void LoadConfiguration(HostBuilderContext host, IConfigurationBuilder builder)
        {
            builder
                .SetBasePath(Directory.GetCurrentDirectory())
                .AddJsonFile("appsettings.json", optional: false, reloadOnChange: true)
                .AddJsonFile($"appsettings.{Environment.GetEnvironmentVariable("ASPNETCORE_ENVIRONMENT") ?? "Production"}.json", optional: true)
                .AddEnvironmentVariables();
        }

        private static void ConfigureServices(HostBuilderContext host, IServiceCollection services)
        {
            services
                .AddDbContext<cDbContext>(options =>
                {
                    options.UseSqlServer(host.Configuration.GetConnectionString("Database"));
                }, ServiceLifetime.Scoped)
                .AddHostedService<Startup>();
                /*
               Transient: บริการจะถูกสร้างใหม่ทุกครั้งที่มีการร้องขอ (resolve) โดยผู้ใช้ ซึ่งหมายความว่าแต่ละการร้องขอจะได้รับการบริการที่ไม่เช่นเดียวกัน และบริการจะไม่ถูกกำหนดให้ใช้งานร่วมกันในระหว่างแต่ละการร้องขอ
               Scoped: บริการจะถูกสร้างขึ้นใหม่ต่อคำขอ (request) แต่จะถูกทำให้พร้อมใช้งานในขอบเขตของการขอร้องนั้นๆ เพียงครั้งเดียว เมื่อคำขอสิ้นสุดลง บริการจะถูกทำลาย
               Singleton: บริการจะถูกสร้างครั้งเดียวเท่านั้นและถูกใช้ร่วมกันทั่วโปรแกรม ซึ่งหมายความว่าแต่ละการร้องขอจะได้รับการบริการเหมือนเดิม และบริการจะไม่ถูกทำลายจนกว่าโปรแกรมจะสิ้นสุดการทำงาน
               */
        }
    }
}
