using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using WinForm.Services;

namespace WinForm.Products
{
    public partial class wAddProduct : Form
    {
        public wAddProduct()
        {
            InitializeComponent();
        }

        private void ocmSavePdt_Click(object sender, EventArgs e)
        {
            string tPdtCode = obtPdtCode.Text;
            string tPdtName = obtPdtName.Text;
            int nPdtcQty = Convert.ToInt32(obtPdtQty.Text);
            decimal cPdtPri = Convert.ToDecimal(obtPdtPri.Text);

            ProductService.addProduct(new WorkShopWebService.Models.WebService.Request.ShopOnline.cmlDataProduct
            {
                ptCode = tPdtCode,
                ptName =tPdtName,
                pnQty = nPdtcQty,
                pnPri = cPdtPri,
            });

        }
    }
}
