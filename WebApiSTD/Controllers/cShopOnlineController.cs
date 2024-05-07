using BuildingBlocks.Class;
using BuildingBlocks.Models.WebService.Request.ShopOnline;
using BuildingBlocks.Models.WebService.Response.Base;
using BuildingBlocks.Models.WebService.Response.ShopOnline;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using WebApiSTD.Class;

namespace WebApiSTD.Controllers
{
    [Route("ShopOnline")]
    public class cShopOnlineController : Controller
    {
        [HttpPost]
        [Route("AddProduct")]
        public cmlResBase POST_APIoAddProduct([FromBody] cmlDataProduct paoDataProduct)
        {
            cmlResBase oResult;
            cRabbitMQ oRabbitMQ;
            string tErrAPI;
            
            try
            {
                oResult = new cmlResBase();

                //Check Model
                if (paoDataProduct == null)
                {
                    oResult.rtCode = cMS.tMS_RespCode700;
                    oResult.rtDesc = cMS.tMS_RespDesc700;
                    return oResult;
                }
                else
                {

                }

                //Check API Key
                if (!new cSP().C_CHKbKeyApiConfig(HttpContext, out tErrAPI))
                {
                    oResult.rtCode = cMS.tMS_RespCode904;
                    oResult.rtDesc = cMS.tMS_RespDesc904;
                    return oResult;
                }
                else
                {

                }

                //To do..
                oRabbitMQ = new cRabbitMQ();

                //Convert to string json
                string tMsgJson = Newtonsoft.Json.JsonConvert.SerializeObject(paoDataProduct);
                //Publish to rabbitMQ
                if (oRabbitMQ.C_PRCbSendData2Srv(tMsgJson, "MaxQueueAddPdt", true))
                {
                    oResult.rtCode = cMS.tMS_RespCode001;
                    oResult.rtDesc = cMS.tMS_RespDesc001;
                }
                else
                {
                    oResult.rtCode = cMS.tMS_RespCode907;
                    oResult.rtDesc = cMS.tMS_RespDesc907;
                }

                return oResult;
            }
            catch (Exception oEx)
            {
                oResult = new cmlResBase();
                oResult.rtCode = cMS.tMS_RespCode900;
                oResult.rtDesc = cMS.tMS_RespDesc900 + " : " + oEx.Message;
                return oResult;
            }
            finally
            {
                paoDataProduct = null;
                oRabbitMQ = null;
            }
        }


        [HttpPut]
        [Route("UpdateProduct")]
        public cmlResBase POST_APIoUPDProduct([FromBody] cmlDataProduct paoDataProduct)
        {
            cmlResBase oResult;
            cRabbitMQ oRabbitMQ;
            string tErrAPI;

            try
            {
                oResult = new cmlResBase();

                //Check Model
                if (paoDataProduct == null)
                {
                    oResult.rtCode = cMS.tMS_RespCode700;
                    oResult.rtDesc = cMS.tMS_RespDesc700;
                    return oResult;
                }
                else
                {

                }

                //Check API Key
                if (!new cSP().C_CHKbKeyApiConfig(HttpContext, out tErrAPI))
                {
                    oResult.rtCode = cMS.tMS_RespCode904;
                    oResult.rtDesc = cMS.tMS_RespDesc904;
                    return oResult;
                }
                else
                {

                }

                //To do..
                oRabbitMQ = new cRabbitMQ();

                //Convert to string json
                string tMsgJson = Newtonsoft.Json.JsonConvert.SerializeObject(paoDataProduct);
                //Publish to rabbitMQ
                if (oRabbitMQ.C_PRCbSendData2Srv(tMsgJson, "MaxQueueUpdPdt", true))
                {
                    oResult.rtCode = cMS.tMS_RespCode001;
                    oResult.rtDesc = cMS.tMS_RespDesc001;
                }
                else
                {
                    oResult.rtCode = cMS.tMS_RespCode907;
                    oResult.rtDesc = cMS.tMS_RespDesc907;
                }

                return oResult;
            }
            catch (Exception oEx)
            {
                oResult = new cmlResBase();
                oResult.rtCode = cMS.tMS_RespCode900;
                oResult.rtDesc = cMS.tMS_RespDesc900 + " : " + oEx.Message;
                return oResult;
            }
            finally
            {
                paoDataProduct = null;
                oRabbitMQ = null;
            }
        }

        [HttpDelete]
        [Route("DelProduct/{ptPdtCode}")]
        public cmlResBase POST_APIoDELProduct(string ptPdtCode)
        {
            cmlResBase oResult;
            cRabbitMQ oRabbitMQ;
            string tErrAPI;

            try
            {
                oResult = new cmlResBase();

                //Check Model
                if (string.IsNullOrEmpty(ptPdtCode))
                {
                    oResult.rtCode = cMS.tMS_RespCode700;
                    oResult.rtDesc = cMS.tMS_RespDesc700;
                    return oResult;
                }
                else
                {

                }

                //Check API Key
                if (!new cSP().C_CHKbKeyApiConfig(HttpContext, out tErrAPI))
                {
                    oResult.rtCode = cMS.tMS_RespCode904;
                    oResult.rtDesc = cMS.tMS_RespDesc904;
                    return oResult;
                }
                else
                {

                }

                //To do..
                oRabbitMQ = new cRabbitMQ();
                //Convert to string json
                string tMsgJson = ptPdtCode;
                //Publish to rabbitMQ
                if (oRabbitMQ.C_PRCbSendData2Srv(tMsgJson, "MaxQueueDelPdt", true))
                {
                    oResult.rtCode = cMS.tMS_RespCode001;
                    oResult.rtDesc = cMS.tMS_RespDesc001;
                }
                else
                {
                    oResult.rtCode = cMS.tMS_RespCode907;
                    oResult.rtDesc = cMS.tMS_RespDesc907;
                }

                return oResult;
            }
            catch (Exception oEx)
            {
                oResult = new cmlResBase();
                oResult.rtCode = cMS.tMS_RespCode900;
                oResult.rtDesc = cMS.tMS_RespDesc900 + " : " + oEx.Message;
                return oResult;
            }
            finally
            {
                ptPdtCode = null;
                oRabbitMQ = null;
            }
        }

        [HttpGet]
        [Route("GetProduct/{ptSearchPdtCode?}")]
        public cmlResList<cmlResProduct> GET_APIoGetProduct(string ptSearchPdtCode="")
        {
            cmlResList<cmlResProduct> oResult;
            string tErrAPI;
            try
            {
                oResult = new cmlResList<cmlResProduct>();

                //Check API Key
                if (!new cSP().C_CHKbKeyApiConfig(HttpContext, out tErrAPI))
                {
                    oResult.rtCode = cMS.tMS_RespCode904;
                    oResult.rtDesc = cMS.tMS_RespDesc904;
                    return oResult;
                }
                else
                {
                    //TODO::
                }
                //process..
                cDatabase oDatabase = new cDatabase();
                StringBuilder oSql;
                oSql = new StringBuilder();
                oSql.AppendLine("SELECT " +
                    "FTPdtCode AS rtCode," +
                    "FTPdtName AS rtName," +
                    "FNPdtQty AS rnQty," +
                    "FCPdtPri AS rcPri");
                oSql.AppendLine("FROM TSOLMProduct");
                if (!string.IsNullOrEmpty(ptSearchPdtCode))
                {
                    //TODO::Sql parameter
                    oSql.AppendLine($"WHERE FTPdtCode={ptSearchPdtCode}");
                }
                List<cmlResProduct> oResultPdt = oDatabase.C_GETaDataQuery<cmlResProduct>(oSql.ToString());
                oResult.raItems = oResultPdt;
                oResult.rtCode = cMS.tMS_RespCode001;
                oResult.rtDesc = cMS.tMS_RespDesc001;
                return oResult;
            }
            catch (Exception oEx)
            {
                oResult = new cmlResList<cmlResProduct>();
                oResult.rtCode = cMS.tMS_RespCode900;
                oResult.rtDesc = cMS.tMS_RespDesc900 + " : " + oEx.Message;
                return oResult;
            }
            finally
            {

            }
        }

        [HttpPost]
        [Route("ChackOut")]
        public cmlResBase POST_APIoChackOut([FromBody] List<cmlDataCheckOut> paoDataChackOut)
        {
            cmlResBase oResult;
            cRabbitMQ oRabbitMQ;
            string tErrAPI;

            try
            {
                oResult = new cmlResBase();

                //Check Model
                if (paoDataChackOut == null)
                {
                    oResult.rtCode = cMS.tMS_RespCode700;
                    oResult.rtDesc = cMS.tMS_RespDesc700;
                    return oResult;
                }
                else
                {

                }

                //Check API Key
                if (!new cSP().C_CHKbKeyApiConfig(HttpContext, out tErrAPI))
                {
                    oResult.rtCode = cMS.tMS_RespCode904;
                    oResult.rtDesc = cMS.tMS_RespDesc904;
                    return oResult;
                }
                else
                {

                }

                //To do..
                oRabbitMQ = new cRabbitMQ();

                //Convert to string json
                string tMsgJson = Newtonsoft.Json.JsonConvert.SerializeObject(paoDataChackOut);
                //Publish to rabbitMQ
                if (oRabbitMQ.C_PRCbSendData2Srv(tMsgJson, "MaxQueueChackOut", true))
                {
                    oResult.rtCode = cMS.tMS_RespCode001;
                    oResult.rtDesc = cMS.tMS_RespDesc001;
                }
                else
                {
                    oResult.rtCode = cMS.tMS_RespCode907;
                    oResult.rtDesc = cMS.tMS_RespDesc907;
                }

                return oResult;
            }
            catch (Exception oEx)
            {
                oResult = new cmlResBase();
                oResult.rtCode = cMS.tMS_RespCode900;
                oResult.rtDesc = cMS.tMS_RespDesc900 + " : " + oEx.Message;
                return oResult;
            }
            finally
            {
                paoDataChackOut = null;
                oRabbitMQ = null;
            }
        }

        [HttpGet]
        [Route("GetOrder/{ptOrdcode?}")]
        public cmlResBase GET_APIoOrder(string ptOrdcode="")
        {
            cmlResList<cmlResOrder> oResult;
            string tErrAPI;
            try
            {
                oResult = new cmlResList<cmlResOrder>();

                //Check API Key
                if (!new cSP().C_CHKbKeyApiConfig(HttpContext, out tErrAPI))
                {
                    oResult.rtCode = cMS.tMS_RespCode904;
                    oResult.rtDesc = cMS.tMS_RespDesc904;
                    return oResult;
                }
                else
                {
                    //TODO::
                }
                //process..
                cDatabase oDatabase = new cDatabase();
                StringBuilder oSql;
                oSql = new StringBuilder();
                oSql.AppendLine(@"SELECT
	                                    FTOrdCode AS rtOrdCode,
	                                    FDOrdDate  AS rdOrdDte,
	                                    FTOrdCusName AS rdOrdCus,
	                                    FCTotalPri AS rcTotalPri
                                    FROM
	                                    VSOLTOrder");
                if (!string.IsNullOrEmpty(ptOrdcode))
                {
                    //TODO::Sql parameter
                    oSql.AppendLine($"  WHERE FTOrdCode={ptOrdcode}");
                }
                List<cmlResOrder> oResultOrd = oDatabase.C_GETaDataQuery<cmlResOrder>(oSql.ToString());
                oResult.raItems = oResultOrd;
                oResult.rtCode = cMS.tMS_RespCode001;
                oResult.rtDesc = cMS.tMS_RespDesc001;
                return oResult;
            }
            catch (Exception oEx)
            {
                oResult = new cmlResList<cmlResOrder>();
                oResult.rtCode = cMS.tMS_RespCode900;
                oResult.rtDesc = cMS.tMS_RespDesc900 + " : " + oEx.Message;
                return oResult;
            }
            finally
            {

            }
        }

        [HttpGet]
        [Route("GetStock/{pdDte?}")]
        public cmlResBase GET_APIoStock(DateTime? pdDte=null)
        {
            cmlResList<cmlResStk> oResult;
            string tErrAPI;
            try
            {
                oResult = new cmlResList<cmlResStk>();

                //Check API Key
                if (!new cSP().C_CHKbKeyApiConfig(HttpContext, out tErrAPI))
                {
                    oResult.rtCode = cMS.tMS_RespCode904;
                    oResult.rtDesc = cMS.tMS_RespDesc904;
                    return oResult;
                }
                else
                {
                    //TODO::
                }
                //process..
                cDatabase oDatabase = new cDatabase();
                StringBuilder oSql;
                oSql = new StringBuilder();
                oSql.AppendLine(@"SELECT
	                                    FTPdtCode AS rtPdtCode,
	                                    FTOrdCode AS rtOrdCode,
	                                    FNInvQty AS rnInvQty,
	                                    FDInvDate AS rdInvDte
                                    FROM
	                                    VSOLTStock");
                if (pdDte!=null)
                {
                    //TODO::Sql parameter
                    oSql.AppendLine($"  WHERE rdInvDte='{pdDte}'");
                }
                List<cmlResStk> oResultStk = oDatabase.C_GETaDataQuery<cmlResStk>(oSql.ToString());
                oResult.raItems = oResultStk;
                oResult.rtCode = cMS.tMS_RespCode001;
                oResult.rtDesc = cMS.tMS_RespDesc001;
                return oResult;
            }
            catch (Exception oEx)
            {
                oResult = new cmlResList<cmlResStk>();
                oResult.rtCode = cMS.tMS_RespCode900;
                oResult.rtDesc = cMS.tMS_RespDesc900 + " : " + oEx.Message;
                return oResult;
            }
            finally
            {

            }
        }
    }
}
