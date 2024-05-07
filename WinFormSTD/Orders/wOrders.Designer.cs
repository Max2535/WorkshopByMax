namespace WinFormSTD
{
    partial class wOrders
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
            olaOrdNo = new System.Windows.Forms.Label();
            otbOrdNo = new System.Windows.Forms.TextBox();
            ocmSearchOrdNo = new System.Windows.Forms.Button();
            ogbOrd = new System.Windows.Forms.DataGridView();
            ((System.ComponentModel.ISupportInitialize)ogbOrd).BeginInit();
            SuspendLayout();
            // 
            // olaOrdNo
            // 
            olaOrdNo.AutoSize = true;
            olaOrdNo.Location = new System.Drawing.Point(81, 25);
            olaOrdNo.Name = "olaOrdNo";
            olaOrdNo.Size = new System.Drawing.Size(104, 25);
            olaOrdNo.TabIndex = 0;
            olaOrdNo.Text = "เลขที่ใบสั่งซื้อ";
            // 
            // otbOrdNo
            // 
            otbOrdNo.Location = new System.Drawing.Point(190, 22);
            otbOrdNo.Name = "otbOrdNo";
            otbOrdNo.Size = new System.Drawing.Size(379, 31);
            otbOrdNo.TabIndex = 1;
            // 
            // ocmSearchOrdNo
            // 
            ocmSearchOrdNo.Location = new System.Drawing.Point(578, 22);
            ocmSearchOrdNo.Name = "ocmSearchOrdNo";
            ocmSearchOrdNo.Size = new System.Drawing.Size(112, 34);
            ocmSearchOrdNo.TabIndex = 2;
            ocmSearchOrdNo.Text = "ค้นหา";
            ocmSearchOrdNo.UseVisualStyleBackColor = true;
            // 
            // ogbOrd
            // 
            ogbOrd.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            ogbOrd.Location = new System.Drawing.Point(12, 62);
            ogbOrd.Name = "ogbOrd";
            ogbOrd.RowHeadersWidth = 62;
            ogbOrd.RowTemplate.Height = 33;
            ogbOrd.Size = new System.Drawing.Size(776, 376);
            ogbOrd.TabIndex = 3;
            // 
            // wOrders
            // 
            AutoScaleDimensions = new System.Drawing.SizeF(10F, 25F);
            AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            ClientSize = new System.Drawing.Size(800, 450);
            Controls.Add(ogbOrd);
            Controls.Add(ocmSearchOrdNo);
            Controls.Add(otbOrdNo);
            Controls.Add(olaOrdNo);
            Name = "wOrders";
            Text = "wOrders";
            ((System.ComponentModel.ISupportInitialize)ogbOrd).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private System.Windows.Forms.Label olaOrdNo;
        private System.Windows.Forms.TextBox otbOrdNo;
        private System.Windows.Forms.Button ocmSearchOrdNo;
        private System.Windows.Forms.DataGridView ogbOrd;
    }
}