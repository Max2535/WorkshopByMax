using C1.Win.C1FlexGrid;
using System;

namespace WindowsFormC1
{
    partial class wProduct
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(wProduct));
            this.ogdPdt = new C1.Win.C1FlexGrid.C1FlexGrid();
            this.olaPdtCode = new System.Windows.Forms.Label();
            this.obtPdtCode = new System.Windows.Forms.TextBox();
            this.obtPdtName = new System.Windows.Forms.TextBox();
            this.obtPdtQty = new System.Windows.Forms.TextBox();
            this.obtPdtPri = new System.Windows.Forms.TextBox();
            this.ocmPdtSave = new System.Windows.Forms.Button();
            this.ocmPdtReset = new System.Windows.Forms.Button();
            this.olaPdtName = new System.Windows.Forms.Label();
            this.olaPdtQty = new System.Windows.Forms.Label();
            this.olaPdtPri = new System.Windows.Forms.Label();
            this.ockSaveEvent = new System.Windows.Forms.CheckBox();
            ((System.ComponentModel.ISupportInitialize)(this.ogdPdt)).BeginInit();
            this.SuspendLayout();
            // 
            // ogdPdt
            // 
            this.ogdPdt.AllowDragging = C1.Win.C1FlexGrid.AllowDraggingEnum.None;
            this.ogdPdt.AllowFiltering = true;
            this.ogdPdt.BackColor = System.Drawing.Color.Ivory;
            this.ogdPdt.ColumnInfo = resources.GetString("ogdPdt.ColumnInfo");
            this.ogdPdt.ExtendLastCol = true;
            this.ogdPdt.FocusRect = C1.Win.C1FlexGrid.FocusRectEnum.None;
            this.ogdPdt.Font = new System.Drawing.Font("Lucida Console", 8.25F);
            this.ogdPdt.Location = new System.Drawing.Point(12, 239);
            this.ogdPdt.Margin = new System.Windows.Forms.Padding(4);
            this.ogdPdt.Name = "ogdPdt";
            this.ogdPdt.Rows.Count = 9;
            this.ogdPdt.Rows.MaxSize = 35;
            this.ogdPdt.Rows.MinSize = 35;
            this.ogdPdt.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.ogdPdt.Size = new System.Drawing.Size(1039, 433);
            this.ogdPdt.StyleInfo = resources.GetString("ogdPdt.StyleInfo");
            this.ogdPdt.TabIndex = 0;
            this.ogdPdt.EnterCell += new System.EventHandler(this.ogdPdt_EnterCell);
            this.ogdPdt.CellChecked += new C1.Win.C1FlexGrid.RowColEventHandler(this.ogdPdt_CellChecked);
            // 
            // olaPdtCode
            // 
            this.olaPdtCode.AutoSize = true;
            this.olaPdtCode.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(222)));
            this.olaPdtCode.Location = new System.Drawing.Point(14, 19);
            this.olaPdtCode.Name = "olaPdtCode";
            this.olaPdtCode.Size = new System.Drawing.Size(106, 29);
            this.olaPdtCode.TabIndex = 1;
            this.olaPdtCode.Text = "รหัสสินค้า";
            this.olaPdtCode.TextAlign = System.Drawing.ContentAlignment.TopRight;
            // 
            // obtPdtCode
            // 
            this.obtPdtCode.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(222)));
            this.obtPdtCode.Location = new System.Drawing.Point(126, 16);
            this.obtPdtCode.Name = "obtPdtCode";
            this.obtPdtCode.Size = new System.Drawing.Size(224, 35);
            this.obtPdtCode.TabIndex = 2;
            // 
            // obtPdtName
            // 
            this.obtPdtName.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(222)));
            this.obtPdtName.Location = new System.Drawing.Point(126, 57);
            this.obtPdtName.Name = "obtPdtName";
            this.obtPdtName.Size = new System.Drawing.Size(224, 35);
            this.obtPdtName.TabIndex = 3;
            // 
            // obtPdtQty
            // 
            this.obtPdtQty.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(222)));
            this.obtPdtQty.Location = new System.Drawing.Point(126, 98);
            this.obtPdtQty.Name = "obtPdtQty";
            this.obtPdtQty.Size = new System.Drawing.Size(224, 35);
            this.obtPdtQty.TabIndex = 4;
            // 
            // obtPdtPri
            // 
            this.obtPdtPri.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(222)));
            this.obtPdtPri.Location = new System.Drawing.Point(126, 139);
            this.obtPdtPri.Name = "obtPdtPri";
            this.obtPdtPri.Size = new System.Drawing.Size(224, 35);
            this.obtPdtPri.TabIndex = 5;
            // 
            // ocmPdtSave
            // 
            this.ocmPdtSave.Location = new System.Drawing.Point(126, 199);
            this.ocmPdtSave.Name = "ocmPdtSave";
            this.ocmPdtSave.Size = new System.Drawing.Size(88, 33);
            this.ocmPdtSave.TabIndex = 9;
            this.ocmPdtSave.Text = "บันทึก";
            this.ocmPdtSave.UseVisualStyleBackColor = true;
            this.ocmPdtSave.Click += new System.EventHandler(this.ocmPdtSave_Click);
            // 
            // ocmPdtReset
            // 
            this.ocmPdtReset.Location = new System.Drawing.Point(220, 199);
            this.ocmPdtReset.Name = "ocmPdtReset";
            this.ocmPdtReset.Size = new System.Drawing.Size(96, 33);
            this.ocmPdtReset.TabIndex = 10;
            this.ocmPdtReset.Text = "รีเซ็ต";
            this.ocmPdtReset.UseVisualStyleBackColor = true;
            this.ocmPdtReset.Click += new System.EventHandler(this.ocmPdtReset_Click);
            // 
            // olaPdtName
            // 
            this.olaPdtName.AutoSize = true;
            this.olaPdtName.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(222)));
            this.olaPdtName.Location = new System.Drawing.Point(29, 57);
            this.olaPdtName.Name = "olaPdtName";
            this.olaPdtName.Size = new System.Drawing.Size(91, 29);
            this.olaPdtName.TabIndex = 6;
            this.olaPdtName.Text = "ชื่อสินค้า";
            this.olaPdtName.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // olaPdtQty
            // 
            this.olaPdtQty.AutoSize = true;
            this.olaPdtQty.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(222)));
            this.olaPdtQty.Location = new System.Drawing.Point(42, 101);
            this.olaPdtQty.Name = "olaPdtQty";
            this.olaPdtQty.Size = new System.Drawing.Size(78, 29);
            this.olaPdtQty.TabIndex = 7;
            this.olaPdtQty.Text = "จำนวน";
            this.olaPdtQty.TextAlign = System.Drawing.ContentAlignment.TopRight;
            // 
            // olaPdtPri
            // 
            this.olaPdtPri.AutoSize = true;
            this.olaPdtPri.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(222)));
            this.olaPdtPri.Location = new System.Drawing.Point(61, 142);
            this.olaPdtPri.Name = "olaPdtPri";
            this.olaPdtPri.Size = new System.Drawing.Size(59, 29);
            this.olaPdtPri.TabIndex = 8;
            this.olaPdtPri.Text = "ราคา";
            this.olaPdtPri.TextAlign = System.Drawing.ContentAlignment.TopRight;
            // 
            // ockSaveEvent
            // 
            this.ockSaveEvent.AutoSize = true;
            this.ockSaveEvent.Location = new System.Drawing.Point(407, 13);
            this.ockSaveEvent.Name = "ockSaveEvent";
            this.ockSaveEvent.Size = new System.Drawing.Size(172, 24);
            this.ockSaveEvent.TabIndex = 11;
            this.ockSaveEvent.Text = "บันทึกผ่าน WebHook";
            this.ockSaveEvent.UseVisualStyleBackColor = true;
            // 
            // wProduct
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1064, 675);
            this.Controls.Add(this.ockSaveEvent);
            this.Controls.Add(this.ocmPdtReset);
            this.Controls.Add(this.ocmPdtSave);
            this.Controls.Add(this.olaPdtPri);
            this.Controls.Add(this.olaPdtQty);
            this.Controls.Add(this.olaPdtName);
            this.Controls.Add(this.obtPdtPri);
            this.Controls.Add(this.obtPdtQty);
            this.Controls.Add(this.obtPdtName);
            this.Controls.Add(this.obtPdtCode);
            this.Controls.Add(this.olaPdtCode);
            this.Controls.Add(this.ogdPdt);
            this.Name = "wProduct";
            this.Text = "wProduct";
            ((System.ComponentModel.ISupportInitialize)(this.ogdPdt)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }


        #endregion

        private C1.Win.C1FlexGrid.C1FlexGrid ogdPdt;
        private System.Windows.Forms.Label olaPdtCode;
        private System.Windows.Forms.TextBox obtPdtCode;
        private System.Windows.Forms.TextBox obtPdtName;
        private System.Windows.Forms.TextBox obtPdtQty;
        private System.Windows.Forms.TextBox obtPdtPri;
        private System.Windows.Forms.Button ocmPdtSave;
        private System.Windows.Forms.Button ocmPdtReset;
        private System.Windows.Forms.Label olaPdtName;
        private System.Windows.Forms.Label olaPdtQty;
        private System.Windows.Forms.Label olaPdtPri;
        private System.Windows.Forms.CheckBox ockSaveEvent;
    }
}