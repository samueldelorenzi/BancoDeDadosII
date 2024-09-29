using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace PeopleManagement.Models
{
    public class TeamPerson
    {
        [Key]
        public int Id { get; set; }

        [ForeignKey("TeamId")]
        public int TeamId { get; set; }

        public Team? Team { get; set; }

        [ForeignKey("PersonId")]
        public int PersonId { get; set; }

        public Person? Person { get; set; }
        public DateTime DataEntrada { get; set; }
        public DateTime DataSaída { get; set; }
    }
}
