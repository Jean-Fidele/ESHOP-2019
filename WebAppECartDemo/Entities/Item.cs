using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.Spatial;

namespace WebAppECartDemo.Entities
{
    public class Item
    {
        [Key]
        public Guid ItemId { get; set; }

        public int CategoryId { get; set; }

        [Required]
        [StringLength(50)]
        public string ItemCode { get; set; }

        [Required]
        [StringLength(250)]
        public string ItemName { get; set; }

        [StringLength(250)]
        public string Description { get; set; }

        [Required]
        [StringLength(550)]
        public string ImagePath { get; set; }

        public decimal ItemPrice { get; set; }

        [StringLength(250)]
        public string ImageName { get; set; }
    }
}