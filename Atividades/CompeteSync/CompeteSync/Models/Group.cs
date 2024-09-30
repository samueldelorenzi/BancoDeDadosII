using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CompeteSync.Models
{
    public class Group
    {
        public int Id { get; set; }

        [Required(ErrorMessage = "Required")]
        public required string Name { get; set; }

        [Required(ErrorMessage = "Required")]
        [ForeignKey("Competition")]
        public required int CompetitionId { get; set; }

        [Required(ErrorMessage = "Required")]
        public required Competition Competition { get; set; }
    }
}
