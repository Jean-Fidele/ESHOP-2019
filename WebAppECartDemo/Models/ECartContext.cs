using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace WebAppECartDemo.Models
{
    public partial class ECartContext : DbContext
    {
        public ECartContext()
            : base("name=ECartDemo")
        {
        }

        public virtual DbSet<Categories> Categories { get; set; }
        public virtual DbSet<Items> Items { get; set; }
        public virtual DbSet<OrderDetails> OrderDetails { get; set; }
        public virtual DbSet<Orders> Orders { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Categories>()
                .Property(e => e.CategoryCode)
                .IsUnicode(false);

            modelBuilder.Entity<Categories>()
                .Property(e => e.CategoryName)
                .IsUnicode(false);

            modelBuilder.Entity<Items>()
                .Property(e => e.ItemCode)
                .IsUnicode(false);

            modelBuilder.Entity<OrderDetails>()
                .Property(e => e.ItemId)
                .IsUnicode(false);

            modelBuilder.Entity<Orders>()
                .Property(e => e.OrderNumber)
                .IsUnicode(false);

        }
    }
}
