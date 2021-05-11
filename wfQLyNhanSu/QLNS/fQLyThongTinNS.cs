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
    public partial class fQLyThongTinNS : Form
    {
        QLNSCon db;
        public fQLyThongTinNS()
        {
            db = new QLNSCon();
            InitializeComponent();
        }

        private void pbAvt_Click(object sender, EventArgs e)
        {

        }

        private void label10_Click(object sender, EventArgs e)
        {

        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {

        }
        void load()
        {
            var ds = db.xemDSTTNS();
            /* var dt = from t in ds
                      select new {
                          Mã_NS = t.Mã_Nhân_Sự,
                          Họ_Tên = t.Họ_Tên,Ngày_Sinh=t.Ngày_Sinh,Giới_Tính=t.Giới_Tính,SĐT=t.SĐT,Quê_Quán=t.Quê_Quán,
                          Nơi_ở=t.Nơi_Ở_HT,Dân_Tộc=t.Dân_Tộc,Quốc_Tích=t.Quốc_Tịch,Trình_Độ=t.Trình_Độ,Chuyên_Ngành=t.Chuyên_Ngành,
                          Phòng_Ban=t.Phòng_Ban,Mã_HĐ=t.Mã_Hợp_Đồng,Chức_Vụ=t.Chức_Vụ,Tùy_Chọn = "Delete"};
            */
            dgvDSNS.DataSource = ds.ToList();
            var itemPB = from c in db.PHONG_BAN
                         select c.TenPB;
            cbPB.DataSource = itemPB.ToList();
            var itemCV = from c in db.CHUC_VU
                         select c.TenCV;
            cbChucVu.DataSource = itemCV.ToList();
            int countR = dgvDSNS.Rows.Count;
            for (int i = 0; i < countR; i++)
            {
                DataGridViewLinkCell temp = new DataGridViewLinkCell();
                dgvDSNS[14, i] = temp;
            }
        }
        private void fQLyThongTinNS_Load(object sender, EventArgs e)
        {
            load();

        }

        private void dgvDSNS_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            int row = e.RowIndex;
            txtMaNS.Text = dgvDSNS[0, row].Value.ToString();
            txtTenNS.Text = dgvDSNS[1, row].Value.ToString();
            txtNgaySinh.Text = (DateTime.Parse(dgvDSNS[2, row].Value.ToString())).ToString("dd/MM/yyyy");
            cbGioiTinh.SelectedItem = dgvDSNS[3, row].Value.ToString().Trim();
            txtSDT.Text = dgvDSNS[4, row].Value.ToString();
            txtQueQuan.Text = dgvDSNS[5, row].Value.ToString();
            txtDiaChi.Text = dgvDSNS[6, row].Value.ToString();
            txtDanToc.Text = dgvDSNS[7, row].Value.ToString();
            txtQuocGia.Text = dgvDSNS[8, row].Value.ToString();
            txtTrinhDo.Text = dgvDSNS[9, row].Value.ToString();
            txtChuyenNganh.Text = dgvDSNS[10, row].Value.ToString();
            cbPB.SelectedItem= dgvDSNS[11, row].Value.ToString();
            txtMaHD.ReadOnly = false;
            txtMaHD.Text = dgvDSNS[12, row].Value.ToString();
            txtMaHD.ReadOnly = true;
            cbChucVu.SelectedItem = dgvDSNS[13, row].Value.ToString();
     
        }

        private void dgvDSNS_CellClick_1(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void dgvDSNS_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            int row = e.RowIndex;
            if (e.ColumnIndex == 14)
            {
                
                int mans = int.Parse(dgvDSNS[0, row].Value.ToString());
                db.xoaNS(mans);
                button2_Click(sender, e);
                load();
            }
        }


        private void dgvDSNS_CancelRowEdit(object sender, QuestionEventArgs e)
        {
           
        }

        private void btnSua_Click(object sender, EventArgs e)
        {
            int mans = int.Parse(txtMaNS.Text.Trim());
            string hoten = txtTenNS.Text.Trim();
            DateTime ngaysinh = DateTime.ParseExact(txtNgaySinh.Text.Trim(), "dd/MM/yyyy",null);
            bool gioitinh=cbGioiTinh.SelectedItem=="Nam"?true:false;
            string sdt = txtSDT.Text.Trim();
            string quequan = txtQueQuan.Text.Trim();
            string diachi = txtDiaChi.Text.Trim();
            string dantoc = txtDanToc.Text.Trim();
            string quocgia=txtQuocGia.Text.Trim();
            string trinhdo = txtTrinhDo.Text.Trim();
            string chuyennganh = txtChuyenNganh.Text.Trim();
            string phongban = cbPB.SelectedItem.ToString().Trim();
            string chucvu = cbChucVu.SelectedItem.ToString().Trim();
            var pb = (from c in db.PHONG_BAN
                      where c.TenPB == phongban
                      select c.MaPB).FirstOrDefault();
            var cv = (from c in db.CHUC_VU
                      where c.TenCV == chucvu
                      select c.MaCV).FirstOrDefault();
            db.suaTTNS(mans, hoten, ngaysinh, gioitinh, quequan, sdt, trinhdo, dantoc, chuyennganh,
                quocgia, diachi, pb, cv);
            load();
        }

        private void label14_Click(object sender, EventArgs e)
        {
            fHopDong f = new fHopDong();
            f.maHD =int.Parse( txtMaHD.Text.Trim());
            f.ShowDialog();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            txtChuyenNganh.Text = "";
            txtMaNS.Text = "";
            txtTenNS.Text = "";
            txtDiaChi.Text = "";
            txtNgaySinh.Text = "";
            txtDiaChi.Text = "";
            txtQueQuan.Text = "";
            txtQuocGia.Text = "";
            txtChuyenNganh.Text = "";
            txtMaHD.Text = "";
            txtSDT.Text = "";
            cbGioiTinh.Text = "";
            cbChucVu.Text = "Chọn chức vụ";
            cbPB.Text = "Chọn phòng ban";
            txtDanToc.Text = "";
            txtTrinhDo.Text = "";
        }

        private void bntTim_Click(object sender, EventArgs e)
        {
            xemDSTTNS_Result ns = db.xemDSTTNS().Where(x => x.Mã_Nhân_Sự == int.Parse(txtTim.Text.Trim())).FirstOrDefault();
            txtMaNS.Text = ns.Mã_Nhân_Sự.ToString();
            txtTenNS.Text = ns.Họ_Tên.ToString();
            txtNgaySinh.Text = (DateTime.Parse(ns.Ngày_Sinh.ToString())).ToString("dd/MM/yyyy");
            cbGioiTinh.SelectedItem = ns.Giới_Tính;
            txtSDT.Text = ns.SĐT.ToString();
            txtQueQuan.Text = ns.Quê_Quán.ToString();
            txtDiaChi.Text = ns.Nơi_Ở_HT.ToString();
            txtDanToc.Text = ns.Dân_Tộc.ToString();
            txtQuocGia.Text = ns.Quốc_Tịch.ToString();
            txtTrinhDo.Text = ns.Trình_Độ.ToString();
            txtChuyenNganh.Text = ns.Chuyên_Ngành.ToString();
            cbPB.SelectedItem = ns.Phòng_Ban.ToString();
            txtMaHD.Text = ns.Mã_Hợp_Đồng.ToString();
            cbChucVu.SelectedItem = ns.Chức_Vụ.ToString();
        }

        private void btnThemMoi_Click(object sender, EventArgs e)
        {
           
            string hoten = txtTenNS.Text.Trim();
            DateTime ngaysinh = DateTime.ParseExact(txtNgaySinh.Text.Trim(), "dd/MM/yyyy", null);
            bool gioitinh = cbGioiTinh.SelectedItem == "Nam" ? true : false;
            string sdt = txtSDT.Text.Trim();
            string quequan = txtQueQuan.Text.Trim();
            string diachi = txtDiaChi.Text.Trim();
            string dantoc = txtDanToc.Text.Trim();
            string quocgia = txtQuocGia.Text.Trim();
            string trinhdo = txtTrinhDo.Text.Trim();
            string chuyennganh = txtChuyenNganh.Text.Trim();
            string phongban = cbPB.SelectedItem.ToString().Trim();
            string chucvu = cbChucVu.SelectedItem.ToString().Trim();
            var pb = (from c in db.PHONG_BAN
                      where c.TenPB == phongban
                      select c.MaPB).FirstOrDefault();
            var cv = (from c in db.CHUC_VU
                      where c.TenCV == chucvu
                      select c.MaCV).FirstOrDefault();
            db.themNV( hoten, ngaysinh, gioitinh, quequan, sdt, trinhdo, dantoc, chuyennganh,
                quocgia, diachi, pb, cv);
            load();
        }

        private void bntSuaLuong_Click(object sender, EventArgs e)
        {
            fLuong f = new fLuong();
            f.mans = int.Parse(txtMaNS.Text);
            f.ShowDialog();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Visible = false;
        }

        private void bntSua_Click(object sender, EventArgs e)
        {
            int mans = int.Parse(txtMaNS.Text.Trim());
            string hoten = txtTenNS.Text.Trim();
            DateTime ngaysinh = DateTime.ParseExact(txtNgaySinh.Text.Trim(), "dd/MM/yyyy", null);
            bool gioitinh = cbGioiTinh.SelectedItem == "Nam" ? true : false;
            string sdt = txtSDT.Text.Trim();
            string quequan = txtQueQuan.Text.Trim();
            string diachi = txtDiaChi.Text.Trim();
            string dantoc = txtDanToc.Text.Trim();
            string quocgia = txtQuocGia.Text.Trim();
            string trinhdo = txtTrinhDo.Text.Trim();
            string chuyennganh = txtChuyenNganh.Text.Trim();
            string phongban = cbPB.SelectedItem.ToString().Trim();
            string chucvu = cbChucVu.SelectedItem.ToString().Trim();
            var pb = (from c in db.PHONG_BAN
                      where c.TenPB == phongban
                      select c.MaPB).FirstOrDefault();
            var cv = (from c in db.CHUC_VU
                      where c.TenCV == chucvu
                      select c.MaCV).FirstOrDefault();
            db.suaTTNS(mans, hoten, ngaysinh, gioitinh, quequan, sdt, trinhdo, dantoc, chuyennganh,
                quocgia, diachi, pb, cv);
            load();
        }
    }
}
