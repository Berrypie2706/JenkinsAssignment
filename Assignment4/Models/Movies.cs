using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Assignment4.Models
{
    [Table("Movies")]
    public class Movies
    {
        [Key]
        public int MovieId { get; set; }
        public string MovieName { get; set; }
        public string MovieDescription { get; set; }
        public string MovieGenre { get; set; }
        public DateTime MovieReleaseDate { get; set; }
    }
}
