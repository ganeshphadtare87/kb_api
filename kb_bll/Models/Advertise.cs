using System;
using System.Collections.Generic;

namespace kb_bll.Models
{
    public partial class Advertise
    {
        public Advertise()
        {
            CategoryProperty = new HashSet<CategoryProperty>();
        }

        public int AdvId { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public int CategoryId { get; set; }
        public decimal Price { get; set; }
        public int LocationId { get; set; }
        public DateTime? DatePosted { get; set; }

        public virtual Category Category { get; set; }
        public virtual Location Location { get; set; }
        public virtual ICollection<CategoryProperty> CategoryProperty { get; set; }
    }
}
