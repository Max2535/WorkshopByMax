namespace WinFormSTD
{
    partial class wSelling
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
            olaSalePdtCode = new System.Windows.Forms.Label();
            otbSalePdtCode = new System.Windows.Forms.TextBox();
            ocmSaleSearchPdtCode = new System.Windows.Forms.Button();
            ogbSalePdt = new System.Windows.Forms.DataGridView();
            ogbCartPdt = new System.Windows.Forms.DataGridView();
            olaPdt = new System.Windows.Forms.Label();
            olaCart = new System.Windows.Forms.Label();
            ocmCheckOut = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)ogbSalePdt).BeginInit();
            ((System.ComponentModel.ISupportInitialize)ogbCartPdt).BeginInit();
            SuspendLayout();
            // 
            // olaSalePdtCode
            // 
            olaSalePdtCode.AutoSize = true;
            olaSalePdtCode.Location = new System.Drawing.Point(80, 15);
            olaSalePdtCode.Name = "olaSalePdtCode";
            olaSalePdtCode.Size = new System.Drawing.Size(80, 25);
            olaSalePdtCode.TabIndex = 0;
            olaSalePdtCode.Text = "รหัสสินค้า";
            // 
            // otbSalePdtCode
            // 
            otbSalePdtCode.Location = new System.Drawing.Point(164, 12);
            otbSalePdtCode.Name = "otbSalePdtCode";
            otbSalePdtCode.Size = new System.Drawing.Size(360, 31);
            otbSalePdtCode.TabIndex = 1;
            // 
            // ocmSaleSearchPdtCode
            // 
            ocmSaleSearchPdtCode.Location = new System.Drawing.Point(530, 12);
            ocmSaleSearchPdtCode.Name = "ocmSaleSearchPdtCode";
            ocmSaleSearchPdtCode.Size = new System.Drawing.Size(112, 34);
            ocmSaleSearchPdtCode.TabIndex = 2;
            ocmSaleSearchPdtCode.Text = "ค้นหา";
            ocmSaleSearchPdtCode.UseVisualStyleBackColor = true;
            ocmSaleSearchPdtCode.Click += ocmSaleSearchPdtCode_Click;
            // 
            // ogbSalePdt
            // 
            ogbSalePdt.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            ogbSalePdt.Location = new System.Drawing.Point(12, 101);
            ogbSalePdt.Name = "ogbSalePdt";
            ogbSalePdt.RowHeadersWidth = 62;
            ogbSalePdt.RowTemplate.Height = 33;
            ogbSalePdt.Size = new System.Drawing.Size(719, 160);
            ogbSalePdt.TabIndex = 4;
            // 
            // ogbCartPdt
            // 
            ogbCartPdt.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            ogbCartPdt.Location = new System.Drawing.Point(12, 338);
            ogbCartPdt.Name = "ogbCartPdt";
            ogbCartPdt.RowHeadersWidth = 62;
            ogbCartPdt.RowTemplate.Height = 33;
            ogbCartPdt.Size = new System.Drawing.Size(717, 155);
            ogbCartPdt.TabIndex = 5;
            // 
            // olaPdt
            // 
            olaPdt.AutoSize = true;
            olaPdt.Location = new System.Drawing.Point(15, 59);
            olaPdt.Name = "olaPdt";
            olaPdt.Size = new System.Drawing.Size(102, 25);
            olaPdt.TabIndex = 6;
            olaPdt.Text = "รายการสินค้า";
            // 
            // olaCart
            // 
            olaCart.AutoSize = true;
            olaCart.Location = new System.Drawing.Point(12, 290);
            olaCart.Name = "olaCart";
            olaCart.Size = new System.Drawing.Size(140, 25);
            olaCart.TabIndex = 7;
            olaCart.Text = "รายการสั่งซื้อสินค้า";
            // 
            // ocmCheckOut
            // 
            ocmCheckOut.Location = new System.Drawing.Point(180, 285);
            ocmCheckOut.Name = "ocmCheckOut";
            ocmCheckOut.Size = new System.Drawing.Size(112, 34);
            ocmCheckOut.TabIndex = 8;
            ocmCheckOut.Text = "Check Out";
            ocmCheckOut.UseVisualStyleBackColor = true;
            ocmCheckOut.Click += ocmCheckOut_Click;
            // 
            // wSelling
            // 
            AutoScaleDimensions = new System.Drawing.SizeF(10F, 25F);
            AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            ClientSize = new System.Drawing.Size(743, 505);
            Controls.Add(ocmCheckOut);
            Controls.Add(olaCart);
            Controls.Add(olaPdt);
            Controls.Add(ogbCartPdt);
            Controls.Add(ogbSalePdt);
            Controls.Add(ocmSaleSearchPdtCode);
            Controls.Add(otbSalePdtCode);
            Controls.Add(olaSalePdtCode);
            Name = "wSelling";
            Text = "wSelling";
            ((System.ComponentModel.ISupportInitialize)ogbSalePdt).EndInit();
            ((System.ComponentModel.ISupportInitialize)ogbCartPdt).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private System.Windows.Forms.Label olaSalePdtCode;
        private System.Windows.Forms.TextBox otbSalePdtCode;
        private System.Windows.Forms.Button ocmSaleSearchPdtCode;
        private System.Windows.Forms.DataGridView ogbSalePdt;
        private System.Windows.Forms.DataGridView ogbCartPdt;
        private System.Windows.Forms.Label olaPdt;
        private System.Windows.Forms.Label olaCart;
        private System.Windows.Forms.Button ocmCheckOut;
    }
}