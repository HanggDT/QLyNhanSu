
namespace QLNS
{
    partial class fLuong
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
            this.txtL = new System.Windows.Forms.TextBox();
            this.txtPC = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.bntLuu = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(113, 53);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(45, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "LƯƠNG";
            // 
            // txtL
            // 
            this.txtL.Location = new System.Drawing.Point(196, 53);
            this.txtL.Name = "txtL";
            this.txtL.Size = new System.Drawing.Size(100, 20);
            this.txtL.TabIndex = 1;
            // 
            // txtPC
            // 
            this.txtPC.Location = new System.Drawing.Point(196, 100);
            this.txtPC.Name = "txtPC";
            this.txtPC.Size = new System.Drawing.Size(100, 20);
            this.txtPC.TabIndex = 2;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(113, 100);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(54, 13);
            this.label2.TabIndex = 3;
            this.label2.Text = "PHỤ CẤP";
            // 
            // bntLuu
            // 
            this.bntLuu.Location = new System.Drawing.Point(177, 146);
            this.bntLuu.Name = "bntLuu";
            this.bntLuu.Size = new System.Drawing.Size(75, 23);
            this.bntLuu.TabIndex = 4;
            this.bntLuu.Text = "LƯU";
            this.bntLuu.UseVisualStyleBackColor = true;
            this.bntLuu.Click += new System.EventHandler(this.bntLuu_Click);
            // 
            // fLuong
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(429, 195);
            this.Controls.Add(this.bntLuu);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.txtPC);
            this.Controls.Add(this.txtL);
            this.Controls.Add(this.label1);
            this.Name = "fLuong";
            this.Text = "fLuong";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtL;
        private System.Windows.Forms.TextBox txtPC;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button bntLuu;
    }
}