using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace kb_bll.ViewModels
{
    public class AdvertiseTileVM
    {
        public int AdvID { get; set; }

        public string  TileLine1 { get; set; }
        //public string TileLine2 { get; set; }

        public string Title { get; set; }

        public double Price { get; set; }

        public string ImageUrl { get; set; }
    }
}
