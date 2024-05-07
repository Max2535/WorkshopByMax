using System.Windows.Forms;

namespace WinFormSTD.Products
{
    partial class wAddProduct
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
            obtPdtCode = new TextBox();
            obtPdtName = new TextBox();
            obtPdtQty = new TextBox();
            obtPdtPri = new TextBox();
            olaPdtCode = new Label();
            olaPdtName = new Label();
            olaPdtQty = new Label();
            olaPdtPri = new Label();
            ocmSavePdt = new Button();
            ocmResetPdt = new Button();
            opbImgPdt = new PictureBox();
            ((System.ComponentModel.ISupportInitialize)opbImgPdt).BeginInit();
            SuspendLayout();
            // 
            // obtPdtCode
            // 
            obtPdtCode.Location = new System.Drawing.Point(155, 22);
            obtPdtCode.Name = "obtPdtCode";
            obtPdtCode.Size = new System.Drawing.Size(369, 31);
            obtPdtCode.TabIndex = 0;
            // 
            // obtPdtName
            // 
            obtPdtName.Location = new System.Drawing.Point(155, 74);
            obtPdtName.Name = "obtPdtName";
            obtPdtName.Size = new System.Drawing.Size(368, 31);
            obtPdtName.TabIndex = 1;
            // 
            // obtPdtQty
            // 
            obtPdtQty.Location = new System.Drawing.Point(155, 131);
            obtPdtQty.Name = "obtPdtQty";
            obtPdtQty.Size = new System.Drawing.Size(369, 31);
            obtPdtQty.TabIndex = 2;
            // 
            // obtPdtPri
            // 
            obtPdtPri.Location = new System.Drawing.Point(155, 181);
            obtPdtPri.Name = "obtPdtPri";
            obtPdtPri.Size = new System.Drawing.Size(369, 31);
            obtPdtPri.TabIndex = 3;
            // 
            // olaPdtCode
            // 
            olaPdtCode.AutoSize = true;
            olaPdtCode.Location = new System.Drawing.Point(54, 27);
            olaPdtCode.Name = "olaPdtCode";
            olaPdtCode.Size = new System.Drawing.Size(92, 25);
            olaPdtCode.TabIndex = 5;
            olaPdtCode.Text = "รหัสสินค้า:*";
            // 
            // olaPdtName
            // 
            olaPdtName.AutoSize = true;
            olaPdtName.Location = new System.Drawing.Point(62, 79);
            olaPdtName.Name = "olaPdtName";
            olaPdtName.Size = new System.Drawing.Size(84, 25);
            olaPdtName.TabIndex = 6;
            olaPdtName.Text = "ชื่อสินค้า:*";
            // 
            // olaPdtQty
            // 
            olaPdtQty.AutoSize = true;
            olaPdtQty.Location = new System.Drawing.Point(75, 130);
            olaPdtQty.Name = "olaPdtQty";
            olaPdtQty.Size = new System.Drawing.Size(71, 25);
            olaPdtQty.TabIndex = 7;
            olaPdtQty.Text = "จำนวน:*";
            // 
            // olaPdtPri
            // 
            olaPdtPri.AutoSize = true;
            olaPdtPri.Location = new System.Drawing.Point(88, 183);
            olaPdtPri.Name = "olaPdtPri";
            olaPdtPri.Size = new System.Drawing.Size(58, 25);
            olaPdtPri.TabIndex = 8;
            olaPdtPri.Text = "ราคา:*";
            // 
            // ocmSavePdt
            // 
            ocmSavePdt.Location = new System.Drawing.Point(180, 248);
            ocmSavePdt.Name = "ocmSavePdt";
            ocmSavePdt.Size = new System.Drawing.Size(112, 34);
            ocmSavePdt.TabIndex = 9;
            ocmSavePdt.Text = "บันทึก";
            ocmSavePdt.UseVisualStyleBackColor = true;
            ocmSavePdt.Click += ocmSavePdt_Click;
            // 
            // ocmResetPdt
            // 
            ocmResetPdt.Location = new System.Drawing.Point(348, 248);
            ocmResetPdt.Name = "ocmResetPdt";
            ocmResetPdt.Size = new System.Drawing.Size(112, 34);
            ocmResetPdt.TabIndex = 10;
            ocmResetPdt.Text = "รีเซ็ต";
            ocmResetPdt.UseVisualStyleBackColor = true;
            ocmResetPdt.Click += ocmResetPdt_Click;
            // 
            // opbImgPdt
            // 
            opbImgPdt.Image = Properties.Resources.ImageDefault;
            opbImgPdt.Location = new System.Drawing.Point(569, 24);
            opbImgPdt.Name = "opbImgPdt";
            opbImgPdt.Size = new System.Drawing.Size(197, 202);
            opbImgPdt.SizeMode = PictureBoxSizeMode.CenterImage;
            opbImgPdt.TabIndex = 11;
            opbImgPdt.TabStop = false;
            opbImgPdt.Click += opbImgPdt_Click;
            // 
            // wAddProduct
            // 
            AutoScaleDimensions = new System.Drawing.SizeF(10F, 25F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new System.Drawing.Size(790, 312);
            Controls.Add(opbImgPdt);
            Controls.Add(ocmResetPdt);
            Controls.Add(ocmSavePdt);
            Controls.Add(olaPdtPri);
            Controls.Add(olaPdtQty);
            Controls.Add(olaPdtName);
            Controls.Add(olaPdtCode);
            Controls.Add(obtPdtPri);
            Controls.Add(obtPdtQty);
            Controls.Add(obtPdtName);
            Controls.Add(obtPdtCode);
            Name = "wAddProduct";
            Text = "wAddProduct";
            ((System.ComponentModel.ISupportInitialize)opbImgPdt).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private System.Windows.Forms.TextBox obtPdtCode;
        private System.Windows.Forms.TextBox obtPdtName;
        private System.Windows.Forms.TextBox obtPdtQty;
        private System.Windows.Forms.TextBox obtPdtPri;
        private System.Windows.Forms.Label olaPdtCode;
        private System.Windows.Forms.Label olaPdtName;
        private System.Windows.Forms.Label olaPdtQty;
        private System.Windows.Forms.Label olaPdtPri;
        private System.Windows.Forms.Button ocmSavePdt;
        private System.Windows.Forms.Button ocmResetPdt;
        private System.Windows.Forms.PictureBox opbImgPdt;
    }
}