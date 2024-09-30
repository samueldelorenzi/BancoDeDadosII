using System.ComponentModel.DataAnnotations;

namespace CompeteSync.Models
{
    public class Match
    {
        public int Id { get; set; }

        [Required(ErrorMessage = "Required")]
        public required DateTime Date { get; set; }

        [Required(ErrorMessage = "Required")]
        public required List<Team> Teams { get; set; }

        [Required(ErrorMessage = "Required")]
        public required Team Winner { get; set; }

        public int? Points { get; set; }

        public Stage? Stage { get; set; }
    }
    public enum Stage
    {
        Groups,
        EighthFinals,
        Quarterfinals,
        Semifinals,
        Final
    }
}
