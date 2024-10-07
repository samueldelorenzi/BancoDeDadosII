using System.ComponentModel.DataAnnotations.Schema;

namespace CompeteSync.Models
{
    public class Result
    {
        public int Id { get; set; }
        [ForeignKey("WinnerId")]
        public int WinnerId { get; set; }
        public int WinnerPoints { get; set; }
        [ForeignKey("LoserId")]
        public int LoserId { get; set; }
        public int LoserPoints { get; set; }
    }
}
