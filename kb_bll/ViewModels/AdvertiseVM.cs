using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace kb_bll.ViewModels
{
    public class AdvertiseVM
    {
        public int AdvId { get; set; }

        public string Title { get; set; }

        public string Description { get; set; }

        public double Price { get; set; }

        public DateTime DatePosted { get; set; }
    }
}
