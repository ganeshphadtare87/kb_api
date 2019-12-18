using System;
using System.Collections.Generic;

namespace kb_bll.Models
{
    public partial class Location
    {
        public Location()
        {
            Advertise = new HashSet<Advertise>();
        }

        public int LocationId { get; set; }
        public string LocationName { get; set; }
        public int Type { get; set; }

        public virtual ICollection<Advertise> Advertise { get; set; }
    }
}
