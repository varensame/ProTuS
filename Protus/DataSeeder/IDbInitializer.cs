using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Protus.DataSeeder
{
    public interface IDbInitializer
    {
        /// <summary>
        /// Applies any pending migrations for the context to the database.
        /// Will create the database if it does not already exist.
        /// </summary>
        Task Initialize();

        /// <summary>
        /// Adds some default values to the Db
        /// </summary>
        Task SeedData();
    }
}
