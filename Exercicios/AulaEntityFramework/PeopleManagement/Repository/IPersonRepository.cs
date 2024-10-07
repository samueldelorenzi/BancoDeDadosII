using PeopleManagement.Models;

namespace PeopleManagement.Repository
{
    public interface IPersonRepository
    {
        public List<Person> GetAll();
        public Person? Get(int? id);
        public List<Person>? GetByName(string name);
        public List<Person>? GetByBirthDate(DateTime date);
        public List<Person>? GetByPeriodBirthDate(DateTime startDate, DateTime endDate);
        public List<Person>? GetByBirthYear(int year);
        public List<Person>? GetByBirthMonth(int month);
        public Person Insert (Person person);
        public Person Update (Person person);
        public Person Delete (int? id);
        public bool PersonExists (int? id);
    }
}
