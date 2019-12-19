using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using kb_bll.Services;
using kb_bll.ViewModels;
using kb_bll.Models;

namespace kb_api.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class PostAdController : Controller
    {
        PostAdService postAdModel = new PostAdService();

        [HttpPost("postadcar")]
        public int PostAdCar(CategoryCar objCarCat)
        {
            return postAdModel.PostCarAd(objCarCat);
        }

        [HttpPost("postadproperty")]
        public int PostAdProperty(CategoryProperty objPropCat)
        {
            return postAdModel.PostPropertyAd(objPropCat);
        }
    }
}