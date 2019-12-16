using kb_bll.Common;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace kb_api.App_Config
{
    public class AppSettingManager
    {
        public static void Register(IConfiguration configuration)
        {
            AppSettings.GetConnectionString = configuration.GetSection("ConnectionStrings").GetSection("AppConnectionString").Value;
        }
    }
}
