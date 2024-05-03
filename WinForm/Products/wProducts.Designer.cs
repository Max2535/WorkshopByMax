namespace WinForm
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
            dataGridView1 = new System.Windows.Forms.DataGridView();
            label1 = new System.Windows.Forms.Label();
            textBox1 = new System.Windows.Forms.TextBox();
            button1 = new System.Windows.Forms.Button();
            button2 = new System.Windows.Forms.Button();
            pcloader = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)dataGridView1).BeginInit();
            ((System.ComponentModel.ISupportInitialize)pcloader).BeginInit();
            SuspendLayout();
            // 
            // dataGridView1
            // 
            dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridView1.Location = new System.Drawing.Point(12, 98);
            dataGridView1.Name = "dataGridView1";
            dataGridView1.RowHeadersWidth = 62;
            dataGridView1.RowTemplate.Height = 28;
            dataGridView1.Size = new System.Drawing.Size(776, 340);
            dataGridView1.TabIndex = 0;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new System.Drawing.Point(42, 32);
            label1.Name = "label1";
            label1.Size = new System.Drawing.Size(72, 25);
            label1.TabIndex = 1;
            label1.Text = "ชื่อสินค้า";
            // 
            // textBox1
            // 
            textBox1.Location = new System.Drawing.Point(124, 29);
            textBox1.Name = "textBox1";
            textBox1.Size = new System.Drawing.Size(354, 31);
            textBox1.TabIndex = 2;
            // 
            // button1
            // 
            button1.Location = new System.Drawing.Point(485, 28);
            button1.Name = "button1";
            button1.Size = new System.Drawing.Size(112, 34);
            button1.TabIndex = 3;
            button1.Text = "ค้นหา";
            button1.UseVisualStyleBackColor = true;
            // 
            // button2
            // 
            button2.Location = new System.Drawing.Point(602, 29);
            button2.Name = "button2";
            button2.Size = new System.Drawing.Size(112, 34);
            button2.TabIndex = 4;
            button2.Text = "เพิ่มสินค้า";
            button2.UseVisualStyleBackColor = true;
            button2.Click += button2_Click;
            // 
            // pcloader
            // 
            pcloader.Image = Properties.Resources.Loading;
            pcloader.Location = new System.Drawing.Point(160, -13);
            pcloader.Name = "pcloader";
            pcloader.Size = new System.Drawing.Size(475, 480);
            pcloader.SizeMode = System.Windows.Forms.PictureBoxSizeMode.AutoSize;
            pcloader.TabIndex = 5;
            pcloader.TabStop = false;
            pcloader.Visible = false;
            // 
            // wProducts
            // 
            AutoScaleDimensions = new System.Drawing.SizeF(10F, 25F);
            AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            ClientSize = new System.Drawing.Size(800, 450);
            Controls.Add(pcloader);
            Controls.Add(button2);
            Controls.Add(button1);
            Controls.Add(textBox1);
            Controls.Add(label1);
            Controls.Add(dataGridView1);
            Name = "wProducts";
            Text = "รายการสินค้า";
            ((System.ComponentModel.ISupportInitialize)dataGridView1).EndInit();
            ((System.ComponentModel.ISupportInitialize)pcloader).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.PictureBox pcloader;
    }
}