using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QLNS
{
    public partial class fNhanSuDuAn : Form
    {
        QLNSCon db = new QLNSCon();
        public int mada = new int();
        public int maql;
         public int sotv;
        public fNhanSuDuAn()
        {
            InitializeComponent();
        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void fNhanSuDuAn_Load(object sender, EventArgs e)
        {
            lblmada.Text = mada.ToString();
            lblsotv.Text = sotv.ToString();
            lblten.Text = db.DU_AN.Find(mada).TenDA;
            lblmaql.Text = db.NHAN_SU.Find(maql).Ten;
            dgv.DataSource = db.xemDSNSDA(mada);
        }

        private void button1_Click(object sender, EventArgs e)
        {
            db.themNSDA(mada, int.Parse(txtmans.Text.Trim()));
            sotv += 1;
            lblsotv.Text = sotv.ToString();
            dgv.DataSource = db.xemDSNSDA(mada);
        }

        private void bntXoa_Click(object sender, EventArgs e)
        {
            db.xoaNSDA(mada, int.Parse(dgv.SelectedRows[0].Cells[0].Value.ToString()));
            sotv += 1;
            lblsotv.Text = sotv.ToString();
            dgv.DataSource = db.xemDSNSDA(mada);
        }
    }
}
