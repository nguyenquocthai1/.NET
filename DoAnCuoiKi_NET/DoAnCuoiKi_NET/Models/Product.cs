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
    
    public partial class Product
    {
        public int id_product { get; set; }
        public Nullable<int> id_cate { get; set; }
        public Nullable<int> id_pcate { get; set; }
        public string name_product { get; set; }
        public Nullable<double> price { get; set; }
        public string color { get; set; }
        public string size { get; set; }
        public Nullable<int> amount { get; set; }
        public Nullable<int> sale_amount { get; set; }
        public Nullable<double> discount { get; set; }
        public string status { get; set; }
        public string img { get; set; }
        public string img1 { get; set; }
        public string img2 { get; set; }
        public string img3 { get; set; }
        public string img4 { get; set; }
        public string img5 { get; set; }
        public string detail { get; set; }
        public string description { get; set; }
        public string link { get; set; }
        public string meta { get; set; }
        public Nullable<bool> hide { get; set; }
        public Nullable<int> order { get; set; }
        public Nullable<System.DateTime> datebegin { get; set; }
    
        public virtual Category Category { get; set; }
        public virtual ProductCategory ProductCategory { get; set; }
    }
}
