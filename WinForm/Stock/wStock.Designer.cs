namespace WinForm.Stock
{
    partial class wStock
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
            olaSKPdtCode = new System.Windows.Forms.Label();
            otbSKPdtCode = new System.Windows.Forms.TextBox();
            ocmSKSearchPdtCode = new System.Windows.Forms.Button();
            ogdSKPdt = new System.Windows.Forms.DataGridView();
            ((System.ComponentModel.ISupportInitialize)ogdSKPdt).BeginInit();
            SuspendLayout();
            // 
            // olaSKPdtCode
            // 
            olaSKPdtCode.AutoSize = true;
            olaSKPdtCode.Location = new System.Drawing.Point(54, 23);
            olaSKPdtCode.Name = "olaSKPdtCode";
            olaSKPdtCode.Size = new System.Drawing.Size(80, 25);
            olaSKPdtCode.TabIndex = 0;
            olaSKPdtCode.Text = "รหัสสินค้า";
            // 
            // otbSKPdtCode
            // 
            otbSKPdtCode.Location = new System.Drawing.Point(143, 20);
            otbSKPdtCode.Name = "otbSKPdtCode";
            otbSKPdtCode.Size = new System.Drawing.Size(445, 31);
            otbSKPdtCode.TabIndex = 1;
            // 
            // ocmSKSearchPdtCode
            // 
            ocmSKSearchPdtCode.Location = new System.Drawing.Point(599, 18);
            ocmSKSearchPdtCode.Name = "ocmSKSearchPdtCode";
            ocmSKSearchPdtCode.Size = new System.Drawing.Size(112, 34);
            ocmSKSearchPdtCode.TabIndex = 2;
            ocmSKSearchPdtCode.Text = "ค้นหา";
            ocmSKSearchPdtCode.UseVisualStyleBackColor = true;
            // 
            // ogdSKPdt
            // 
            ogdSKPdt.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            ogdSKPdt.Location = new System.Drawing.Point(12, 69);
            ogdSKPdt.Name = "ogdSKPdt";
            ogdSKPdt.RowHeadersWidth = 62;
            ogdSKPdt.RowTemplate.Height = 33;
            ogdSKPdt.Size = new System.Drawing.Size(776, 369);
            ogdSKPdt.TabIndex = 3;
            // 
            // wStock
            // 
            AutoScaleDimensions = new System.Drawing.SizeF(10F, 25F);
            AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            ClientSize = new System.Drawing.Size(800, 450);
            Controls.Add(ogdSKPdt);
            Controls.Add(ocmSKSearchPdtCode);
            Controls.Add(otbSKPdtCode);
            Controls.Add(olaSKPdtCode);
            Name = "wStock";
            Text = "wStock";
            ((System.ComponentModel.ISupportInitialize)ogdSKPdt).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private System.Windows.Forms.Label olaSKPdtCode;
        private System.Windows.Forms.TextBox otbSKPdtCode;
        private System.Windows.Forms.Button ocmSKSearchPdtCode;
        private System.Windows.Forms.DataGridView ogdSKPdt;
    }
}