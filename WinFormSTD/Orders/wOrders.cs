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

namespace WinFormSTD
{
    public partial class wOrders : Form
    {
        public wOrders()
        {
            InitializeComponent();
            LOAD_ORDxList();
            // Set the form style to None (removes border)
            //FormBorderStyle = FormBorderStyle.None;

            // Maximize the form
            //WindowState = FormWindowState.Maximized;
        }

        private void LOAD_ORDxList(string tSearchPdtCode = "")
        {
            ogbOrd.Columns.Clear();
            var aoOrd = new cOrdertService().C_GETaoOrd();
            ogbOrd.DataSource = aoOrd;
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
