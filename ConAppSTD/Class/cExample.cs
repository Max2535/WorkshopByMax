using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
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
