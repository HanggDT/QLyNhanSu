
using QLNS;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace wfQLyNhanSu
{
    public partial class fHopDong : Form
    {
        QLNSCon db = new QLNSCon();
        public fHopDong()
        {
            InitializeComponent();
        }

        private void fHopDong_Load(object sender, EventArgs e)
        {
            HOP_DONG hd = db.HOP_DONG.Find(maHD);
            txtLoaiHD.Text = hd.LoaiHD;
            txtBD.Text = DateTime.Parse(hd.NgayBD.ToString()).ToString("dd/MM/yyyy");
            txtNgayKT.Text = DateTime.Parse(hd.NgayKT.ToString()).ToString("dd/MM/yyyy");
            txtNgayKy.Text = DateTime.Parse(hd.NgayKyHD.ToString()).ToString("dd/MM/yyyy");
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string loaiHD = txtLoaiHD.Text;
            DateTime ngaybd = DateTime.ParseExact(txtBD.Text.Trim(), "dd/MM/yyyy", null);
            DateTime ngayKT = DateTime.ParseExact(txtNgayKT.Text.Trim(), "dd/MM/yyyy", null);
            DateTime ngayKy = DateTime.ParseExact(txtNgayKy.Text.Trim(), "dd/MM/yyyy", null);
            HOP_DONG hd = db.HOP_DONG.Find(maHD);
            hd.LoaiHD = loaiHD;
            hd.NgayBD = ngaybd;
            hd.NgayKT = ngayKT;
            hd.NgayKyHD = ngayKy;
            db.SaveChanges();
            this.Visible = false;

        }
    }
}
