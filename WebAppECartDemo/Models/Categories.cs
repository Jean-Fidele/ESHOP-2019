namespace WebAppECartDemo.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Categories
    {
        [Key]
        public int CategoryId { get; set; }

        [Required]
        [StringLength(150)]
        public string CategoryCode { get; set; }

        [Required]
        [StringLength(150)]
        public string CategoryName { get; set; }
    }
}
