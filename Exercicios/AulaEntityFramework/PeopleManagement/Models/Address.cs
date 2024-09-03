using System.ComponentModel.DataAnnotations.Schema;

namespace PeopleManagement.Models
{
    public enum UF
    {
        AC, AL, AP, AM, BA, CE, DF, ES, GO, MA, MT, MS, MG, PA, PB, PR, PE, PI, RJ, RN, RS, RO, RR, SC, SP, SE, TO
    }
    public class Address
    {
        public int Id { get; set; }
        public string? Street { get; set; }
        public string? Number { get; set; }
        public string? District { get; set; }
        public string? City { get; set; }
        public UF State { get; set; }
        public string? Country { get; set; } = "Brasil";
        public string? PostalCode { get; set; }

        public int PersonId { get; set; }

        [ForeignKey("PersonId")]
        public Person? Person { get; set; }
    }
}
