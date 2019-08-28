namespace ConsoleApp1
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Student
    {
        public Guid Id { get; set; }

        [Required]
        public string Name { get; set; }

        public Guid SchoolId { get; set; }

        public virtual School School { get; set; }
    }
}
