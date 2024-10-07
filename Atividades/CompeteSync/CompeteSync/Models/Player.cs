using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CompeteSync.Models
{
    public class Player
    {
        public int Id { get; set; }

        [Required(ErrorMessage = "Required")]
        public required string Name { get; set; }

        [Required(ErrorMessage = "Required")]
        [ForeignKey("GenderId")]
        public required int GenderId { get; set; }

        [Required(ErrorMessage = "Required")]
        public required DateOnly BirthDate { get; set; }
    }
}
