using C1.Win.C1FlexGrid;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using WindowsFormC1.Models.WebService.Response.ShopOnline;
using WindowsFormC1.Services;

namespace WindowsFormC1.Forms
{
    public partial class wOrder : Form
    {
        public wOrder()
        {
            InitializeComponent();
            List<cmlResOrder>  aoOrder = cStockService.C_GETaoOrder();
            ogdOrd.DataSource = aoOrder;
            // Specify the type of merging allowed
            ogdOrd.AllowMerging = C1.Win.C1FlexGrid.AllowMergingEnum.Free;

            // Specify the column on which merging is allowed
            ogdOrd.Cols[2].AllowMerging = true;

            // Set forecolor for the alternate row
            ogdOrd.Styles["Alternate"].ForeColor = Color.White;

            // Set backcolor for the alternate row
            ogdOrd.Styles["Alternate"].BackColor = Color.CadetBlue;
        }
    }
}
