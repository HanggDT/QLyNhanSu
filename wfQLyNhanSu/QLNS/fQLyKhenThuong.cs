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
    public partial class fQLyKhenThuong : Form
    {
        QLNSCon db = new QLNSCon();
        public fQLyKhenThuong()
        {
            InitializeComponent();
        }
        void load()
        {
            dgv.DataSource = db.xemDSKT().ToList();
        }
        private void fQLyKhenThuong_Load(object sender, EventArgs e)
        {
            load();
        }

        private void bntTim_Click(object sender, EventArgs e)
        {
            dgv.DataSource = db.xemDSKT().Where(x=>x.Mã_Khen_Thưởng==int.Parse(txtTim.Text.Trim())).ToList();
        }

        private void btnThemMoi_Click(object sender, EventArgs e)
        {
            string htkt = txtHinhThucKT.Text;
            decimal gt = decimal.Parse(txtGiaTri.Text);
            string nd = txtNoiDung.Text;
            DateTime ngay = DateTime.ParseExact(txtNgayKT.Text, "dd/MM/yyyy",null);
            db.taoKT(htkt, ngay, gt, nd);
            load();
        }

        private void txtNgayKT_TextChanged(object sender, EventArgs e)
        {

        }

        private void btnSua_Click(object sender, EventArgs e)
        {
            int makt = int.Parse(txtMaKT.Text);
            string htkt = txtHinhThucKT.Text;
            decimal gt = decimal.Parse(txtGiaTri.Text);
            string nd = txtNoiDung.Text;
            DateTime ngay = DateTime.ParseExact(txtNgayKT.Text, "dd/MM/yyyy", null);
            db.suaKT(makt, htkt, ngay, gt, nd);
            load();
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            db.xoaKT(int.Parse(dgv.SelectedRows[0].Cells[0].Value.ToString()));
            button1_Click(sender, e);
            load();
        }

        private void dgv_RowHeaderMouseDoubleClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            fNhanSuKhenThuong f = new fNhanSuKhenThuong();
            f.makt = int.Parse(dgv.SelectedRows[0].Cells[0].Value.ToString());
            f.ShowDialog();
        }

        private void dgv_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            
        }

        private void dgv_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            int row = e.RowIndex;
            txtMaKT.Text = dgv[0, row].Value.ToString();
            txtHinhThucKT.Text = dgv[1, row].Value.ToString();
            txtNgayKT.Text = (DateTime.Parse(dgv[2, row].Value.ToString())).ToString("dd/MM/yyyy");
            txtGiaTri.Text = dgv[3, row].Value.ToString();
            txtNoiDung.Text = dgv[4, row].Value.ToString();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            txtMaKT.Text = "";
            txtHinhThucKT.Text = "";
            txtNgayKT.Text = "";
            txtGiaTri.Text = "";
            txtNoiDung.Text = "";
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Visible = false;
        }
    }
}
