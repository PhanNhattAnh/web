using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace WebApplication5.Models
{
    [Table("nhacungcaps")]
    public class NhaCungCap
    {
        [Key]
        public int ma_nha_cung_cap { get; set; }
        public string ten_nha_cung_cap { get; set; }
        public string dia_chi { get; set; }
    }
}