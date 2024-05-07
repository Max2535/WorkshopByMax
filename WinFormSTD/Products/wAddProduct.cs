using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using WinFormSTD.Services;

namespace WinFormSTD.Products
{
    public partial class wAddProduct : Form
    {
        private bool bModeEdit = false;
        public wAddProduct(string ptPdtCode="")
        {
            InitializeComponent();
            obtPdtCode.Text = ptPdtCode;
            if (!string.IsNullOrEmpty(ptPdtCode))
            {
                var aoPdt = new cProductService().C_GETaoProduct(ptPdtCode);
                if (aoPdt.Count==1)
                {
                    bModeEdit = true;
                    var oPdt = aoPdt[0];
                    obtPdtCode.Text = oPdt.rtCode;
                    obtPdtName.Text = oPdt.rtName;
                    obtPdtQty.Text = oPdt.rnQty.ToString();
                    obtPdtPri.Text = oPdt.rcPri.ToString();
                }
            }
        }

        public static byte[] W_GETanImgByte(Bitmap bitmap)
        {
            using (MemoryStream stream = new MemoryStream())
            {
                // Save the bitmap to the memory stream in PNG format
                bitmap.Save(stream, System.Drawing.Imaging.ImageFormat.Png);

                // Get the byte array from the memory stream
                return stream.ToArray();
            }
        }

        private void ocmSavePdt_Click(object sender, EventArgs e)
        {
            //TODO:validation
            string tPdtCode = obtPdtCode.Text;
            if (string.IsNullOrEmpty(tPdtCode))
            {
                MessageBox.Show("กรุณาระบุ รหัสสินค้า", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            string tPdtName = obtPdtName.Text;
            if (string.IsNullOrEmpty(tPdtName))
            {
                MessageBox.Show("กรุณาระบุ ชื่อสินค้า", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            int nPdtcQty = 0;
            if (!int.TryParse(obtPdtQty.Text,out nPdtcQty))
            {
                MessageBox.Show("จำนวนสินค้าไม่ถูกต้อง", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            decimal cPdtPri = 0;
            if (!decimal.TryParse(obtPdtPri.Text, out cPdtPri))
            {
                MessageBox.Show("ราคาสินค้าไม่ถูกต้อง", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            // Convert bitmap to byte array
            byte[] byteArray = W_GETanImgByte(new System.Drawing.Bitmap(opbImgPdt.Image));
            string base64String = Convert.ToBase64String(byteArray);

            // Write the bytes (as a Base64 string) to the textbox
            string tImgBase64 = base64String;
            bool bChkAddProduct = false;
            if (bModeEdit)
            {
                bChkAddProduct = new cProductService().C_UPDbProduct(new BuildingBlocks.Models.WebService.Request.ShopOnline.cmlDataProduct
                {
                    ptCode = tPdtCode,
                    ptName = tPdtName,
                    pnQty = nPdtcQty,
                    pnPri = cPdtPri,
                    ptImgPdt = tImgBase64,
                });
            }
            else
            {
                bChkAddProduct = new cProductService().C_ADDbProduct(new BuildingBlocks.Models.WebService.Request.ShopOnline.cmlDataProduct
                {
                    ptCode = tPdtCode,
                    ptName = tPdtName,
                    pnQty = nPdtcQty,
                    pnPri = cPdtPri,
                    ptImgPdt = tImgBase64,
                });
            }
           
            if (bChkAddProduct)
            {
                MessageBox.Show("บันทักข้อมูลสำเสร็จ", "success", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else
            {
                MessageBox.Show("บันทึกข้อมูลไม่สำเสร็จ", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

        }

        private void ocmResetPdt_Click(object sender, EventArgs e)
        {
            obtPdtCode.Text = "";
            obtPdtName.Text = "";
            obtPdtQty.Text = "";
            obtPdtPri.Text = "";
            opbImgPdt.Image = Properties.Resources.ImageDefault;
        }

        private void opbImgPdt_Click(object sender, EventArgs e)
        {
            using (OpenFileDialog openFileDialog = new OpenFileDialog())
            {
                openFileDialog.Filter = "Image Files (*.jpg; *.jpeg; *.png; *.bmp)|*.jpg; *.jpeg; *.png; *.bmp|All files (*.*)|*.*";
                openFileDialog.FilterIndex = 1;
                openFileDialog.RestoreDirectory = true;

                if (openFileDialog.ShowDialog() == DialogResult.OK)
                {
                    try
                    {
                        // Get the selected file name and display in PictureBox
                        string selectedFilePath = openFileDialog.FileName;
                        opbImgPdt.Image = new System.Drawing.Bitmap(selectedFilePath);
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show("An error occurred while uploading the image: " + ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
            }
        }
    }
}
