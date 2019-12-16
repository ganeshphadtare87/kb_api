using System;
using System.Collections.Generic;

namespace kb_bll.Models
{
    public partial class Advertise
    {
        public Advertise()
        {
            CategoryCar = new HashSet<CategoryCar>();
            CategoryProperty = new HashSet<CategoryProperty>();
        }

        public int AdvId { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public int CategoryId { get; set; }
        public decimal Price { get; set; }

        public virtual Category Category { get; set; }
        public virtual ICollection<CategoryCar> CategoryCar { get; set; }
        public virtual ICollection<CategoryProperty> CategoryProperty { get; set; }
    }
}
