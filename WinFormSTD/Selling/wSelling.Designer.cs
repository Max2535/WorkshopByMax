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
            ocmCartPdt = new System.Windows.Forms.Button();
            ogbSalePdt = new System.Windows.Forms.DataGridView();
            ((System.ComponentModel.ISupportInitialize)ogbSalePdt).BeginInit();
            SuspendLayout();
            // 
            // olaSalePdtCode
            // 
            olaSalePdtCode.AutoSize = true;
            olaSalePdtCode.Location = new System.Drawing.Point(47, 18);
            olaSalePdtCode.Name = "olaSalePdtCode";
            olaSalePdtCode.Size = new System.Drawing.Size(80, 25);
            olaSalePdtCode.TabIndex = 0;
            olaSalePdtCode.Text = "รหัสสินค้า";
            // 
            // otbSalePdtCode
            // 
            otbSalePdtCode.Location = new System.Drawing.Point(131, 17);
            otbSalePdtCode.Name = "otbSalePdtCode";
            otbSalePdtCode.Size = new System.Drawing.Size(360, 31);
            otbSalePdtCode.TabIndex = 1;
            // 
            // ocmSaleSearchPdtCode
            // 
            ocmSaleSearchPdtCode.Location = new System.Drawing.Point(497, 18);
            ocmSaleSearchPdtCode.Name = "ocmSaleSearchPdtCode";
            ocmSaleSearchPdtCode.Size = new System.Drawing.Size(112, 34);
            ocmSaleSearchPdtCode.TabIndex = 2;
            ocmSaleSearchPdtCode.Text = "ค้นหา";
            ocmSaleSearchPdtCode.UseVisualStyleBackColor = true;
            // 
            // ocmCartPdt
            // 
            ocmCartPdt.Location = new System.Drawing.Point(619, 19);
            ocmCartPdt.Name = "ocmCartPdt";
            ocmCartPdt.Size = new System.Drawing.Size(112, 34);
            ocmCartPdt.TabIndex = 3;
            ocmCartPdt.Text = "รายการสินค้า";
            ocmCartPdt.UseVisualStyleBackColor = true;
            // 
            // ogbSalePdt
            // 
            ogbSalePdt.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            ogbSalePdt.Location = new System.Drawing.Point(12, 60);
            ogbSalePdt.Name = "ogbSalePdt";
            ogbSalePdt.RowHeadersWidth = 62;
            ogbSalePdt.RowTemplate.Height = 33;
            ogbSalePdt.Size = new System.Drawing.Size(776, 378);
            ogbSalePdt.TabIndex = 4;
            // 
            // wSelling
            // 
            AutoScaleDimensions = new System.Drawing.SizeF(10F, 25F);
            AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            ClientSize = new System.Drawing.Size(800, 450);
            Controls.Add(ogbSalePdt);
            Controls.Add(ocmCartPdt);
            Controls.Add(ocmSaleSearchPdtCode);
            Controls.Add(otbSalePdtCode);
            Controls.Add(olaSalePdtCode);
            Name = "wSelling";
            Text = "wSelling";
            ((System.ComponentModel.ISupportInitialize)ogbSalePdt).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private System.Windows.Forms.Label olaSalePdtCode;
        private System.Windows.Forms.TextBox otbSalePdtCode;
        private System.Windows.Forms.Button ocmSaleSearchPdtCode;
        private System.Windows.Forms.Button ocmCartPdt;
        private System.Windows.Forms.DataGridView ogbSalePdt;
    }
}