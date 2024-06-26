﻿namespace WinForm
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
            ogbPdt = new System.Windows.Forms.DataGridView();
            olaPdtCode = new System.Windows.Forms.Label();
            obtPdtCode = new System.Windows.Forms.TextBox();
            ocmSearchPdt = new System.Windows.Forms.Button();
            ocmResetPdt = new System.Windows.Forms.Button();
            pcloader = new System.Windows.Forms.PictureBox();
            ocmBack = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)ogbPdt).BeginInit();
            ((System.ComponentModel.ISupportInitialize)pcloader).BeginInit();
            SuspendLayout();
            // 
            // ogbPdt
            // 
            ogbPdt.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            ogbPdt.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCells;
            ogbPdt.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            ogbPdt.Location = new System.Drawing.Point(12, 98);
            ogbPdt.Name = "ogbPdt";
            ogbPdt.RowHeadersWidth = 62;
            ogbPdt.RowTemplate.Height = 28;
            ogbPdt.Size = new System.Drawing.Size(816, 349);
            ogbPdt.TabIndex = 0;
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
            // ocmSearchPdt
            // 
            ocmSearchPdt.Location = new System.Drawing.Point(485, 28);
            ocmSearchPdt.Name = "ocmSearchPdt";
            ocmSearchPdt.Size = new System.Drawing.Size(112, 34);
            ocmSearchPdt.TabIndex = 3;
            ocmSearchPdt.Text = "ค้นหา";
            ocmSearchPdt.UseVisualStyleBackColor = true;
            ocmSearchPdt.Click += ocmSearchPdt_Click;
            // 
            // ocmResetPdt
            // 
            ocmResetPdt.Location = new System.Drawing.Point(602, 28);
            ocmResetPdt.Name = "ocmResetPdt";
            ocmResetPdt.Size = new System.Drawing.Size(112, 34);
            ocmResetPdt.TabIndex = 4;
            ocmResetPdt.Text = "เพิ่มสินค้า";
            ocmResetPdt.UseVisualStyleBackColor = true;
            ocmResetPdt.Click += ocmAddPdt_Click;
            // 
            // pcloader
            // 
            pcloader.Image = Properties.Resources.Loading;
            pcloader.Location = new System.Drawing.Point(662, 388);
            pcloader.Name = "pcloader";
            pcloader.Size = new System.Drawing.Size(475, 480);
            pcloader.SizeMode = System.Windows.Forms.PictureBoxSizeMode.CenterImage;
            pcloader.TabIndex = 5;
            pcloader.TabStop = false;
            pcloader.Visible = false;
            // 
            // ocmBack
            // 
            ocmBack.Location = new System.Drawing.Point(722, 28);
            ocmBack.Name = "ocmBack";
            ocmBack.Size = new System.Drawing.Size(112, 34);
            ocmBack.TabIndex = 6;
            ocmBack.Text = "กลับ";
            ocmBack.UseVisualStyleBackColor = true;
            ocmBack.Click += ocmBack_Click;
            // 
            // wProducts
            // 
            AutoScaleDimensions = new System.Drawing.SizeF(10F, 25F);
            AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            ClientSize = new System.Drawing.Size(843, 456);
            Controls.Add(ocmBack);
            Controls.Add(pcloader);
            Controls.Add(ocmResetPdt);
            Controls.Add(ocmSearchPdt);
            Controls.Add(obtPdtCode);
            Controls.Add(olaPdtCode);
            Controls.Add(ogbPdt);
            Name = "wProducts";
            Text = "รายการสินค้า";
            ((System.ComponentModel.ISupportInitialize)ogbPdt).EndInit();
            ((System.ComponentModel.ISupportInitialize)pcloader).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private System.Windows.Forms.DataGridView ogbPdt;
        private System.Windows.Forms.Label olaPdtCode;
        private System.Windows.Forms.TextBox obtPdtCode;
        private System.Windows.Forms.Button ocmSearchPdt;
        private System.Windows.Forms.Button ocmResetPdt;
        private System.Windows.Forms.PictureBox pcloader;
        private System.Windows.Forms.Button ocmBack;
    }
}