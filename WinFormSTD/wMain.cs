using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;
using WinFormSTD.Stock;
using static System.Windows.Forms.DataFormats;

namespace WinFormSTD
{
    public partial class wMain : Form
    {
        public static bool isLoad = true;
        public wMain()
        {
            InitializeComponent();
            // Set the form style to None (removes border)
            //FormBorderStyle = FormBorderStyle.None;

            // Maximize the form
            //WindowState = FormWindowState.Maximized;
        }

        private void ocmProducts_Click(object sender, EventArgs e)
        {
            wProducts oPdt = new wProducts(this);
            oPdt.Show();
            this.Hide(); // Hide the current form (Form1)
        }

        private void ocmSelling_Click(object sender, EventArgs e)
        {
            wSelling oSell = new wSelling();
            oSell.Show();
        }

        private void ocmOrders_Click(object sender, EventArgs e)
        {
            wOrders oOrd = new wOrders();
            oOrd.Show();
        }

        private void ocmSearchOrdNo_Click(object sender, EventArgs e)
        {
            wStock oStock = new wStock();
            oStock.Show();
        }

        private void ocmClose_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
