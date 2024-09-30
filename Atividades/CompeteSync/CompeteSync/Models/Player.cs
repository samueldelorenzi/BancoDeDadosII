using System.ComponentModel.DataAnnotations;

namespace CompeteSync.Models
{
    public class Player
    {
        public int Id { get; set; }

        [Required(ErrorMessage = "Required")]
        public required string Name { get; set; }

        [Required(ErrorMessage = "Required")]
        public required Gender Gender { get; set; }

        [Required(ErrorMessage = "Required")]
        public required DateOnly BirthDate { get; set; }
    }

    public enum Gender
    {
        Male,
        Female,
        Other
    }
}
