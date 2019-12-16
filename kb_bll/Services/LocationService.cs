using kb_bll.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Sql;
using kb_bll.Models;

namespace kb_bll.Services
{
    public class LocationService : ILocationService
    {
        KharidoBechoContext db = new KharidoBechoContext();
        public List<LocationVM> GetLocations()
        {
            var locationList = (from l in db.Location
                                select l).ToList();

            List<LocationVM> locList = new List<LocationVM>();
            //foreach (var loc in locationList) {

            //    locList.Add(loc);
            //}

            return locList;
        }
    }
}
