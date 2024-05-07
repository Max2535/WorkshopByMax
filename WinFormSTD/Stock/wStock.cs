using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using WinFormSTD.Services;

namespace WinFormSTD.Stock
{
    public partial class wStock : Form
    {
        public wStock()
        {
            InitializeComponent();
            LOAD_STKxList();
            // Set the form style to None (removes border)
            //FormBorderStyle = FormBorderStyle.None;

            // Maximize the form
            //WindowState = FormWindowState.Maximized;
        }

        private void LOAD_STKxList(string tSearchPdtCode = "")
        {
            ogdSKPdt.Columns.Clear();
            var aoStk = new cStockService().C_GETaoStock();
            ogdSKPdt.DataSource = aoStk;
            /*ogbSalePdt.Columns[0].HeaderText = "รหัสสินค้า";
            ogbSalePdt.Columns[0].HeaderText = "ชื่อสินค้า";
            ogbSalePdt.Columns[2].HeaderText = "จำนวน";
            ogbSalePdt.Columns[2].Visible = false;
            ogbSalePdt.Columns[2].DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleRight;
            ogbSalePdt.Columns[3].HeaderText = "ราคาขาย";
            ogbSalePdt.Columns[3].DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleRight;
            ogbSalePdt.Columns[4].HeaderText = "Image";
            ogbSalePdt.Columns[4].Visible = false;
            ogbSalePdt.CellFormatting += C_SETxCellFormat;*/
        }
    }
}
