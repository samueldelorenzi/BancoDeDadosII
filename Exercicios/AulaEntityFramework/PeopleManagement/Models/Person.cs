namespace PeopleManagement.Models
{
    public class Person
    {
        public int Id { get; set; }
        public string? Name { get; set; }
        public int Age { get; set; }
        public string? Email { get; set; }
        public DateTime BirthDate { get; set; }
        public List<TeamPerson>? TeamPeople { get; set; }
        public List<Address>? Addresses { get; set; }
    }
}