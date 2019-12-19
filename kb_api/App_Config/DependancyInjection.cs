using kb_bll.Services;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace kb_api.App_Config
{
    public class DependancyInjection
    {
        public static void Register(IServiceCollection services)
        {
            RegisterServices(services);
        }

        public static void RegisterServices(IServiceCollection services)
        {
            //services.Add(new ServiceDescriptor(typeof(ILog), new MyConsoleLogger()));

            services.AddTransient<ICategoryService, CategoryService>();
            services.AddTransient<IAdvertiseService, AdvertiseService>();
            services.AddTransient<ILocationService, LocationService>();
        }
    }
}
