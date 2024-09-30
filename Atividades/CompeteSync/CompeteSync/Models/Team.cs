using System.ComponentModel.DataAnnotations;

namespace CompeteSync.Models
{
    public class Team
    {
        public int Id { get; set; }

        [Required(ErrorMessage = "Required")]
        public required string Name { get; set; }

        [Required(ErrorMessage = "Required")]
        public required List<PlayerTeam> PlayerTeams { get; set; }
    }
}
