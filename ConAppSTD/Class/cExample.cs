using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BuildingBlocks.Class;
using BuildingBlocks.Models.WebService.Request.ShopOnline;
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

                oSql.AppendLine("    INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct])");
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
                    Console.WriteLine($"C_PRCxTemp2Transaction : Cannot Move Temp 2 Transaction !!!!");
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
    }
}
