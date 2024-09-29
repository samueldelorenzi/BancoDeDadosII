using Microsoft.EntityFrameworkCore;

namespace PeopleManagement.Models
{
    public class MyDbContext : DbContext
    {
        public MyDbContext(DbContextOptions<MyDbContext> options) : base(options) { }

        public DbSet<Person> People { get; set; }
        public DbSet<Address> Addresses { get; set; }
        public DbSet<Team> Teams { get; set; }
        public DbSet<TeamPerson> TeamPeople { get; set; }
    }
}
