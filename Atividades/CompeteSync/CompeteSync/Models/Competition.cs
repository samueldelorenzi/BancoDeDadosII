using System.ComponentModel.DataAnnotations;

namespace CompeteSync.Models
{
    public class Competition
    {
        // campos basicos
        public int Id { get; set; }

        [Required(ErrorMessage = "Required")]
        public required string Name { get; set; }

        // campos de enum
        [Required(ErrorMessage = "Required")]
        public required CompetitionType Type { get; set; }

        [Required(ErrorMessage = "Required")]
        public required CompetitionMode Mode { get; set; }

        // campos de data
        [Required(ErrorMessage = "Required")]
        public required DateTime StartDate { get; set; }

        [Required(ErrorMessage = "Required")]
        public required DateTime EndDate { get; set; }
    }

    public enum CompetitionType
    {
        Solo = 1,
        Team
    }

    public enum CompetitionMode
    {
        Qualifier = 1,
        Pointed
    }
}
