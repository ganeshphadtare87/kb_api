using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace kb_bll.ViewModels
{
    public class CategoryPropertyVM : AdvertiseVM
    {
        public int Id { get; set; }
        public new int AdvId { get; set; }
        public string Type { get; set; }
        public int? Bedrooms { get; set; }
        public int? Bathrooms { get; set; }
        public string Furnishing { get; set; }
        public string Construction { get; set; }
        public string ListedBy { get; set; }
        public int? BuiltupArea { get; set; }
        public int? CarpetArea { get; set; }
        public int? Maintenance { get; set; }
        public int? TotalFloors { get; set; }
        public int? FloorNo { get; set; }
        public int? CarParking { get; set; }
        public bool? VastuCompliant { get; set; }
        public bool? MealInclude { get; set; }
        public int PropertyType { get; set; }
    }
}
