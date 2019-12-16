using System;
using System.Collections.Generic;

namespace kb_bll.Models
{
    public partial class Category
    {
        public Category()
        {
            Advertise = new HashSet<Advertise>();
        }

        public int CategoryId { get; set; }
        public string CategoryName { get; set; }
        public string Description { get; set; }
        public int? ParentCatId { get; set; }

        public virtual ICollection<Advertise> Advertise { get; set; }
    }
}
