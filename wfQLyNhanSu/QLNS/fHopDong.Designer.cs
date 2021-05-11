
namespace wfQLyNhanSu
{
    partial class fHopDong
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
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.txtLoaiHD = new System.Windows.Forms.TextBox();
            this.txtNgayKy = new System.Windows.Forms.TextBox();
            this.txtBD = new System.Windows.Forms.TextBox();
            this.txtNgayKT = new System.Windows.Forms.TextBox();
            this.bntLuu = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(33, 86);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(76, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Loại hợp đồng";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(33, 140);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(72, 13);
            this.label2.TabIndex = 1;
            this.label2.Text = "Ngày bắt đầu";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(255, 140);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(74, 13);
            this.label3.TabIndex = 2;
            this.label3.Text = "Ngày kết thúc";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(255, 86);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(46, 13);
            this.label4.TabIndex = 3;
            this.label4.Text = "Ngày ký";
            // 
            // txtLoaiHD
            // 
            this.txtLoaiHD.Location = new System.Drawing.Point(129, 86);
            this.txtLoaiHD.Name = "txtLoaiHD";
            this.txtLoaiHD.Size = new System.Drawing.Size(100, 20);
            this.txtLoaiHD.TabIndex = 4;
            // 
            // txtNgayKy
            // 
            this.txtNgayKy.Location = new System.Drawing.Point(335, 83);
            this.txtNgayKy.Name = "txtNgayKy";
            this.txtNgayKy.Size = new System.Drawing.Size(100, 20);
            this.txtNgayKy.TabIndex = 5;
            // 
            // txtBD
            // 
            this.txtBD.Location = new System.Drawing.Point(129, 137);
            this.txtBD.Name = "txtBD";
            this.txtBD.Size = new System.Drawing.Size(100, 20);
            this.txtBD.TabIndex = 6;
            // 
            // txtNgayKT
            // 
            this.txtNgayKT.Location = new System.Drawing.Point(335, 137);
            this.txtNgayKT.Name = "txtNgayKT";
            this.txtNgayKT.Size = new System.Drawing.Size(100, 20);
            this.txtNgayKT.TabIndex = 7;
            // 
            // bntLuu
            // 
            this.bntLuu.Location = new System.Drawing.Point(194, 198);
            this.bntLuu.Name = "bntLuu";
            this.bntLuu.Size = new System.Drawing.Size(75, 23);
            this.bntLuu.TabIndex = 8;
            this.bntLuu.Text = "Lưu";
            this.bntLuu.UseVisualStyleBackColor = true;
            this.bntLuu.Click += new System.EventHandler(this.button1_Click);
            // 
            // fHopDong
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(479, 268);
            this.Controls.Add(this.bntLuu);
            this.Controls.Add(this.txtNgayKT);
            this.Controls.Add(this.txtBD);
            this.Controls.Add(this.txtNgayKy);
            this.Controls.Add(this.txtLoaiHD);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "fHopDong";
            this.Text = "fHopDong";
            this.Load += new System.EventHandler(this.fHopDong_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtLoaiHD;
        private System.Windows.Forms.TextBox txtNgayKy;
        private System.Windows.Forms.TextBox txtBD;
        private System.Windows.Forms.TextBox txtNgayKT;
        private System.Windows.Forms.Button bntLuu;
        public int maHD;
    }
}