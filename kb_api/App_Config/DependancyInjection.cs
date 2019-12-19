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
            services.Add(new ServiceDescriptor(typeof(ILocationService), typeof(LocationService)));
            services.Add(new ServiceDescriptor(typeof(ICategoryService), typeof(CategoryService)));
            services.Add(new ServiceDescriptor(typeof(IAdvertiseService), typeof(AdvertiseService)));
        }
    }
}
