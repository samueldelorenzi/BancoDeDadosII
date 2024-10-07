using Microsoft.EntityFrameworkCore;
using PeopleManagement.Models;
using static System.Runtime.InteropServices.JavaScript.JSType;

namespace PeopleManagement.Repository
{
    public class PersonRepository : IPersonRepository
    {
        private readonly MyDbContext _context;
        public PersonRepository(MyDbContext context)
        {
            _context = context;
        }

        public Person Delete(int? id)
        {
            var pessoa = Get(id);
            if (pessoa is null)
                return null!;

            _context.People.Remove(pessoa);
            _context.SaveChanges();

            return pessoa;
        }

        public Person? Get(int? id)
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

        public List<Person>? GetByPeriodBirthDate(DateTime startDate, DateTime endDate)
        {
            var pessoas = _context
            .People
                .Include(e => e.Addresses)
                .Where(p => p.BirthDate >= startDate && p.BirthDate <= endDate)
                .ToList();
            return pessoas;
        }

        public Person Insert(Person person)
        {
            _context.People.Add(person);
            _context.SaveChanges();

            return person;
        }

        public bool PersonExists(int? id)
        {
            var pessoa = _context.People.Any(p => p.Id == id);

            if (pessoa)
                return true;

            return false;
        }

        public Person Update(Person person)
        {
            _context.People.Update(person);
            _context.SaveChanges();

            return person;
        }
    }
}
