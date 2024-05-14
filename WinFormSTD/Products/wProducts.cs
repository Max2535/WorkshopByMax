using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using WinFormSTD.Products;
using WinFormSTD.Services;

namespace WinFormSTD
{
    public partial class wProducts : Form
    {
        private wMain previousForm;
        public wProducts(wMain previousForm)
        {
            InitializeComponent();
            this.previousForm = previousForm;
            // Set the form style to None (removes border)
            //FormBorderStyle = FormBorderStyle.None;

            // Maximize the form
            //WindowState = FormWindowState.Maximized;
            LOAD_PDxList();
        }

        private void LOAD_PDxList(string tSearchPdtCode = "")
        {
            ogbPdt.Columns.Clear();
            //ogbPdt.Rows.Clear();
            //ogbPdt.Refresh();
            var aoPdt = new cProductService().C_GETaoProduct(tSearchPdtCode);
            ogbPdt.DataSource = aoPdt;
            ogbPdt.Columns[0].HeaderText = "รหัสสินค้า";
            ogbPdt.Columns[0].HeaderText = "ชื่อสินค้า";
            ogbPdt.Columns[2].HeaderText = "จำนวน";
            ogbPdt.Columns[2].DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleRight;
            ogbPdt.Columns[3].HeaderText = "ราคาขาย";
            ogbPdt.Columns[3].DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleRight;
            ogbPdt.Columns[4].HeaderText = "Image";
            ogbPdt.Columns[4].Visible = false;
            ogbPdt.CellFormatting += C_SETxCellFormat;
            // Add a button column to the DataGridView
            DataGridViewButtonColumn oBtnEditCol = new DataGridViewButtonColumn();
            oBtnEditCol.HeaderText = "";
            oBtnEditCol.Text = "Edit";
            oBtnEditCol.UseColumnTextForButtonValue = true;
            ogbPdt.Columns.Add(oBtnEditCol);

            // Add a button column to the DataGridView
            DataGridViewButtonColumn oBtnDelCol = new DataGridViewButtonColumn();
            oBtnDelCol.HeaderText = "";
            oBtnDelCol.Text = "Delete";
            oBtnDelCol.UseColumnTextForButtonValue = true;
            ogbPdt.Columns.Add(oBtnDelCol);

            // Handle the button click event
            ogbPdt.CellContentClick += (sender, e) =>
            {
                if (e.ColumnIndex == oBtnEditCol.Index && e.RowIndex >= 0)
                {
                    string tPdtCode = "";
                    foreach (DataGridViewRow oRow in ogbPdt.Rows)
                    {
                        tPdtCode = oRow.Cells["rtCode"].Value.ToString();
                    }
                    wAddProduct wAddPdt = new wAddProduct(tPdtCode);
                    wAddPdt.Show();
                }

                if (e.ColumnIndex == oBtnDelCol.Index && e.RowIndex >= 0)
                {
                    string tPdtCode = "";
                    foreach (DataGridViewRow oRow in ogbPdt.Rows)
                    {
                        tPdtCode = oRow.Cells["rtCode"].Value.ToString();
                    }
                    DialogResult result = MessageBox.Show($"คุณต้องการลบ {tPdtCode}?", "Confirm", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                    if (result == DialogResult.Yes)
                    {
                       var bChkDelete =  new cProductService().C_DELbProduct(tPdtCode);
                        if (bChkDelete)
                        {
                            MessageBox.Show("ลบข้อมูลสำเสร็จ", "success", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                        else
                        {
                            MessageBox.Show("ลบข้อมูลไม่สำเสร็จ", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        }
                    }
                    else
                    {
                        // ใส่โค้ดที่ต้องการให้ทำงานเมื่อผู้ใช้กด "No" ที่กล่องข้อความ
                    }
                }
            };

        }

        private void C_SETxCellFormat(object sender, DataGridViewCellFormattingEventArgs e)
        {
            // Check if the current column is the one you want to format (e.g., column index 1)
            if (e.ColumnIndex == 3 && e.Value != null)
            {
                // Format the cell value as currency
                if (double.TryParse(e.Value.ToString(), out double value))
                {
                    e.Value = value.ToString("C"); // Format as currency
                    e.FormattingApplied = true; // Set this to true to indicate that the formatting is applied
                }
            }
        }

        private void ocmAddPdt_Click(object sender, EventArgs e)
        {
            wAddProduct wAddPdt = new wAddProduct();
            wAddPdt.Show();
        }

        private void ocmSearchPdt_Click(object sender, EventArgs e)
        {
            string tSearchPdtCode = otbPdtCode.Text.ToLower(); // Convert search query to lowercase for case-insensitive search
            LOAD_PDxList(tSearchPdtCode);
        }

        private void ocmBack_Click(object sender, EventArgs e)
        {
            // Show the previous form and close the current form
            previousForm.Show();
            this.Close();
        }
    }
}
