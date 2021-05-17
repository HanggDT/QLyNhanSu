
namespace wfQLyNhanSu
{
    partial class fQLyKhenThuong
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.dgv = new System.Windows.Forms.DataGridView();
            this.btnXoa = new System.Windows.Forms.Button();
            this.btnSua = new System.Windows.Forms.Button();
            this.btnThemMoi = new System.Windows.Forms.Button();
            this.txtHinhThucKT = new System.Windows.Forms.TextBox();
            this.label12 = new System.Windows.Forms.Label();
            this.txtNoiDung = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.txtGiaTri = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.txtMaKT = new System.Windows.Forms.TextBox();
            this.lbMaNS = new System.Windows.Forms.Label();
            this.lb1 = new System.Windows.Forms.Label();
            this.bntTim = new System.Windows.Forms.Button();
            this.txtTim = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.txtNgayKT = new System.Windows.Forms.TextBox();
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dgv)).BeginInit();
            this.SuspendLayout();
            // 
            // dgv
            // 
            this.dgv.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgv.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.dgv.Location = new System.Drawing.Point(0, 231);
            this.dgv.MultiSelect = false;
            this.dgv.Name = "dgv";
            this.dgv.ReadOnly = true;
            this.dgv.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgv.Size = new System.Drawing.Size(760, 125);
            this.dgv.TabIndex = 60;
            this.dgv.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgv_CellClick);
            this.dgv.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgv_CellContentClick);
            this.dgv.RowHeaderMouseDoubleClick += new System.Windows.Forms.DataGridViewCellMouseEventHandler(this.dgv_RowHeaderMouseDoubleClick);
            // 
            // btnXoa
            // 
            this.btnXoa.Location = new System.Drawing.Point(481, 175);
            this.btnXoa.Name = "btnXoa";
            this.btnXoa.Size = new System.Drawing.Size(75, 23);
            this.btnXoa.TabIndex = 59;
            this.btnXoa.Text = "Xóa";
            this.btnXoa.UseVisualStyleBackColor = true;
            this.btnXoa.Click += new System.EventHandler(this.btnXoa_Click);
            // 
            // btnSua
            // 
            this.btnSua.Location = new System.Drawing.Point(352, 175);
            this.btnSua.Name = "btnSua";
            this.btnSua.Size = new System.Drawing.Size(75, 23);
            this.btnSua.TabIndex = 58;
            this.btnSua.Text = "Sửa";
            this.btnSua.UseVisualStyleBackColor = true;
            this.btnSua.Click += new System.EventHandler(this.btnSua_Click);
            // 
            // btnThemMoi
            // 
            this.btnThemMoi.Location = new System.Drawing.Point(208, 175);
            this.btnThemMoi.Name = "btnThemMoi";
            this.btnThemMoi.Size = new System.Drawing.Size(75, 23);
            this.btnThemMoi.TabIndex = 57;
            this.btnThemMoi.Text = "Thêm mới";
            this.btnThemMoi.UseVisualStyleBackColor = true;
            this.btnThemMoi.Click += new System.EventHandler(this.btnThemMoi_Click);
            // 
            // txtHinhThucKT
            // 
            this.txtHinhThucKT.Location = new System.Drawing.Point(403, 81);
            this.txtHinhThucKT.Name = "txtHinhThucKT";
            this.txtHinhThucKT.Size = new System.Drawing.Size(104, 20);
            this.txtHinhThucKT.TabIndex = 56;
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(272, 84);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(116, 13);
            this.label12.TabIndex = 55;
            this.label12.Text = "Hình thức khen thưởng";
            // 
            // txtNoiDung
            // 
            this.txtNoiDung.Location = new System.Drawing.Point(586, 107);
            this.txtNoiDung.Multiline = true;
            this.txtNoiDung.Name = "txtNoiDung";
            this.txtNoiDung.Size = new System.Drawing.Size(149, 62);
            this.txtNoiDung.TabIndex = 54;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(530, 110);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(50, 13);
            this.label1.TabIndex = 53;
            this.label1.Text = "Nội dung";
            // 
            // txtGiaTri
            // 
            this.txtGiaTri.Location = new System.Drawing.Point(586, 81);
            this.txtGiaTri.Name = "txtGiaTri";
            this.txtGiaTri.Size = new System.Drawing.Size(100, 20);
            this.txtGiaTri.TabIndex = 50;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(530, 84);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(34, 13);
            this.label5.TabIndex = 49;
            this.label5.Text = "Giá trị";
            // 
            // txtMaKT
            // 
            this.txtMaKT.Location = new System.Drawing.Point(129, 81);
            this.txtMaKT.Name = "txtMaKT";
            this.txtMaKT.Size = new System.Drawing.Size(112, 20);
            this.txtMaKT.TabIndex = 46;
            // 
            // lbMaNS
            // 
            this.lbMaNS.AutoSize = true;
            this.lbMaNS.Location = new System.Drawing.Point(33, 84);
            this.lbMaNS.Name = "lbMaNS";
            this.lbMaNS.Size = new System.Drawing.Size(85, 13);
            this.lbMaNS.TabIndex = 45;
            this.lbMaNS.Text = "Mã khen thưởng";
            // 
            // lb1
            // 
            this.lb1.AutoSize = true;
            this.lb1.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb1.Location = new System.Drawing.Point(646, 9);
            this.lb1.Name = "lb1";
            this.lb1.Size = new System.Drawing.Size(102, 18);
            this.lb1.TabIndex = 44;
            this.lb1.Text = "Khen thưởng";
            this.lb1.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // bntTim
            // 
            this.bntTim.Location = new System.Drawing.Point(413, 21);
            this.bntTim.Name = "bntTim";
            this.bntTim.Size = new System.Drawing.Size(75, 23);
            this.bntTim.TabIndex = 63;
            this.bntTim.Text = "TÌM KIẾM";
            this.bntTim.UseVisualStyleBackColor = true;
            this.bntTim.Click += new System.EventHandler(this.bntTim_Click);
            // 
            // txtTim
            // 
            this.txtTim.Location = new System.Drawing.Point(297, 24);
            this.txtTim.Name = "txtTim";
            this.txtTim.Size = new System.Drawing.Size(100, 20);
            this.txtTim.TabIndex = 64;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(28, 123);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(95, 13);
            this.label3.TabIndex = 47;
            this.label3.Text = "Ngày khen thưởng";
            // 
            // txtNgayKT
            // 
            this.txtNgayKT.Location = new System.Drawing.Point(129, 123);
            this.txtNgayKT.Name = "txtNgayKT";
            this.txtNgayKT.Size = new System.Drawing.Size(112, 20);
            this.txtNgayKT.TabIndex = 48;
            this.txtNgayKT.TextChanged += new System.EventHandler(this.txtNgayKT_TextChanged);
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(403, 118);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 65;
            this.button1.Text = "RESET";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(12, 12);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(75, 23);
            this.button2.TabIndex = 66;
            this.button2.Text = "QUAY LẠI";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // fQLyKhenThuong
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(760, 356);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.txtTim);
            this.Controls.Add(this.bntTim);
            this.Controls.Add(this.dgv);
            this.Controls.Add(this.btnXoa);
            this.Controls.Add(this.btnSua);
            this.Controls.Add(this.btnThemMoi);
            this.Controls.Add(this.txtHinhThucKT);
            this.Controls.Add(this.label12);
            this.Controls.Add(this.txtNoiDung);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txtGiaTri);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.txtNgayKT);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.txtMaKT);
            this.Controls.Add(this.lbMaNS);
            this.Controls.Add(this.lb1);
            this.Name = "fQLyKhenThuong";
            this.Text = "Khen thưởng";
            this.Load += new System.EventHandler(this.fQLyKhenThuong_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgv)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dgv;
        private System.Windows.Forms.Button btnXoa;
        private System.Windows.Forms.Button btnSua;
        private System.Windows.Forms.Button btnThemMoi;
        private System.Windows.Forms.TextBox txtHinhThucKT;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.TextBox txtNoiDung;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtGiaTri;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txtMaKT;
        private System.Windows.Forms.Label lbMaNS;
        private System.Windows.Forms.Label lb1;
        private System.Windows.Forms.Button bntTim;
        private System.Windows.Forms.TextBox txtTim;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtNgayKT;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button2;
    }
}