using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;


namespace WebAppECartDemo.Entities
{
    public class ECartContext : DbContext
    {
        public ECartContext()
            : base("name=ECartDemo")
        {
        }

        public virtual DbSet<Categories> Categories { get; set; }
        public virtual DbSet<Item> Item { get; set; }
        public virtual DbSet<OrderDetail> OrderDetails { get; set; }
        public virtual DbSet<Order> Orders { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Categories>()
                .Property(e => e.CategoryCode)
                .IsUnicode(false);

            modelBuilder.Entity<Categories>()
                .Property(e => e.CategoryName)
                .IsUnicode(false);

            modelBuilder.Entity<Item>()
                .Property(e => e.ItemCode)
                .IsUnicode(false);

            modelBuilder.Entity<OrderDetail>()
                .Property(e => e.ItemId)
                .IsUnicode(false);

            modelBuilder.Entity<Order>()
                .Property(e => e.OrderNumber)
                .IsUnicode(false);

        }
    }
}