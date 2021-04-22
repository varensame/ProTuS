using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Protus.Data;
using Protus.DataSeeder;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Protus.Helpers
{
    /// <summary>
    /// This class is responsible to register all the services in the DI Container
    /// </summary>
    public class ServiceInstaller
    {
        public static void RegisterModelServices(IServiceCollection services, IConfiguration configuration)
        {
            // configure DI for application services
            services.AddScoped<DbContext, ApplicationDbContext>();
            services.AddHttpContextAccessor();
            services.AddScoped<IDbInitializer, DbInitializer>();
            
        }
    }
}
