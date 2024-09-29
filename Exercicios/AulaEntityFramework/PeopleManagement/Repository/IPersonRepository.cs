using PeopleManagement.Models;

namespace PeopleManagement.Repository
{
    public interface IPersonRepository
    {
        public List<Person> GetAll();
        public Person? Get(int id);
        public List<Person>? GetByName(string name);
        public List<Person>? GetByBirthDate(DateTime date);
        public List<Person>? GetByBirthYear(int year);
        public List<Person>? GetByBirthMonth(int month);
    }
}
