using Microsoft.EntityFrameworkCore.Migrations;
using System.IO;

namespace Protus.Data.Migrations
{
    public partial class CodingExamplesScript : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
          
            var webRootPath = Directory.GetCurrentDirectory(); //webHostEnvironment.WebRootPath;

            var sqlFile = webRootPath + @"/DataSeeder/examples_script.sql";
            migrationBuilder.Sql(File.ReadAllText(sqlFile), true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {

        }
    }
}
