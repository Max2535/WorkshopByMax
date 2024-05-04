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
                }, ServiceLifetime.Singleton)
                .AddHostedService<Startup>();
        }
    }
}
