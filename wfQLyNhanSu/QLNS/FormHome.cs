using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using wfQLyNhanSu;

namespace QLNS
{
    public partial class FormHome : Form
    {
        public FormHome()
        {
            InitializeComponent();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            fQLyKhenThuong f = new fQLyKhenThuong();
            f.ShowDialog();
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void openFileDialog1_FileOk(object sender, CancelEventArgs e)
        {

        }

        private void btnQLTTNS_Click(object sender, EventArgs e)
        {
            fQLyThongTinNS f = new fQLyThongTinNS();
            f.ShowDialog();
        }

        private void btnQLPB_Click(object sender, EventArgs e)
        {
            fQLyPhongBan f = new fQLyPhongBan();
            f.ShowDialog();
        }

        private void btnQLL_Click(object sender, EventArgs e)
        {
            fQLyLuong f = new fQLyLuong();
            f.ShowDialog();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            fQLyDuAn f = new fQLyDuAn();
            f.ShowDialog();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            this.Visible = false;
        }
    }
}
