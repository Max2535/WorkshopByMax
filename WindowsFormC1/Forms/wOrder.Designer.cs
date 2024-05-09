namespace WindowsFormC1.Forms
{
    partial class wOrder
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
            this.ogdOrd = new C1.Win.C1FlexGrid.C1FlexGrid();
            this.olaOrdCode = new System.Windows.Forms.Label();
            this.otbOrdCode = new System.Windows.Forms.TextBox();
            this.ocmSearchOrd = new System.Windows.Forms.Button();
            this.ocmResetOrd = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.ogdOrd)).BeginInit();
            this.SuspendLayout();
            // 
            // ogdOrd
            // 
            this.ogdOrd.ColumnInfo = "10,1,0,0,0,-1,Columns:";
            this.ogdOrd.Location = new System.Drawing.Point(12, 69);
            this.ogdOrd.Name = "ogdOrd";
            this.ogdOrd.Size = new System.Drawing.Size(776, 369);
            this.ogdOrd.TabIndex = 0;
            // 
            // olaOrdCode
            // 
            this.olaOrdCode.AutoSize = true;
            this.olaOrdCode.Location = new System.Drawing.Point(83, 18);
            this.olaOrdCode.Name = "olaOrdCode";
            this.olaOrdCode.Size = new System.Drawing.Size(57, 20);
            this.olaOrdCode.TabIndex = 1;
            this.olaOrdCode.Text = "ใบสั่งซื้อ";
            // 
            // otbOrdCode
            // 
            this.otbOrdCode.Location = new System.Drawing.Point(146, 15);
            this.otbOrdCode.Name = "otbOrdCode";
            this.otbOrdCode.Size = new System.Drawing.Size(332, 26);
            this.otbOrdCode.TabIndex = 2;
            // 
            // ocmSearchOrd
            // 
            this.ocmSearchOrd.Location = new System.Drawing.Point(484, 15);
            this.ocmSearchOrd.Name = "ocmSearchOrd";
            this.ocmSearchOrd.Size = new System.Drawing.Size(97, 32);
            this.ocmSearchOrd.TabIndex = 3;
            this.ocmSearchOrd.Text = "ค้นหา";
            this.ocmSearchOrd.UseVisualStyleBackColor = true;
            // 
            // ocmResetOrd
            // 
            this.ocmResetOrd.Location = new System.Drawing.Point(587, 14);
            this.ocmResetOrd.Name = "ocmResetOrd";
            this.ocmResetOrd.Size = new System.Drawing.Size(99, 32);
            this.ocmResetOrd.TabIndex = 4;
            this.ocmResetOrd.Text = "รีเซ็ต";
            this.ocmResetOrd.UseVisualStyleBackColor = true;
            // 
            // wOrder
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.ocmResetOrd);
            this.Controls.Add(this.ocmSearchOrd);
            this.Controls.Add(this.otbOrdCode);
            this.Controls.Add(this.olaOrdCode);
            this.Controls.Add(this.ogdOrd);
            this.Name = "wOrder";
            this.Text = "wOrder";
            ((System.ComponentModel.ISupportInitialize)(this.ogdOrd)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private C1.Win.C1FlexGrid.C1FlexGrid ogdOrd;
        private System.Windows.Forms.Label olaOrdCode;
        private System.Windows.Forms.TextBox otbOrdCode;
        private System.Windows.Forms.Button ocmSearchOrd;
        private System.Windows.Forms.Button ocmResetOrd;
    }
}