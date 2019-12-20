using kb_bll.Models;
using kb_bll.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace kb_bll.Services
{
    public interface IAdvertiseService
    {
        List<AdvertiseTileVM> SearchAdvertise(string SearchText);

        List<AdvertiseTileVM> GetAllAdvertises();
    }
}
