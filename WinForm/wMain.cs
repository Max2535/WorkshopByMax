using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.DataFormats;

namespace WinForm
{
    public partial class wMain : Form
    {
        public wMain()
        {
            InitializeComponent();
        }

        private void ocmProducts_Click(object sender, EventArgs e)
        {
            wProducts wPdt = new wProducts();
            //wPdt. += wProducts_DataReceived;
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

        private void wProducts_DataReceived(object sender, DataReceivedEventArgs e)
        {
            // รับข้อมูลที่ส่งมาจาก Form ใหม่และแสดงใน MessageBox
            MessageBox.Show($"Data received: {e.Data}");
        }
    }
}
