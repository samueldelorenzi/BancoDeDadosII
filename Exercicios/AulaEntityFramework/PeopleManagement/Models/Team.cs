namespace PeopleManagement.Models
{
    public class Team
    {
        public int Id { get; set; }
        public string? Name { get; set; }
        public List<TeamPerson>? TeamPeople { get; set; }
    }
}
