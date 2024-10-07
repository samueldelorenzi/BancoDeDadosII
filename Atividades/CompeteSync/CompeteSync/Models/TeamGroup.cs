using System.ComponentModel.DataAnnotations.Schema;

namespace CompeteSync.Models
{
    public class TeamGroup
    {
        public int Id { get; set; }
        [ForeignKey("TeamId")]
        public int TeamId { get; set; }
        [ForeignKey("GroupId")]
        public int GroupId { get; set; }
        public DateTime EnterDate { get; set; }
        public DateTime EndDate { get; set; }
    }
}
