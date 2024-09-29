using Microsoft.EntityFrameworkCore;

namespace CompeteSync.Models
{
    public class MyDbContext : DbContext
    {
        public MyDbContext(DbContextOptions<MyDbContext> options) : base(options) { }
    }
}
