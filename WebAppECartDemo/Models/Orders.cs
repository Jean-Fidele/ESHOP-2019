namespace WebAppECartDemo.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Orders
    {
        [Key]
        public int OrderId { get; set; }

        public DateTime OrderDate { get; set; }

        [Required]
        [StringLength(50)]
        public string OrderNumber { get; set; }
    }
}
