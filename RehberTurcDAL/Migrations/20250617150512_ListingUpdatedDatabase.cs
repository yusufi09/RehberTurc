using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace RehberTurcDAL.Migrations
{
    /// <inheritdoc />
    public partial class ListingUpdatedDatabase : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "CategoryId",
                table: "listings",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<DateTime>(
                name: "CreatedDate",
                table: "listings",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.CreateIndex(
                name: "IX_listings_CategoryId",
                table: "listings",
                column: "CategoryId");

            migrationBuilder.AddForeignKey(
                name: "FK_listings_Categories_CategoryId",
                table: "listings",
                column: "CategoryId",
                principalTable: "Categories",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_listings_Categories_CategoryId",
                table: "listings");

            migrationBuilder.DropIndex(
                name: "IX_listings_CategoryId",
                table: "listings");

            migrationBuilder.DropColumn(
                name: "CategoryId",
                table: "listings");

            migrationBuilder.DropColumn(
                name: "CreatedDate",
                table: "listings");
        }
    }
}
