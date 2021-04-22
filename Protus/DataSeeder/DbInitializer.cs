using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Protus.Data;
using Protus.Data.Entities;
using Protus.Enums;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Protus.DataSeeder
{
    public class DbInitializer : IDbInitializer
    {
        private readonly IServiceScopeFactory _scopeFactory;
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly IConfiguration configuration;
        public DbInitializer(IServiceScopeFactory scopeFactory, UserManager<ApplicationUser> userManager ,IConfiguration config)
        {
            this._scopeFactory = scopeFactory;
            _userManager = userManager;
            this.configuration = config;
        }

        public async Task Initialize()
        {
            using (var serviceScope = _scopeFactory.CreateScope())
            {
                using (var context = serviceScope.ServiceProvider.GetService<ApplicationDbContext>())
                {
                    await context.Database.MigrateAsync();
                }

                
            }
        }

        public async Task SeedData()
        {
            using (var serviceScope = _scopeFactory.CreateScope())
            {

                 using (var context = serviceScope.ServiceProvider.GetService<ApplicationDbContext>())
                {
                    foreach (var _roleName in Enum.GetNames(typeof(ApplicationRolesEnum)))
                    {
                        await AddRole(_roleName, context);
                    }
                    await AddSuperadmin(context);
                    await AddTeacher(context);
                }



            }
        }

        private async Task AddSuperadmin( ApplicationDbContext context) 
        {
            string _UserName = configuration.GetValue<string>("SuperadminUser:UserName");
            string _Password = configuration.GetValue<string>("SuperadminUser:Password");
            string _Email = configuration.GetValue<string>("SuperadminUser:Email");
            string _FirstName = configuration.GetValue<string>("SuperadminUser:FirstName");
            string _LastName = configuration.GetValue<string>("SuperadminUser:LastName");

            var user = new ApplicationUser
            {
                UserName = _UserName,
                NormalizedUserName = _UserName.ToUpper(),
                Email = _Email,
                NormalizedEmail = _Email.ToUpper(),
                EmailConfirmed = true,
                LockoutEnabled = false,
                SecurityStamp = Guid.NewGuid().ToString()
            };

            if (!context.Users.Any(u => u.UserName == user.UserName))
            {
                var password = new PasswordHasher<ApplicationUser>();
                var hashed = password.HashPassword(user, _Password);
                user.PasswordHash = hashed;
                await _userManager.CreateAsync(user);
                var roleName = ApplicationRolesEnum.Admin.ToString().ToUpper();
                await _userManager.AddToRoleAsync(user, roleName);
            }
        }
        private async Task AddTeacher(ApplicationDbContext context)
        {
            string _UserName = configuration.GetValue<string>("TeacherUser:UserName");
            string _Password = configuration.GetValue<string>("TeacherUser:Password");
            string _Email = configuration.GetValue<string>("TeacherUser:Email");
            string _FirstName = configuration.GetValue<string>("TeacherUser:FirstName");
            string _LastName = configuration.GetValue<string>("TeacherUser:LastName");

            var user = new ApplicationUser
            {
                UserName = _UserName,
                NormalizedUserName = _UserName.ToUpper(),
                Email = _Email,
                NormalizedEmail = _Email.ToUpper(),
                EmailConfirmed = true,
                LockoutEnabled = false,
                SecurityStamp = Guid.NewGuid().ToString()
            };

            if (!context.Users.Any(u => u.UserName == user.UserName))
            {
                var password = new PasswordHasher<ApplicationUser>();
                var hashed = password.HashPassword(user, _Password);
                user.PasswordHash = hashed;
                await _userManager.CreateAsync(user);
                var roleName = ApplicationRolesEnum.Teacher.ToString().ToUpper();
                await _userManager.AddToRoleAsync(user, roleName);
            }
        }

        private async Task AddRole(string roleName, ApplicationDbContext context)
        {
            var roleStore = new RoleStore<IdentityRole>(context);
            if (!context.Roles.Any(r => r.Name == roleName))
            {
                await roleStore.CreateAsync(new IdentityRole { Name = roleName, NormalizedName = roleName.ToUpper() });
            }
        }

        
    }
}
