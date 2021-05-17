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
    

    public partial class fNhanSuKhenThuong : Form
    {
        QLNSCon db = new QLNSCon();
        public int makt;

        public fNhanSuKhenThuong()
        {
            InitializeComponent();
        }
        void load()
        {
            dgv.DataSource = db.xemNSKT(makt).ToList();
        }
        private void fNhanSuKhenThuong_Load(object sender, EventArgs e)
        {
            load();
        }

        private void bntThem_Click(object sender, EventArgs e)
        {
            db.themNSKT(makt, int.Parse(txtmans.Text.Trim()));
            load();
        }

        private void bntXoa_Click(object sender, EventArgs e)
        {
            db.xoaNSKT(makt,int.Parse(dgv.SelectedRows[0].Cells[0].Value.ToString()));
            load();
        }
    }
}
