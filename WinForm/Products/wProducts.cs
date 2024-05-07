using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using WinForm.Class;
using WinForm.Models;
using WinForm.Products;
using WinForm.Services;

namespace WinForm
{
    public partial class wProducts : Form
    {
        private wMain previousForm;
        public wProducts(wMain previousForm)
        {
            InitializeComponent();
            this.previousForm = previousForm;
            // Set the form style to None (removes border)
            FormBorderStyle = FormBorderStyle.None;

            // Maximize the form
            WindowState = FormWindowState.Maximized;
            LOAD_PDxList();
        }

        private void LOAD_PDxList(string tSearchPdtCode = "")
        {
            //pcloader.Visible = true;
            //pcloader.Dock = DockStyle.Fill;
            //pcloader.Visible = false;

            var data = new cProductService().C_GETaoProduct(tSearchPdtCode);
            ogbPdt.DataSource = data;
            ogbPdt.Columns[0].HeaderText = "รหัสสินค้า";
            ogbPdt.Columns[1].HeaderText = "ชื่อสินค้า";
            ogbPdt.Columns[2].HeaderText = "จำนวน";
            ogbPdt.Columns[2].DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleRight;
            ogbPdt.Columns[3].HeaderText = "ราคาขาย";
            ogbPdt.Columns[3].DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleRight;
            ogbPdt.Columns[4].HeaderText = "Image";
            ogbPdt.CellFormatting += C_SETxCellFormat;
            // Add a button column to the DataGridView
            DataGridViewButtonColumn oBtnCol = new DataGridViewButtonColumn();
            oBtnCol.HeaderText = "Actions";
            oBtnCol.Text = "Edit";
            oBtnCol.UseColumnTextForButtonValue = true;
            ogbPdt.Columns.Add(oBtnCol);

            // Handle the button click event
            ogbPdt.CellContentClick += (sender, e) =>
            {
                if (e.ColumnIndex == oBtnCol.Index && e.RowIndex >= 0)
                {
                    // Handle button click action
                    // You can access the row data using e.RowIndex
                    
                    wAddProduct wAddPdt = new wAddProduct();
                    // Set the property value in Form
                    DataGridViewRow oRow = ogbPdt.Rows[e.ColumnIndex];
                    wAddPdt.ptPdtCode = e.ColumnIndex+"";
                    wAddPdt.Show();
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

            string tSearchPdtCode = obtPdtCode.Text.ToLower(); // Convert search query to lowercase for case-insensitive search
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
