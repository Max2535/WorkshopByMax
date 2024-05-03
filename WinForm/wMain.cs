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
using static System.Windows.Forms.DataFormats;

namespace WinForm
{
    public partial class wMain : Form
    {
        public static bool isLoad=true;
        public wMain()
        {
            InitializeComponent();
        }

        private void ocmProducts_Click(object sender, EventArgs e)
        {
            wProducts wPdt = new wProducts();
            wPdt.Show();
        }

        private void ocmSelling_Click(object sender, EventArgs e)
        {
            wSelling wSell = new wSelling();
            wSell.Show();
        }

        private void ocmOrders_Click(object sender, EventArgs e)
        {
            wOrders wOrd = new wOrders();
            wOrd.Show();
        }
    }
}
