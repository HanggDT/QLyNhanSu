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
    public partial class fLuong : Form
    {
        QLNSCon db = new QLNSCon();
        public int mans=new int();
        public fLuong()
        {
            InitializeComponent();
        }

        private void bntLuu_Click(object sender, EventArgs e)
        {
            var l = db.LUONGs.Find(mans);
            l.LuongCoBan = decimal.Parse(txtL.Text.Trim());
            l.PhuCap = decimal.Parse(txtPC.Text);
            db.SaveChanges();
            this.Visible = false;
        }
    }
}
