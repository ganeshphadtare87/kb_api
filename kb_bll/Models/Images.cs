using System;
using System.Collections.Generic;

namespace kb_bll.Models
{
    public partial class Images
    {
        public int Id { get; set; }
        public string ImageUrl { get; set; }
        public int AdvId { get; set; }

        public virtual Advertise Adv { get; set; }
    }
}
