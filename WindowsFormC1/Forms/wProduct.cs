using C1.Win.C1FlexGrid;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Windows.Forms;
using WindowsFormC1.Models.WebService.Request.ShopOnline;
using WindowsFormC1.Models.WebService.Response.ShopOnline;
using WindowsFormC1.Services;

namespace WindowsFormC1
{
    public partial class wProduct : Form
    {
        bool bModeEdit = false;
        public wProduct()
        {
            InitializeComponent();
            C_GETxPdtData();
        }

        private void C_GETxPdtData()
        {
            List<cmlResProduct> aoPdt = new cProductService().C_GETaoProduct();
            //Clear Row
            ogdPdt.Rows.Count = ogdPdt.Rows.Fixed;
            //ogdPdt.Cols["ockColSel"].AllowEditing = false;
            ogdPdt.Cols["tColPdtCode"].AllowEditing = false;
            ogdPdt.Cols["tColPdtName"].AllowEditing = false;
            ogdPdt.Cols["nColPdtQty"].AllowEditing = false;
            ogdPdt.Cols["cColPdtPri"].AllowEditing = false;
            ogdPdt.Cols["ocmColButEdit"].AllowEditing = false;
            ogdPdt.Cols["ocmColButDel"].AllowEditing = false;
            foreach (cmlResProduct oPdt in aoPdt)
            {
                ogdPdt.Rows.Add();
                int nIndex = ogdPdt.Rows.Count - ogdPdt.Rows.Fixed;
                CellStyle oCellStyle;
                oCellStyle = ogdPdt.Styles.Add("Receive");
                oCellStyle.DataType = typeof(Boolean);
                ogdPdt.SetCellStyle(nIndex, ogdPdt.Cols["ockColSel"].Index, oCellStyle);
                ogdPdt.SetData(nIndex, ogdPdt.Cols["ockColSel"].Index, false);

                ogdPdt.SetData(nIndex, "tColPdtCode", oPdt.rtCode);
                ogdPdt.SetData(nIndex, "tColPdtName", oPdt.rtName);
                ogdPdt.SetData(nIndex, "nColPdtQty", oPdt.rnQty);
                ogdPdt.SetData(nIndex, "cColPdtPri", oPdt.rcPri);
                ogdPdt.SetCellImage(nIndex, "ocmColButEdit", Properties.Resources.Edit_32);
                ogdPdt.SetCellImage(nIndex, "ocmColButDel", Properties.Resources.Delete_32);

                oCellStyle = ogdPdt.Styles.Add("Edit");
                oCellStyle.BackColor = Color.Yellow;
                ogdPdt.SetCellStyle(nIndex, "ocmColButEdit", oCellStyle);

                oCellStyle = ogdPdt.Styles.Add("Delete");
                oCellStyle.BackColor = Color.Red;
                ogdPdt.SetCellStyle(nIndex, "ocmColButDel", oCellStyle);
            }
            W_SETxColGrid(ogdPdt);
            //Activate merge mode:
            ogdPdt.AllowMerging = C1.Win.C1FlexGrid.AllowMergingEnum.Default;
        }
        private void ogdPdt_CellChecked(object sender, RowColEventArgs e)
        {
            try
            {
                if (e.Col == ogdPdt.Cols["ockColSel"].Index)
                {
                    if (Convert.ToBoolean(ogdPdt.GetData(e.Row, e.Col)) == true)
                    {
                        string tPdtCode = ogdPdt.GetData(e.Row, ogdPdt.Cols["tColPdtCode"].Index).ToString();
                        MessageBox.Show($"{tPdtCode}", "Info", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        return;
                    }
                }
            }
            catch (Exception oEx)
            {
               
            }
            finally
            {

            }
        }

        private void ogdPdt_BeforeEdit(object sender, RowColEventArgs e)
        {
            //TODO:
            throw new NotImplementedException();
        }

        private void ogdPdt_EnterCell(object sender, EventArgs e)
        {
            try
            {
                if (ogdPdt.Col == ogdPdt.Cols["ocmColButEdit"].Index)
                {
                    //Update
                    if (ogdPdt.GetData(ogdPdt.Row, ogdPdt.Cols["tColPdtCode"].Index)?.ToString() != "1")
                    {
                        ogdPdt.FocusRect = FocusRectEnum.Light;

                        obtPdtCode.Text = ogdPdt.GetData(ogdPdt.Row, ogdPdt.Cols["tColPdtCode"].Index).ToString();
                        obtPdtName.Text = ogdPdt.GetData(ogdPdt.Row, ogdPdt.Cols["tColPdtName"].Index).ToString();
                        obtPdtQty.Text = ogdPdt.GetData(ogdPdt.Row, ogdPdt.Cols["nColPdtQty"].Index).ToString();
                        obtPdtPri.Text = ogdPdt.GetData(ogdPdt.Row, ogdPdt.Cols["cColPdtPri"].Index).ToString();

                        bModeEdit = true;
                        return;
                    }
                }
                if (ogdPdt.Col == ogdPdt.Cols["ocmColButDel"].Index)
                {
                    //Delete
                    if (ogdPdt.GetData(ogdPdt.Row, ogdPdt.Cols["tColPdtCode"].Index)?.ToString() != "1")
                    {
                        ogdPdt.FocusRect = FocusRectEnum.Light;
                        if (ogdPdt.GetData(ogdPdt.Row, ogdPdt.Cols["tColPdtCode"].Index) == null) return;
                        string tPdtCode = ogdPdt.GetData(ogdPdt.Row, ogdPdt.Cols["tColPdtCode"].Index).ToString();
                        bool bChkAddProduct = new cProductService().C_DELbProduct(tPdtCode);

                        if (bChkAddProduct)
                        {
                            MessageBox.Show($"ลบ {tPdtCode} ข้อมูลสำเสร็จ", "success", MessageBoxButtons.OK, MessageBoxIcon.Information);
                            C_GETxPdtData();
                        }
                        else
                        {
                            MessageBox.Show($"ลบ {tPdtCode} ข้อมูลไม่สำเสร็จ", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        }
                        return;
                    }
                }
            }
            catch (Exception)
            {

            }

        }

        private void W_SETxColGrid(C1FlexGrid poGD)
        {
            int nWidth = poGD.Width;
            poGD.Cols["tColPdtCode"].Caption = "Test Code";
            poGD.Cols["ockColSel"].Width = nWidth * 8 / 100;
            poGD.Cols["tColPdtCode"].Width = nWidth * 12 / 100;
            poGD.Cols["tColPdtName"].Width = nWidth * 12 / 100;
            poGD.Cols["nColPdtQty"].Width = nWidth * 12 / 100;
            poGD.Cols["cColPdtPri"].Width = nWidth * 12 / 100;

            poGD.Cols["ocmColButEdit"].DataType = typeof(Image);
            poGD.Cols["ocmColButEdit"].ImageAlign = ImageAlignEnum.CenterCenter;
            poGD.Cols["ocmColButDel"].DataType = typeof(Image);
            poGD.Cols["ocmColButDel"].ImageAlign = ImageAlignEnum.CenterCenter;

            poGD.Cols["nColPdtQty"].Format = "###,###,##0";
            poGD.Cols["cColPdtPri"].Format = "###,###,##0";          

        }

        private void ocmPdtSave_Click(object sender, EventArgs e)
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
            if (!int.TryParse(obtPdtQty.Text, out nPdtcQty))
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

            bool bChkProduct = false;
            if (bModeEdit)
            {
                bChkProduct = new cProductService().C_UPDbProduct(new cmlDataProduct
                {
                    ptCode = tPdtCode,
                    ptName = tPdtName,
                    pnQty = nPdtcQty,
                    pnPri = cPdtPri,
                });
            }
            else
            {
                bChkProduct = new cProductService().C_ADDbProduct(new cmlDataProduct
                {
                    ptCode = tPdtCode,
                    ptName = tPdtName,
                    pnQty = nPdtcQty,
                    pnPri = cPdtPri,
                });
            }

            if (bChkProduct)
            {
                MessageBox.Show("บันทึกข้อมูลสำเสร็จ", "success", MessageBoxButtons.OK, MessageBoxIcon.Information);
                C_CLSxText();
                C_GETxPdtData();
            }
            else
            {
                MessageBox.Show("บันทึกข้อมูลไม่สำเสร็จ", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void C_CLSxText()
        {
            obtPdtCode.Text = "";
            obtPdtName.Text = "";
            obtPdtQty.Text = "";
            obtPdtPri.Text = "";
        }

        private void ocmPdtReset_Click(object sender, EventArgs e)
        {
            C_CLSxText();
            C_GETxPdtData();
        }
    }
}
