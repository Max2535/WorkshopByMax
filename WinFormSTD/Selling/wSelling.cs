using BuildingBlocks.Models.WebService.Request.ShopOnline;
using Microsoft.EntityFrameworkCore.Metadata.Internal;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Xml.Linq;
using WinFormSTD.Services;

namespace WinFormSTD
{
    public partial class wSelling : Form
    {
        private List<cmlDataCheckOut> aoCart = new List<cmlDataCheckOut>();
        private DataTable aoDataTable;
        public wSelling()
        {
            InitializeComponent();
            LOAD_SALExList();

            // Create a new DataTable
            aoDataTable = new DataTable();

            // Add columns to the DataTable
            aoDataTable.Columns.Add("รหัสสินค้า", typeof(string));
            aoDataTable.Columns.Add("จำนวน", typeof(int));
            aoDataTable.Columns.Add("ราคารวม", typeof(decimal));
            // Set the form style to None (removes border)
            //FormBorderStyle = FormBorderStyle.None;

            // Maximize the form
            //WindowState = FormWindowState.Maximized;
            ogbCartPdt.DataSource = aoDataTable;
        }
        private void LOAD_SALExList(string tSearchPdtCode = "")
        {
            ogbSalePdt.Columns.Clear();
            var aoPdt = new cProductService().C_GETaoProduct(tSearchPdtCode);
            ogbSalePdt.DataSource = aoPdt;
            ogbSalePdt.Columns[0].HeaderText = "รหัสสินค้า";
            ogbSalePdt.Columns[0].HeaderText = "ชื่อสินค้า";
            ogbSalePdt.Columns[2].HeaderText = "จำนวน";
            ogbSalePdt.Columns[2].Visible = false;
            ogbSalePdt.Columns[2].DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleRight;
            ogbSalePdt.Columns[3].HeaderText = "ราคาขาย";
            ogbSalePdt.Columns[3].DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleRight;
            ogbSalePdt.Columns[4].HeaderText = "Image";
            ogbSalePdt.Columns[4].Visible = false;
            ogbSalePdt.CellFormatting += C_SETxCellFormat;
            // Add a button column to the DataGridView
            DataGridViewButtonColumn oBtnDelCol = new DataGridViewButtonColumn();
            oBtnDelCol.HeaderText = "";
            oBtnDelCol.Text = "Add to Cart";
            oBtnDelCol.UseColumnTextForButtonValue = true;
            ogbSalePdt.Columns.Add(oBtnDelCol);

            // Handle the button click event
            ogbSalePdt.CellContentClick += (sender, e) =>
            {
                if (e.ColumnIndex == oBtnDelCol.Index && e.RowIndex >= 0)
                {
                    string tPdtCode = "";
                    int nQty = 0;
                    decimal nPri = 0;
                    foreach (DataGridViewRow oRow in ogbSalePdt.Rows)
                    {
                        if (oRow.Index == e.RowIndex)
                        {
                            tPdtCode = oRow.Cells["rtCode"].Value.ToString();
                            nQty = Convert.ToInt32(oRow.Cells["rnQty"].Value.ToString());
                            nPri = Convert.ToDecimal(oRow.Cells["rcPri"].Value.ToString());
                        }
                    }
                    DialogResult result = MessageBox.Show($"คุณต้องการเพิ่ม {tPdtCode}?", "Confirm", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                    if (result == DialogResult.Yes)
                    {
                        var oCart = new cmlDataCheckOut
                        {
                            ptCode = tPdtCode,
                            pnQty = 1,
                            pnPri = nPri * nQty
                        };
                        aoCart.Add(oCart);

                        aoDataTable.Rows.Add(oCart.ptCode, oCart.pnQty, oCart.pnPri);

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

        private void ocmSaleSearchPdtCode_Click(object sender, EventArgs e)
        {
            string tSearchPdtCode = otbSalePdtCode.Text.ToLower(); // Convert search query to lowercase for case-insensitive search
            LOAD_SALExList(tSearchPdtCode);
        }

        private void ocmCheckOut_Click(object sender, EventArgs e)
        {
            List<cmlDataCheckOut> aoCart = new List<cmlDataCheckOut>();
            foreach (DataRow oRow in aoDataTable.Rows)
            {
                aoCart.Add(new cmlDataCheckOut
                {
                    ptCode = oRow["รหัสสินค้า"].ToString(),
                    pnQty = Convert.ToInt32(oRow["จำนวน"].ToString()),
                    pnPri = Convert.ToDecimal(oRow["ราคารวม"].ToString())
            });
            }
            var bChkChackOut = new cProductService().C_SalebChackOut(aoCart);

            if (bChkChackOut)
            {
                MessageBox.Show("สั่งซื้อสำเสร็จ", "success", MessageBoxButtons.OK, MessageBoxIcon.Information);
                this.Close();
            }
            else
            {
                MessageBox.Show("สั่งซื้อไม่สำเสร็จ", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
    }
}
