using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace kb_bll.ViewModels
{
    public class CategoryCarVM : AdvertiseVM
    {
        public int Id { get; set; }
        public new int AdvId { get; set; }
        public string Brand { get; set; }
        public int Year { get; set; }
        public int Fuel { get; set; }
        public int Kmdriven { get; set; }
        public new string Description { get; set; }
    }
}
