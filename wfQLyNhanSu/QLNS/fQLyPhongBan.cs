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
    public partial class fQLyPhongBan : Form
    {
        QLNSCon db = new QLNSCon();
        public fQLyPhongBan()
        {
            InitializeComponent();
        }
        void loadData()
        {
            dgvPB.DataSource = db.xemDSPB().ToList();
        }
        private void fQLyPhongBan_Load(object sender, EventArgs e)
        {
            loadData();
        }

        private void dgvPB_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            int row = e.RowIndex;
            if (e.RowIndex != -1)
            {
                txtMaPhongBan.Text = dgvPB[0, row].Value.ToString();
                txtTenPB.Text = dgvPB[1, row].Value.ToString();
                txtDiaChi.Text = dgvPB[2, row].Value.ToString();
                txtEmail.Text = dgvPB[3, row].Value.ToString();
                txtSDT.Text = dgvPB[4, row].Value.ToString();
                txtMaTP.Text = dgvPB[5, row].Value.ToString();
            }
            
        }

        private void bntTim_Click(object sender, EventArgs e)
        {
            int ma = int.Parse(txtTim.Text.Trim());
            xemDSPB_Result pb = db.xemDSPB().Where(x => x.Mã_Phòng == ma).FirstOrDefault();
            txtMaPhongBan.Text = pb.Mã_Phòng.ToString();
            txtTenPB.Text = pb.Tên_Phòng_Ban.ToString();
            txtDiaChi.Text =pb.Địa_Chỉ.ToString();
            txtEmail.Text = pb.Email.ToString();
            txtSDT.Text = pb.Số_ĐT.ToString();
            txtMaTP.Text =pb.Mã_Trưởng_phòng.ToString();
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            string ten = txtTenPB.Text.Trim();
            string email = txtEmail.Text.Trim();
            string diachi = txtDiaChi.Text.Trim();
            string sdt = txtSDT.Text.Trim();
            int matp = int.Parse(txtMaTP.Text.Trim());
            db.themPB(ten, diachi, email, sdt, matp);
            loadData();
        }

        private void btnSua_Click(object sender, EventArgs e)
        {
            int mapb = int.Parse(txtMaPhongBan.Text);
            string ten = txtTenPB.Text.Trim();
            string email = txtEmail.Text.Trim();
            string diachi = txtDiaChi.Text.Trim();
            string sdt = txtSDT.Text.Trim();
            int matp = int.Parse(txtMaTP.Text.Trim());
            db.suaPB(mapb, ten, diachi, email, sdt, matp);
            loadData();
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            int mapb = int.Parse(txtMaPhongBan.Text);
            db.xoaPB(mapb);
            loadData();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Visible = false;
        }
    }
}
