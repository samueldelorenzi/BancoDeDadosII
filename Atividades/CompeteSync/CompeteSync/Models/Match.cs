using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CompeteSync.Models
{
    public class Match
    {
        public int Id { get; set; }

        [Required(ErrorMessage = "Required")]
        public required DateTime Date { get; set; }
        [ForeignKey("Opponent1Id")]
        public required int Opponent1Id { get; set; }
        [ForeignKey("Opponent2Id")]
        public required int Opponent2Id { get; set; }
        public required int StageId { get; set; }
        [ForeignKey("ResultId")]
        public required int ResultId { get; set; }
    }
}
