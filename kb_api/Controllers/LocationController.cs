using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using kb_bll.Services;
using kb_bll.ViewModels;
using Microsoft.AspNetCore.Mvc;

namespace kb_api.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class LocationController : Controller
    {
        ILocationService locationService;
        public LocationController(ILocationService locationService) {
            this.locationService = locationService;
        }
        public List<LocationVM> GetLocations()
        {
            return this.locationService.GetLocations();
        }
    }
}