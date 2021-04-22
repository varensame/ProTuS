using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Protus.Data.Entities
{
    public class ApplicationUser : IdentityUser
    {
        public ApplicationUser()
        {
        }
        public string BirthYear { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
       
 
    }
}
