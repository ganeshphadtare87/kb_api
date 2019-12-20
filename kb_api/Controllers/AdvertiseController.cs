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
        IAdvertiseService advertiseService;
        public AdvertiseController(IAdvertiseService advertiseService) {
            this.advertiseService = advertiseService;
        }

        [HttpGet("searchadvertise")]
        public List<AdvertiseTileVM> SearchAdvertise(string SearchText)
        {
          
            return this.advertiseService.SearchAdvertise(SearchText);

         }

        [HttpGet("getalladvertises")]
        public List<AdvertiseTileVM> GetAllAdvertises()
        {

            return this.advertiseService.GetAllAdvertises();

        }
    }
}