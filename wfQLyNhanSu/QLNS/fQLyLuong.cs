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
    public partial class fQLyLuong : Form
    {
        QLNSCon db = new QLNSCon();
        public fQLyLuong()
        {
            InitializeComponent();
        }

        private void label12_Click(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void txtPhuCap_TextChanged(object sender, EventArgs e)
        {

        }

        private void txtLuongCB_TextChanged(object sender, EventArgs e)
        {

        }

        private void lbHoTen_Click(object sender, EventArgs e)
        {

        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void KhoanTru_TextChanged(object sender, EventArgs e)
        {

        }

        private void txtKhoanCongThem_TextChanged(object sender, EventArgs e)
        {

        }

        private void btnSua_Click(object sender, EventArgs e)
        {

        }

        private void btnXoa_Click(object sender, EventArgs e)
        {

        }

        private void monthCalendar1_DateChanged(object sender, DateRangeEventArgs e)
        {

        }

        private void label8_Click(object sender, EventArgs e)
        {

        }

        private void btnThemMoi_Click(object sender, EventArgs e)
        {
            byte thang = byte.Parse(cbT.SelectedItem.ToString());
            int nam = int.Parse(cbN.SelectedItem.ToString());
            int mans = int.Parse(txtMaNS.Text);
            byte sndl=byte.Parse(txtSNDL.Text);
            byte snn = byte.Parse(txtsnn.Text);
            byte snnp = byte.Parse(txtSNNP.Text);
            db.themBCC(mans, thang, nam, sndl, snnp, snn);

        }

        private void btnSua_Click_1(object sender, EventArgs e)
        {
            byte thang = byte.Parse(cbT.SelectedItem.ToString());
            int nam = int.Parse(cbN.SelectedItem.ToString());
            int mans = int.Parse(txtMaNS.Text);
            byte sndl = byte.Parse(txtSNDL.Text);
            byte snn = byte.Parse(txtsnn.Text);
            byte snnp = byte.Parse(txtSNNP.Text);
            db.suaBCC(mans, thang, nam, sndl, snnp, snn);
            loadData();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            loadData();
        }

        private void btnXoa_Click_1(object sender, EventArgs e)
        {
            int mans = int.Parse(dgvDSL.SelectedRows[0].Cells[0].Value.ToString());
            byte thang = byte.Parse(cbTT.SelectedItem.ToString());
            int nam = int.Parse(cbNT.SelectedItem.ToString());
            db.xoaBCC(mans, thang, nam);
            loadData();
        }
        void loadData()
        {
            if (cbNT.SelectedIndex == -1 || cbTT.SelectedIndex==-1)
            {

            }
            else
                 dgvDSL.DataSource = db.xemLuongThang(byte.Parse(cbTT.Text.ToString()), int.Parse(cbNT.Text.ToString()));
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Visible = false;
        }

        private void cbTT_SelectedValueChanged(object sender, EventArgs e)
        {
           
        }

        private void cbNT_SelectedIndexChanged(object sender, EventArgs e)
        {
            loadData();
        }

        private void fQLyLuong_Load(object sender, EventArgs e)
        {
            cbTT.SelectedIndex = 0;
            cbNT.SelectedIndex = 0;
        }

        private void cbTT_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cbNT.SelectedIndex == -1)
            {

            }
            else
                loadData();
        }

        private void cbNT_SelectedIndexChanged_1(object sender, EventArgs e)
        {
            if (cbTT.SelectedIndex == -1)
            {

            }
            else
                loadData();
        }
    }
}
