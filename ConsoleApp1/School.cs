namespace ConsoleApp1
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class School
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public School()
        {
            Students = new HashSet<Student>();
        }
        [Key]
        public Guid Id { get; set; }

        [Required(ErrorMessage = "req")]
        [ConcurrencyCheck,MaxLength(20, ErrorMessage = "max"),MinLength(10,ErrorMessage = "min")]
        [Column(Order = 1)]
        public string Name { get; set; }

        [NotMapped]
        public int Code { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Student> Students { get; set; }
    }
}
