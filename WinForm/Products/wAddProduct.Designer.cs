namespace WinForm.Products
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
            obtPdtCode = new System.Windows.Forms.TextBox();
            obtPdtName = new System.Windows.Forms.TextBox();
            obtPdtQty = new System.Windows.Forms.TextBox();
            obtPdtPri = new System.Windows.Forms.TextBox();
            olaPdtCode = new System.Windows.Forms.Label();
            olaPdtName = new System.Windows.Forms.Label();
            olaPdtQty = new System.Windows.Forms.Label();
            olaPdtPri = new System.Windows.Forms.Label();
            ocmSavePdt = new System.Windows.Forms.Button();
            ocmResetPdt = new System.Windows.Forms.Button();
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
            obtPdtName.Location = new System.Drawing.Point(155, 59);
            obtPdtName.Name = "obtPdtName";
            obtPdtName.Size = new System.Drawing.Size(368, 31);
            obtPdtName.TabIndex = 1;
            // 
            // obtPdtQty
            // 
            obtPdtQty.Location = new System.Drawing.Point(155, 96);
            obtPdtQty.Name = "obtPdtQty";
            obtPdtQty.Size = new System.Drawing.Size(369, 31);
            obtPdtQty.TabIndex = 2;
            // 
            // obtPdtPri
            // 
            obtPdtPri.Location = new System.Drawing.Point(155, 133);
            obtPdtPri.Name = "obtPdtPri";
            obtPdtPri.Size = new System.Drawing.Size(369, 31);
            obtPdtPri.TabIndex = 3;
            // 
            // olaPdtCode
            // 
            olaPdtCode.AutoSize = true;
            olaPdtCode.Location = new System.Drawing.Point(38, 21);
            olaPdtCode.Name = "olaPdtCode";
            olaPdtCode.Size = new System.Drawing.Size(80, 25);
            olaPdtCode.TabIndex = 5;
            olaPdtCode.Text = "รหัสสินค้า";
            // 
            // olaPdtName
            // 
            olaPdtName.AutoSize = true;
            olaPdtName.Location = new System.Drawing.Point(43, 61);
            olaPdtName.Name = "olaPdtName";
            olaPdtName.Size = new System.Drawing.Size(72, 25);
            olaPdtName.TabIndex = 6;
            olaPdtName.Text = "ชื่อสินค้า";
            // 
            // olaPdtQty
            // 
            olaPdtQty.AutoSize = true;
            olaPdtQty.Location = new System.Drawing.Point(46, 91);
            olaPdtQty.Name = "olaPdtQty";
            olaPdtQty.Size = new System.Drawing.Size(59, 25);
            olaPdtQty.TabIndex = 7;
            olaPdtQty.Text = "จำนวน";
            // 
            // olaPdtPri
            // 
            olaPdtPri.AutoSize = true;
            olaPdtPri.Location = new System.Drawing.Point(48, 131);
            olaPdtPri.Name = "olaPdtPri";
            olaPdtPri.Size = new System.Drawing.Size(46, 25);
            olaPdtPri.TabIndex = 8;
            olaPdtPri.Text = "ราคา";
            // 
            // ocmSavePdt
            // 
            ocmSavePdt.Location = new System.Drawing.Point(180, 192);
            ocmSavePdt.Name = "ocmSavePdt";
            ocmSavePdt.Size = new System.Drawing.Size(112, 34);
            ocmSavePdt.TabIndex = 9;
            ocmSavePdt.Text = "บันทึก";
            ocmSavePdt.UseVisualStyleBackColor = true;
            ocmSavePdt.Click += ocmSavePdt_Click;
            // 
            // ocmResetPdt
            // 
            ocmResetPdt.Location = new System.Drawing.Point(348, 192);
            ocmResetPdt.Name = "ocmResetPdt";
            ocmResetPdt.Size = new System.Drawing.Size(112, 34);
            ocmResetPdt.TabIndex = 10;
            ocmResetPdt.Text = "รีเซ็ต";
            ocmResetPdt.UseVisualStyleBackColor = true;
            // 
            // wAddProduct
            // 
            AutoScaleDimensions = new System.Drawing.SizeF(10F, 25F);
            AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            ClientSize = new System.Drawing.Size(578, 251);
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
    }
}