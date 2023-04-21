//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DoAnCuoiKi_NET.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Invoice
    {
        public int id_invoice { get; set; }
        public Nullable<int> id_account { get; set; }
        public Nullable<int> id_product { get; set; }
        public Nullable<int> id_discount { get; set; }
        public Nullable<int> amount { get; set; }
        public Nullable<double> total { get; set; }
        public Nullable<double> discount { get; set; }
        public Nullable<System.DateTime> sale_date { get; set; }
        public string firstname { get; set; }
        public string lastname { get; set; }
        public string location { get; set; }
        public string phone { get; set; }
        public string email { get; set; }
        public string note { get; set; }
        public string link { get; set; }
        public string meta { get; set; }
        public Nullable<bool> hide { get; set; }
        public Nullable<int> order { get; set; }
        public Nullable<System.DateTime> datebegin { get; set; }
        public Nullable<int> id_cart { get; set; }
    
        public virtual Account Account { get; set; }
        public virtual Cart Cart { get; set; }
        public virtual Discount Discount1 { get; set; }
        public virtual Product Product { get; set; }
    }
}