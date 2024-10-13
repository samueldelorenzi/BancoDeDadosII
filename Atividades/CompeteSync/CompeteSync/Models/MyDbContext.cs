using Microsoft.EntityFrameworkCore;

namespace CompeteSync.Models
{
    public class MyDbContext : DbContext
    {
        public MyDbContext(DbContextOptions<MyDbContext> options) : base(options) { }

        public DbSet<Competition> Competitions { get; set; }
        public DbSet<Group> Groups { get; set; }
        public DbSet<Match> Matches { get; set; }
        public DbSet<Player> Players { get; set; }
        public DbSet<PlayerTeam> PlayerTeams { get; set; }
        public DbSet<Team> Teams { get; set; }
        public DbSet<Gender> Genders { get; set; }
        public DbSet<TeamGroup> TeamGroups { get; set; }
        public DbSet<Result> Results { get; set; }
        public DbSet<Stage> Stages { get; set; }
    }
}
