using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace CompeteSync.Migrations
{
    /// <inheritdoc />
    public partial class AddedTables : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Matches_Teams_WinnerId",
                table: "Matches");

            migrationBuilder.DropForeignKey(
                name: "FK_Teams_Matches_MatchId",
                table: "Teams");

            migrationBuilder.DropIndex(
                name: "IX_Teams_MatchId",
                table: "Teams");

            migrationBuilder.DropIndex(
                name: "IX_Matches_WinnerId",
                table: "Matches");

            migrationBuilder.DropColumn(
                name: "MatchId",
                table: "Teams");

            migrationBuilder.DropColumn(
                name: "Points",
                table: "Matches");

            migrationBuilder.DropColumn(
                name: "Stage",
                table: "Matches");

            migrationBuilder.RenameColumn(
                name: "Gender",
                table: "Players",
                newName: "GenderId");

            migrationBuilder.RenameColumn(
                name: "WinnerId",
                table: "Matches",
                newName: "StageId");

            migrationBuilder.AddColumn<int>(
                name: "Opponent1Id",
                table: "Matches",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "Opponent2Id",
                table: "Matches",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "ResultId",
                table: "Matches",
                type: "int",
                nullable: false,
                defaultValue: 0);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Opponent1Id",
                table: "Matches");

            migrationBuilder.DropColumn(
                name: "Opponent2Id",
                table: "Matches");

            migrationBuilder.DropColumn(
                name: "ResultId",
                table: "Matches");

            migrationBuilder.RenameColumn(
                name: "GenderId",
                table: "Players",
                newName: "Gender");

            migrationBuilder.RenameColumn(
                name: "StageId",
                table: "Matches",
                newName: "WinnerId");

            migrationBuilder.AddColumn<int>(
                name: "MatchId",
                table: "Teams",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "Points",
                table: "Matches",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "Stage",
                table: "Matches",
                type: "int",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_Teams_MatchId",
                table: "Teams",
                column: "MatchId");

            migrationBuilder.CreateIndex(
                name: "IX_Matches_WinnerId",
                table: "Matches",
                column: "WinnerId");

            migrationBuilder.AddForeignKey(
                name: "FK_Matches_Teams_WinnerId",
                table: "Matches",
                column: "WinnerId",
                principalTable: "Teams",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Teams_Matches_MatchId",
                table: "Teams",
                column: "MatchId",
                principalTable: "Matches",
                principalColumn: "Id");
        }
    }
}
