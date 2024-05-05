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
        public wProducts()
        {
            InitializeComponent();
            LoadDataToDataGridView();
        }

        private void LoadDataToDataGridView()
        {
            //pcloader.Visible = true;
            //pcloader.Dock = DockStyle.Fill;
            //using (var context = new cDbContext())
            //{
            //    var data = context.TSOLMProducts.ToList();

            //    dataGridView1.DataSource = data;

            //    dataGridView1.Columns[0].HeaderText = "รหัสสินค้า";
            //    pcloader.Visible = false;
            //}

            var data = cProductService.C_GETaoProduct();
            dataGridView1.DataSource = data;

            dataGridView1.Columns[0].HeaderText = "รหัสสินค้า";

        }

        private void ocmResetPdt_Click(object sender, EventArgs e)
        {
            wAddProduct wAddPdt = new wAddProduct();
            wAddPdt.Show();
        }
    }
}
