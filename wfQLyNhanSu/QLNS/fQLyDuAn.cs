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
    public partial class fQLyDuAn : Form
    {
        QLNSCon db =new QLNSCon();
        public fQLyDuAn()
        {
            InitializeComponent();
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }
        void loadData()
        {
            dgvDS.DataSource = db.xemDSDA().ToList();
        }
        private void fQLyDuAn_Load(object sender, EventArgs e)
        {
            loadData();
            var listmns = from ns in db.NHAN_SU
                          select ns.MaNS;
            cbMQL.DataSource = listmns.ToList();
        }

        private void btnThemMoi_Click(object sender, EventArgs e)
        {
            string ten = txtTenDA.Text.Trim();
            DateTime bd = DateTime.ParseExact(txtTGBD.Text, "dd/MM/yyyy", null);
            DateTime htdk = DateTime.ParseExact(txtTGHTDK.Text, "dd/MM/yyyy", null);
            int maql = int.Parse(cbMQL.Text);
            db.themDA(ten, bd, htdk, maql);
            loadData();
        }

        private void btnSua_Click(object sender, EventArgs e)
        {
            int mada = int.Parse(txtMaDA.Text);
            string ten = txtTenDA.Text.Trim();
            DateTime bd = DateTime.ParseExact(txtTGBD.Text, "dd/MM/yyyy", null);
            DateTime htdk = DateTime.ParseExact(txtTGHTDK.Text, "dd/MM/yyyy", null);
            int maql = int.Parse(cbMQL.Text);
            db.suaDA(mada, ten, bd, htdk, maql);
            loadData();
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            db.xoaDA(int.Parse(dgvDS.SelectedRows[0].Cells[0].Value.ToString()));
            loadData();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            dgvDS.DataSource = db.xemDSDA().Where(x => x.Mã_dự_án == int.Parse(txtTim.Text.Trim()));
        }

        private void dgvDS_RowHeaderMouseDoubleClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            fNhanSuDuAn f = new fNhanSuDuAn();
            DataGridViewRow r = dgvDS.SelectedRows[0];
            f.mada = int.Parse(r.Cells[0].Value.ToString());
            f.maql = int.Parse(r.Cells[3].Value.ToString());
            f.sotv = int.Parse(r.Cells[2].Value.ToString());
            f.ShowDialog();
        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            this.Visible = false;
        }

        private void dgvDS_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            int row = e.RowIndex;
            txtMaDA.Text = dgvDS[0, row].Value.ToString();
            txtTenDA.Text = dgvDS[1, row].Value.ToString();
            txtTGBD.Text = DateTime.Parse(dgvDS[4, row].Value.ToString()).ToString("dd/MM/yyyy");
            txtTGHTDK.Text = DateTime.Parse(dgvDS[5, row].Value.ToString()).ToString("dd/MM/yyyy");
            cbMQL.SelectedItem = dgvDS[3, row].Value;
        }
    }
}
