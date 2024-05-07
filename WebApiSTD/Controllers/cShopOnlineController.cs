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
        public cmlResBase POST_EXPoAddProduct([FromBody] cmlDataProduct paoDataProduct)
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

        [HttpGet]
        [Route("GetProduct/{tSearchPdtCode?}")]
        public cmlResList<cmlResProduct> GET_EXPoShopOnlineResObject(string tSearchPdtCode="")
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
                if (!string.IsNullOrEmpty(tSearchPdtCode))
                {
                    //TODO::Sql parameter
                    oSql.AppendLine($"WHERE FTPdtCode={tSearchPdtCode}");
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
    }
}
