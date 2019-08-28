namespace ConsoleApp1
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class MyAppModel : DbContext
    {
        public MyAppModel()
            : base("name=MyAppModel2")
        {
        }

        public virtual DbSet<Class> Classes { get; set; }
        public virtual DbSet<School> Schools { get; set; }
        public virtual DbSet<Student> Students { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<School>()
                .HasMany(e => e.Students)
                .WithRequired(e => e.School)
                .WillCascadeOnDelete(false);
        }
    }
}
