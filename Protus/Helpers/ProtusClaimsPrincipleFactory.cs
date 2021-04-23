using Microsoft.AspNetCore.Identity;
using Microsoft.Extensions.Options;
using Protus.Data.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;

namespace Protus.Helpers
{
   
    public class ProtusClaimsPrincipleFactory : UserClaimsPrincipalFactory<ApplicationUser>
    {

        public ProtusClaimsPrincipleFactory(UserManager<ApplicationUser> userManager , IOptions<IdentityOptions> optionsAccessor) : base(userManager, optionsAccessor)
        {
        }


        protected override async Task<ClaimsIdentity> GenerateClaimsAsync(ApplicationUser user)
        {
            var id = await base.GenerateClaimsAsync(user);
            var _roles = await UserManager.GetRolesAsync(user);
            var userRole = _roles != null && _roles.Count > 0 ? _roles.FirstOrDefault() : string.Empty;
            id.AddClaim(new Claim("UserRole", userRole));
            id.AddClaim(new Claim(ClaimTypes.Role, userRole));
            id.AddClaim(new Claim("UserId", user.Id.ToString()));
            id.AddClaim(new Claim("FirstName", user.FirstName??string.Empty));
            id.AddClaim(new Claim("LastName", user.LastName ?? string.Empty));
            id.AddClaim(new Claim("Email", user.Email));
            return id;
        }
    }
}
