using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WinFormSTD.Stock
{
    public partial class wStock : Form
    {
        public wStock()
        {
            InitializeComponent();
            // Set the form style to None (removes border)
            FormBorderStyle = FormBorderStyle.None;

            // Maximize the form
            WindowState = FormWindowState.Maximized;
        }
    }
}
