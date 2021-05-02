using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace Protus.Data.Migrations
{
    public partial class MessageDatecha : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<DateTime>(
                name: "MessageDate",
                table: "Messages",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "MessageDate",
                table: "Messages");
        }
    }
}
