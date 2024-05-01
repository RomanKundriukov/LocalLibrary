using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace LocalLibrary.Model
{
    public class LibraryDB
    {
        [Key]
        [Column("libraryID")]
        public int libraryID { get; set; }

        [Column("libraryName")]
        [Required]
        public string libraryName { get; set; }

        [Column("libraryPath")]
        public string libraryPath { get; set; }

        public List<BuchDB> BuchDBs { get; set; }
    }
}
