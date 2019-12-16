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
            RegisterServices();
        }

        public static void RegisterServices()
        {
            //services.Add(new ServiceDescriptor(typeof(ILog), new MyConsoleLogger()));
        }
    }
}
