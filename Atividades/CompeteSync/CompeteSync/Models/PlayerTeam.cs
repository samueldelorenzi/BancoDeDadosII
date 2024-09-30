using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CompeteSync.Models
{
    public class PlayerTeam
    {
        [ForeignKey("Player")]
        public required int PlayerId { get; set; }

        [Required(ErrorMessage = "Required")]
        public required Player Player { get; set; }

        [ForeignKey("Team")]
        public required int TeamId { get; set; }

        [Required(ErrorMessage = "Required")]
        public required Team Team { get; set; }

        [Required(ErrorMessage = "Required")]
        public DateTime JoinDate { get; set; }

        public DateTime? LeaveDate { get; set; }

        [Required(ErrorMessage = "Required")]
        public bool IsCurrentMember { get; set; }
    }
}
