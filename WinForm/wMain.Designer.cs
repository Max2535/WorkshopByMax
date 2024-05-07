namespace WinForm
{
    partial class wMain
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
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
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            olaMainTitle = new System.Windows.Forms.Label();
            ocmProducts = new System.Windows.Forms.Button();
            ocmSelling = new System.Windows.Forms.Button();
            ocmOrders = new System.Windows.Forms.Button();
            ocmSearchOrdNo = new System.Windows.Forms.Button();
            ocmClose = new System.Windows.Forms.Button();
            SuspendLayout();
            // 
            // olaMainTitle
            // 
            olaMainTitle.AutoSize = true;
            olaMainTitle.Font = new System.Drawing.Font("Segoe UI", 16F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            olaMainTitle.Location = new System.Drawing.Point(32, 9);
            olaMainTitle.Name = "olaMainTitle";
            olaMainTitle.Size = new System.Drawing.Size(140, 45);
            olaMainTitle.TabIndex = 1;
            olaMainTitle.Text = "ขายสินค้า";
            // 
            // ocmProducts
            // 
            ocmProducts.Location = new System.Drawing.Point(56, 76);
            ocmProducts.Name = "ocmProducts";
            ocmProducts.Size = new System.Drawing.Size(713, 53);
            ocmProducts.TabIndex = 2;
            ocmProducts.Text = "รายการข้อมูลสินค้า";
            ocmProducts.UseVisualStyleBackColor = true;
            ocmProducts.Click += ocmProducts_Click;
            // 
            // ocmSelling
            // 
            ocmSelling.Location = new System.Drawing.Point(56, 152);
            ocmSelling.Name = "ocmSelling";
            ocmSelling.Size = new System.Drawing.Size(713, 53);
            ocmSelling.TabIndex = 3;
            ocmSelling.Text = "ขายสินค้า";
            ocmSelling.UseVisualStyleBackColor = true;
            ocmSelling.Click += ocmSelling_Click;
            // 
            // ocmOrders
            // 
            ocmOrders.Location = new System.Drawing.Point(56, 234);
            ocmOrders.Name = "ocmOrders";
            ocmOrders.Size = new System.Drawing.Size(713, 53);
            ocmOrders.TabIndex = 4;
            ocmOrders.Text = "รายการสั่งซื้อสินค้า";
            ocmOrders.UseVisualStyleBackColor = true;
            ocmOrders.Click += ocmOrders_Click;
            // 
            // ocmSearchOrdNo
            // 
            ocmSearchOrdNo.Location = new System.Drawing.Point(56, 315);
            ocmSearchOrdNo.Name = "ocmSearchOrdNo";
            ocmSearchOrdNo.Size = new System.Drawing.Size(713, 53);
            ocmSearchOrdNo.TabIndex = 5;
            ocmSearchOrdNo.Text = "รายการสต็อก";
            ocmSearchOrdNo.UseVisualStyleBackColor = true;
            ocmSearchOrdNo.Click += ocmSearchOrdNo_Click;
            // 
            // ocmClose
            // 
            ocmClose.Location = new System.Drawing.Point(58, 388);
            ocmClose.Name = "ocmClose";
            ocmClose.Size = new System.Drawing.Size(711, 53);
            ocmClose.TabIndex = 6;
            ocmClose.Text = "ออก";
            ocmClose.UseVisualStyleBackColor = true;
            ocmClose.Click += ocmClose_Click;
            // 
            // wMain
            // 
            AutoScaleDimensions = new System.Drawing.SizeF(10F, 25F);
            AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            ClientSize = new System.Drawing.Size(819, 509);
            Controls.Add(ocmClose);
            Controls.Add(ocmSearchOrdNo);
            Controls.Add(ocmOrders);
            Controls.Add(ocmSelling);
            Controls.Add(ocmProducts);
            Controls.Add(olaMainTitle);
            Name = "wMain";
            StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            Text = "Main";
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion
        private System.Windows.Forms.Label olaMainTitle;
        private System.Windows.Forms.Button ocmProducts;
        private System.Windows.Forms.Button ocmSelling;
        private System.Windows.Forms.Button ocmOrders;
        private System.Windows.Forms.Button ocmSearchOrdNo;
        private System.Windows.Forms.Button ocmClose;
    }
}
