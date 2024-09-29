using Microsoft.EntityFrameworkCore;
using PeopleManagement.Models;

namespace PeopleManagement.Repository
{
    public class PersonRepository : IPersonRepository
    {
        private readonly MyDbContext _context;
        public PersonRepository(MyDbContext context)
        {
            _context = context;
        }

        public Person? Get(int id)
        {
            var pessoa = _context
                .People
                .Include(e => e.Addresses)
                .Where(p => p.Id == id)
                .FirstOrDefault();

            return pessoa;
        }

        public List<Person> GetAll()
        {
            return _context
                .People
                .Include(e => e.Addresses)
                .ToList();
        }

        public List<Person> GetByBirthDate(DateTime date)
        {
            var pessoas = _context
                .People
                .Include(e => e.Addresses)
                .Where(p => p.BirthDate == date)
                .ToList();
            return pessoas;
        }

        public List<Person> GetByBirthMonth(int month)
        {
            var pessoas = _context
                .People
                .Include(e => e.Addresses)
                .Where(p => p.BirthDate.Month == month)
                .ToList();
            return pessoas;
        }

        public List<Person> GetByBirthYear(int year)
        {
            var pessoas = _context
                .People
                .Include(e => e.Addresses)
                .Where(p => p.BirthDate.Year == year)
                .ToList();
            return pessoas;
        }

        public List<Person>? GetByName(string name)
        {
            var pessoas = _context
                .People
                .Include(e => e.Addresses)
                .Where(p => p.Name == name)
                .ToList();
            return pessoas;
        }
    }
}
