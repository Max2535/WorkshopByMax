using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BuildingBlocks.Class;
using BuildingBlocks.Models.WebService.Request.ShopOnline;
using BuildingBlocks.Models.WebService.Response.ShopOnline;
using ConAppSTD.Models.Receive;

namespace ConAppSTD.Class
{
    public class cExample
    {
        public bool C_PRCbAddProduct(cmlDataProduct poData, out string ptMsgErr)
        {
            try
            {
                //To do process 
                Console.WriteLine(poData.ptName);

                ptMsgErr = "";
                return true;
            }
            catch (Exception oEx)
            {
                ptMsgErr = oEx.Message;
                return false;
            }
            finally
            {
                poData = null;
            }
        }
        public bool C_PRCbExample(cmlRcvData poData, out string ptMsgErr)
        {
            try
            {
                //To do process 
                Console.WriteLine(poData.ptData);

                ptMsgErr = "";
                return true;
            }
            catch(Exception oEx)
            {
                ptMsgErr = oEx.Message;
                return false;
            }
            finally
            {
                poData = null;
            }
        }

        public static bool C_PRCxAddPdtTransaction(cmlDataProduct poPdt)
        {
            cDatabase oDB = new cDatabase();
            StringBuilder oSql = new StringBuilder();
            try
            {                
                oSql.AppendLine("BEGIN TRY");
                oSql.AppendLine("    BEGIN TRAN");

                oSql.AppendLine("    INSERT INTO TCNMProduct (FTPdtCode,FTPdtName, FNPdtQty, FNPdtCnfVat, FCPdtPri, FBPdtAct)");
                oSql.AppendLine($"    VALUES (N'{poPdt.ptCode}', N'{poPdt.ptName}', {poPdt.pnQty}, 1, {poPdt.pnPri}, '1');");

                oSql.AppendLine("    COMMIT TRAN");
                oSql.AppendLine("    SELECT 1"); 
                oSql.AppendLine("END TRY");
                oSql.AppendLine("BEGIN CATCH");
                oSql.AppendLine("    ROLLBACK TRAN");
                oSql.AppendLine("    SELECT 0"); 
                oSql.AppendLine("END CATCH"); 
                if (oDB.C_GEToDataQuery<int>(oSql.ToString()) == 0)
                {
                    Console.WriteLine($"Transaction Error Add Product !!!");
                    return false;
                }
                return true;
            }
            catch (Exception oEx)
            {
                Console.WriteLine(oEx.Message);
            }
            finally
            {
                oDB = null;
                oSql = null;
            }
            return false;
        }

        public static bool C_PRCxUpdPdtTransaction(cmlDataProduct poPdt)
        {
            cDatabase oDB = new cDatabase();
            StringBuilder oSql = new StringBuilder();
            try
            {
                oSql.AppendLine("BEGIN TRY");
                oSql.AppendLine("    BEGIN TRAN");

                oSql.AppendLine($"    UPDATE TCNMProduct SET FTPdtName = N'{poPdt.ptName}', FNPdtQty = {poPdt.pnQty}, FCPdtPri = {poPdt.pnPri}");
                oSql.AppendLine($"    WHERE FTPdtCode = N'{poPdt.ptCode}';");

                oSql.AppendLine("    COMMIT TRAN");
                oSql.AppendLine("    SELECT 1");
                oSql.AppendLine("END TRY");
                oSql.AppendLine("BEGIN CATCH");
                oSql.AppendLine("    ROLLBACK TRAN");
                oSql.AppendLine("    SELECT 0");
                oSql.AppendLine("END CATCH");
                if (oDB.C_GEToDataQuery<int>(oSql.ToString()) == 0)
                {
                    Console.WriteLine($"Transaction Error Update Product !!!");
                    return false;
                }
                return true;
            }
            catch (Exception oEx)
            {
                Console.WriteLine(oEx.Message);
            }
            finally
            {
                oDB = null;
                oSql = null;
            }
            return false;
        }

        public static bool C_PRCxDelPdtTransaction(string ptPdtCode)
        {
            cDatabase oDB = new cDatabase();
            StringBuilder oSql = new StringBuilder();
            try
            {
                oSql.AppendLine("BEGIN TRY");
                oSql.AppendLine("    BEGIN TRAN");

                oSql.AppendLine($"    DELETE FROM TCNMProduct");
                oSql.AppendLine($"    WHERE FTPdtCode = N'{ptPdtCode}';");

                oSql.AppendLine("    COMMIT TRAN");
                oSql.AppendLine("    SELECT 1");
                oSql.AppendLine("END TRY");
                oSql.AppendLine("BEGIN CATCH");
                oSql.AppendLine("    ROLLBACK TRAN");
                oSql.AppendLine("    SELECT 0");
                oSql.AppendLine("END CATCH");
                if (oDB.C_GEToDataQuery<int>(oSql.ToString()) == 0)
                {
                    Console.WriteLine($"Transaction Error Delete !!!");
                    return false;
                }
                return true;
            }
            catch (Exception oEx)
            {
                Console.WriteLine(oEx.Message);
            }
            finally
            {
                oDB = null;
                oSql = null;
            }
            return false;
        }

        public bool C_PRCbExamplePublish2Queue(cmlRcvData poData, out string ptMsgErr)
        {
            try
            {
                //To do process 
                //...
                //...
                //Publish
                new cPublisher().C_PRCxMQPublish("QueueName1", poData.ptData, out ptMsgErr, pbDurable:true);
                if (!string.IsNullOrEmpty(ptMsgErr))
                {
                    Console.WriteLine("Publish " + poData.ptData + "to Queue Error = " + ptMsgErr);
                    throw new Exception(ptMsgErr);
                }
                else
                {
                    Console.WriteLine("Publish " + poData.ptData + "to Queue success.");
                }

                ptMsgErr = "";
                return true;
            }
            catch (Exception oEx)
            {
                ptMsgErr = oEx.Message;
                return false;
            }
            finally
            {
                poData = null;
            }
        }

        public bool C_PRCbExamplePublish2Exchange(cmlRcvData poData, out string ptMsgErr)
        {
            try
            {
                //To do process 
                //...
                //...

                //Publish
                new cPublisher().C_PRCxMQPublishExchange("ExchangeName1", "", "fanout", poData.ptData, out ptMsgErr);
                if(!string.IsNullOrEmpty(ptMsgErr))
                {
                    Console.WriteLine("Publish " + poData.ptData + "to Exchange Error = " + ptMsgErr);
                    throw new Exception(ptMsgErr);
                }
                else
                {
                    Console.WriteLine("Publish " + poData.ptData + "to Exchange success.");
                }

                ptMsgErr = "";
                return true;
            }
            catch (Exception oEx)
            {
                ptMsgErr = oEx.Message;
                return false;
            }
            finally
            {
                poData = null;
            }
        }

        public bool C_PRCxChackOutTransaction(List<cmlDataCheckOut> paoCart)
        {
            cDatabase oDB = new cDatabase();
            StringBuilder oSql = new StringBuilder();
            try
            {
                oSql.Clear();
                oSql.AppendLine(@"SELECT TOP
	                                    1 MAX(FTOrdCode) AS nMaxOrd
                                    FROM
	                                    ( SELECT CAST ( FTOrdCode AS INT ) AS FTOrdCode FROM TPSTOrder )
                                    AS nMax");
                var oMaxOrd = oDB.C_GETaDataQuery<cmlDataCheckOut>(oSql.ToString());
                String tOrdCode = "".PadLeft(3, '0') + (oMaxOrd[0].nMaxOrd+1);
                oSql.Clear();
                oSql.AppendLine("BEGIN TRY");
                oSql.AppendLine("    BEGIN TRAN");
                //รายการสินค้า
                foreach (var oCart in paoCart)
                {
                    oSql.AppendLine("    INSERT INTO TPSTOrderDetails " +
                        "                   (FTOrdCode, FTPdtCode, FNOrdDtQty, FCOrdDtPri)");
                    oSql.AppendLine($"   VALUES (N'{tOrdCode}', N'{oCart.ptCode}', {oCart.pnQty}, {oCart.pnPri});");
                }
                //ใบสั่งซื้อ
                oSql.AppendLine("    INSERT INTO TPSTOrder (FTOrdCode, FTOrdCusName, FDOrdDate, FCOrdAmt)");
                oSql.AppendLine($"        VALUES ('{tOrdCode}', 'test test {tOrdCode}', GETDATE(), {paoCart.Sum(s=>s.pnPri)});");


                oSql.AppendLine("    COMMIT TRAN");
                oSql.AppendLine("    SELECT 1");
                oSql.AppendLine("END TRY");
                oSql.AppendLine("BEGIN CATCH");
                oSql.AppendLine("    ROLLBACK TRAN");
                oSql.AppendLine("    SELECT 0");
                oSql.AppendLine("END CATCH");
                if (oDB.C_GEToDataQuery<int>(oSql.ToString()) == 0)
                {
                    Console.WriteLine($"Transaction Error Add CheckOut !!!");
                    return false;
                }
                return true;
            }
            catch (Exception oEx)
            {
                Console.WriteLine(oEx.Message);
            }
            finally
            {
                oDB = null;
                oSql = null;
            }
            return false;
        }
    }
}
