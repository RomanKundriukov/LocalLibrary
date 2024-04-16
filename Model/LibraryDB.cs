using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace LocalLibrary.Model
{
    public class LibraryDB
    {
        [Key]
        [Column("id")]
        public int Id { get; set; }

        [Column("libraryName")]
        public string LibraryName { get; set; }

        [Column("LibraryPath")]
        public string LibraryPath { get; set; }
    }
}
