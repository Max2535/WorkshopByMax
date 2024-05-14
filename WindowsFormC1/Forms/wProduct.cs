using C1.Win.C1FlexGrid;
using C1.Win.Interop;
using RabbitMQ.Client;
using RabbitMQ.Client.Events;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Drawing;
using System.Runtime.InteropServices;
using System.Runtime.Remoting.Channels;
using System.Text;
using System.Threading;
using System.Threading.Channels;
using System.Threading.Tasks;
using System.Windows.Forms;
using WindowsFormC1.Models.WebService.Request.ShopOnline;
using WindowsFormC1.Models.WebService.Response.ShopOnline;
using WindowsFormC1.Services;

namespace WindowsFormC1
{
    public partial class wProduct : Form
    {
        private ConnectionFactory oFactory;
        private IConnection oConnection;
        private IModel oChannel;
        string tExchangeName = "ExchangeName1";
        string tQueueName = "MaxQueueAddPdt";
        string tRoutingKey = "";
        bool bModeEdit = false;
        ThreadStart oStart;
        Thread oTherad;

        public wProduct()
        {
            InitializeComponent();
            //TODO get config
            oFactory = new ConnectionFactory()
            {
                HostName = "27.254.239.245",
                UserName = "Admin",
                Password = "Admin",
                //Port = 15672,
                VirtualHost = "Probation_Arm"
            };

            try
            {
                //while (true)
                //{
                //    new Thread(() => C_PRCxinitRabbitMQ()).Start();
                //    Task.Delay(10000).Wait();
                //}

                new Thread(() => C_PRCxinitRabbitMQ()).Start();

                oStart = () => C_PRCxinitRabbitMQ();
                oTherad = new Thread(oStart);
                oTherad.Name = "PD_SAVE";
                oTherad.IsBackground = true;
                oTherad.Start();
            }
            catch (Exception oEx)
            {
                Console.WriteLine(oEx.Message);
            }
            C_GETxPdtData();
        }

        private void C_PRCxinitRabbitMQ()
        {
            try
            {
                using (IConnection oConn = oFactory.CreateConnection())
                {
                    using (IModel oChannel = oConn.CreateModel())
                    {
                        oChannel.ExchangeDeclare(exchange: tExchangeName, type: ExchangeType.Fanout);
                        oChannel.QueueDeclare(queue: "PD_SAVE", durable: true, exclusive: false, autoDelete: false, arguments: null);
                        oChannel.QueueBind(queue: "PD_SAVE", exchange: tExchangeName, routingKey: tRoutingKey);

                        while (true)
                        {
                            var oConsumer = new EventingBasicConsumer(oChannel);
                            oConsumer.Received += (model, ea) =>
                            {
                                var body = ea.Body.ToArray();
                                var message = Encoding.UTF8.GetString(body);
                                Invoke(new Action(() =>
                                {
                                    Console.WriteLine(message);
                                    C_GETxPdtData();
                                    MessageBox.Show("บันทึกข้อมูลสำเสร็จ", "success", MessageBoxButtons.OK, MessageBoxIcon.Information);
                                }));
                            };

                            oChannel.BasicConsume(queue: "PD_SAVE", autoAck: true, consumer: oConsumer);
                        }
                    }
                }

                

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }

        private void C_PRCxSendToRabbitMQ(cmlDataProduct poPdt)
        {

            try
            {
                using (IConnection oConn = oFactory.CreateConnection())
                {
                    using (IModel oChannel = oConn.CreateModel())
                    {
                        string tMsgJson = Newtonsoft.Json.JsonConvert.SerializeObject(poPdt);
                        oChannel.QueueDeclare(tQueueName, true, false, false, null);
                        var oBody = Encoding.UTF8.GetBytes(tMsgJson);
                        oChannel.BasicPublish("", tQueueName, false, null, oBody);
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            
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
            // Specify the type of merging allowed
            ogdPdt.AllowMerging = C1.Win.C1FlexGrid.AllowMergingEnum.Free;
            // Specify the column on which merging is allowed
            ogdPdt.Cols[3].AllowMerging = true;
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

                        otbPdtCode.Text = ogdPdt.GetData(ogdPdt.Row, ogdPdt.Cols["tColPdtCode"].Index).ToString();
                        otbPdtName.Text = ogdPdt.GetData(ogdPdt.Row, ogdPdt.Cols["tColPdtName"].Index).ToString();
                        otbPdtQty.Text = ogdPdt.GetData(ogdPdt.Row, ogdPdt.Cols["nColPdtQty"].Index).ToString();
                        otbPdtPri.Text = ogdPdt.GetData(ogdPdt.Row, ogdPdt.Cols["cColPdtPri"].Index).ToString();

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
            string tPdtCode = otbPdtCode.Text;
            if (string.IsNullOrEmpty(tPdtCode))
            {
                MessageBox.Show("กรุณาระบุ รหัสสินค้า", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            string tPdtName = otbPdtName.Text;
            if (string.IsNullOrEmpty(tPdtName))
            {
                MessageBox.Show("กรุณาระบุ ชื่อสินค้า", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            int nPdtcQty = 0;
            if (!int.TryParse(otbPdtQty.Text, out nPdtcQty))
            {
                MessageBox.Show("จำนวนสินค้าไม่ถูกต้อง", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            decimal cPdtPri = 0;
            if (!decimal.TryParse(otbPdtPri.Text, out cPdtPri))
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
                if (ockSaveEvent.Checked)
                {
                    bChkProduct = new cProductService().C_ADDbProduct(new cmlDataProduct
                    {
                        ptCode = tPdtCode,
                        ptName = tPdtName,
                        pnQty = nPdtcQty,
                        pnPri = cPdtPri,
                    });
                }
                else
                {
                    C_PRCxSendToRabbitMQ(new cmlDataProduct
                    {
                        ptCode = tPdtCode,
                        ptName = tPdtName,
                        pnQty = nPdtcQty,
                        pnPri = cPdtPri,
                    });
                    return;
                }
                
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
            otbPdtCode.Text = "";
            otbPdtName.Text = "";
            otbPdtQty.Text = "";
            otbPdtPri.Text = "";
        }

        private void ocmPdtReset_Click(object sender, EventArgs e)
        {
            C_CLSxText();
            C_GETxPdtData();
        }
    }
}
