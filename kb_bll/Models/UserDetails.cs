using System;
using System.Collections.Generic;

namespace kb_bll.Models
{
    public partial class UserDetails
    {
        public int Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string EmailId { get; set; }
        public string Password { get; set; }
        public int Role { get; set; }
        public DateTime CreationDate { get; set; }
    }
}
