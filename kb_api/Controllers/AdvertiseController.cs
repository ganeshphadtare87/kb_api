using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using kb_bll.Services;
using kb_bll.ViewModels;

namespace kb_api.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class AdvertiseController : Controller
    {
        [HttpGet("SearchAdvertise")]
        public List<AdvertiseVM> SearchAdvertise(string SearchText)
        {
            AdvertiseService adService = new AdvertiseService();
            return adService.SearchAdvertise(SearchText);

         }
    }
}