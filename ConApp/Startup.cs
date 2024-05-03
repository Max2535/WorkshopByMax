using ConApp.Data;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Hosting;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace ConApp
{
    internal class Startup : BackgroundService
    {
        private readonly SOLDbContext _context;

        public Startup(SOLDbContext context)
        {
            _context = context ?? throw new ArgumentNullException(nameof(context));
        }

        protected override async Task ExecuteAsync(CancellationToken stoppingToken)
        {
            //Insert Code
            var config = await _context.TSOLSConfigs.ToListAsync();
            Console.WriteLine(config);
        }
    }
}
