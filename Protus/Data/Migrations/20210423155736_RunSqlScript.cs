using Microsoft.AspNetCore.Hosting;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.Extensions.DependencyInjection;
using Protus.Helpers;
using System;
using System.IO;

namespace Protus.Data.Migrations
{
    public partial class RunSqlScript : Migration
    {
       
        public RunSqlScript( )
        {
             
        }
        protected override void Up(MigrationBuilder migrationBuilder)
        {

            // using var serviceScope = ServiceActivator.GetScope();
            // var webHostEnvironment= serviceScope.ServiceProvider.GetRequiredService<IWebHostEnvironment>();
            var webRootPath = Directory.GetCurrentDirectory(); //webHostEnvironment.WebRootPath;

            var sqlFile = webRootPath+ @"/DataSeeder/data_script.sql";
            migrationBuilder.Sql(File.ReadAllText(sqlFile),true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {

        }
    }
}
