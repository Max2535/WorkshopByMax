namespace WinForm
{
    partial class wProducts
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
            dataGridView1 = new System.Windows.Forms.DataGridView();
            olaPdtCode = new System.Windows.Forms.Label();
            obtPdtCode = new System.Windows.Forms.TextBox();
            ocmSavePdt = new System.Windows.Forms.Button();
            ocmResetPdt = new System.Windows.Forms.Button();
            pcloader = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)dataGridView1).BeginInit();
            ((System.ComponentModel.ISupportInitialize)pcloader).BeginInit();
            SuspendLayout();
            // 
            // dataGridView1
            // 
            dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridView1.Location = new System.Drawing.Point(12, 98);
            dataGridView1.Name = "dataGridView1";
            dataGridView1.RowHeadersWidth = 62;
            dataGridView1.RowTemplate.Height = 28;
            dataGridView1.Size = new System.Drawing.Size(776, 340);
            dataGridView1.TabIndex = 0;
            // 
            // olaPdtCode
            // 
            olaPdtCode.AutoSize = true;
            olaPdtCode.Location = new System.Drawing.Point(42, 32);
            olaPdtCode.Name = "olaPdtCode";
            olaPdtCode.Size = new System.Drawing.Size(72, 25);
            olaPdtCode.TabIndex = 1;
            olaPdtCode.Text = "ชื่อสินค้า";
            // 
            // obtPdtCode
            // 
            obtPdtCode.Location = new System.Drawing.Point(124, 29);
            obtPdtCode.Name = "obtPdtCode";
            obtPdtCode.Size = new System.Drawing.Size(354, 31);
            obtPdtCode.TabIndex = 2;
            // 
            // ocmSavePdt
            // 
            ocmSavePdt.Location = new System.Drawing.Point(485, 28);
            ocmSavePdt.Name = "ocmSavePdt";
            ocmSavePdt.Size = new System.Drawing.Size(112, 34);
            ocmSavePdt.TabIndex = 3;
            ocmSavePdt.Text = "ค้นหา";
            ocmSavePdt.UseVisualStyleBackColor = true;
            // 
            // ocmResetPdt
            // 
            ocmResetPdt.Location = new System.Drawing.Point(602, 29);
            ocmResetPdt.Name = "ocmResetPdt";
            ocmResetPdt.Size = new System.Drawing.Size(112, 34);
            ocmResetPdt.TabIndex = 4;
            ocmResetPdt.Text = "เพิ่มสินค้า";
            ocmResetPdt.UseVisualStyleBackColor = true;
            ocmResetPdt.Click += ocmResetPdt_Click;
            // 
            // pcloader
            // 
            pcloader.Image = Properties.Resources.Loading;
            pcloader.Location = new System.Drawing.Point(122, 210);
            pcloader.Name = "pcloader";
            pcloader.Size = new System.Drawing.Size(475, 480);
            pcloader.SizeMode = System.Windows.Forms.PictureBoxSizeMode.AutoSize;
            pcloader.TabIndex = 5;
            pcloader.TabStop = false;
            pcloader.Visible = false;
            // 
            // wProducts
            // 
            AutoScaleDimensions = new System.Drawing.SizeF(10F, 25F);
            AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            ClientSize = new System.Drawing.Size(800, 450);
            Controls.Add(pcloader);
            Controls.Add(ocmResetPdt);
            Controls.Add(ocmSavePdt);
            Controls.Add(obtPdtCode);
            Controls.Add(olaPdtCode);
            Controls.Add(dataGridView1);
            Name = "wProducts";
            Text = "รายการสินค้า";
            ((System.ComponentModel.ISupportInitialize)dataGridView1).EndInit();
            ((System.ComponentModel.ISupportInitialize)pcloader).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Label olaPdtCode;
        private System.Windows.Forms.TextBox obtPdtCode;
        private System.Windows.Forms.Button ocmSavePdt;
        private System.Windows.Forms.Button ocmResetPdt;
        private System.Windows.Forms.PictureBox pcloader;
    }
}