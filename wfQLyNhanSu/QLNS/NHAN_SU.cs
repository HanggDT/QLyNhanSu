//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace QLNS
{
    using System;
    using System.Collections.Generic;
    
    public partial class NHAN_SU
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public NHAN_SU()
        {
            this.BANG_CHAM_CONG = new HashSet<BANG_CHAM_CONG>();
            this.DU_AN = new HashSet<DU_AN>();
            this.HOP_DONG1 = new HashSet<HOP_DONG>();
            this.PHONG_BAN1 = new HashSet<PHONG_BAN>();
            this.DU_AN1 = new HashSet<DU_AN>();
            this.KHEN_THUONG = new HashSet<KHEN_THUONG>();
        }
    
        public int MaNS { get; set; }
        public string Ten { get; set; }
        public Nullable<System.DateTime> NgaySinh { get; set; }
        public Nullable<bool> GioiTinh { get; set; }
        public string QueQuan { get; set; }
        public string SDT { get; set; }
        public string TrinhDo { get; set; }
        public string DanToc { get; set; }
        public string ChuyenNganh { get; set; }
        public string QuocTich { get; set; }
        public byte[] Avt { get; set; }
        public string DiaChi { get; set; }
        public Nullable<int> MaPB { get; set; }
        public Nullable<int> MaHD { get; set; }
        public Nullable<int> MaCV { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BANG_CHAM_CONG> BANG_CHAM_CONG { get; set; }
        public virtual CHUC_VU CHUC_VU { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DU_AN> DU_AN { get; set; }
        public virtual HOP_DONG HOP_DONG { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<HOP_DONG> HOP_DONG1 { get; set; }
        public virtual LUONG LUONG { get; set; }
        public virtual PHONG_BAN PHONG_BAN { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PHONG_BAN> PHONG_BAN1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DU_AN> DU_AN1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<KHEN_THUONG> KHEN_THUONG { get; set; }
    }
}
