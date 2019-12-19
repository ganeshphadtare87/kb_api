using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;

namespace kb_bll.Models
{
    [NotMapped]
    public partial class CategoryCar : Advertise
    {
        public int Id { get; set; }
        //public int AdvId { get; set; }
        public string Brand { get; set; }
        public int Year { get; set; }
        public int Fuel { get; set; }
        public int Kmdriven { get; set; }
        //public string Description { get; set; }
    }
}
