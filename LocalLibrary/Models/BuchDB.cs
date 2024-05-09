using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
namespace LocalLibrary.Model
{
    public class BuchDB
    {
        [Key]
        [Column("buchID")]
        public int buchID { get; set; }

        [Column("buchName")]
        public string? buchName { get; set; }

        [Column("buchType")]
        public string? buchType { get; set; }

        [Column("buchAutor")]
        public string? buchAutor { get; set; }

        public int libraryID { get; set; }

        [ForeignKey("libraryID")]
        public LibraryDB? LibraryID { get; set; }
    }
}
