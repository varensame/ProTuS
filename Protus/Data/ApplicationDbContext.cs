using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Protus.Data.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace Protus.Data
{
    /// <summary>
    /// DBContext class to handle access with the sql server database
    /// </summary>
    public class ApplicationDbContext : IdentityDbContext<ApplicationUser>
    {
        public ApplicationDbContext(
             DbContextOptions<ApplicationDbContext> options
             ) : base(options)
        {
        }
        public virtual DbSet<Course> Courses { get; set; }
        public virtual DbSet<Topic> Topics { get; set; }
        public virtual DbSet<Challenge> Challenges { get; set; }
        public virtual DbSet<ChallengeOption> ChallengeOptions { get; set; }
        public virtual DbSet<SolvedChallenge> SolvedChallenges { get; set; }

    }
}
