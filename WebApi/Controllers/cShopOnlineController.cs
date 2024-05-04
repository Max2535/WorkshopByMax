using Microsoft.AspNetCore.Mvc;
using System;
using System.Linq;
using WebApi.Services;
using WorkShopWebService.Class;
using WorkShopWebService.Models.WebService.Request.ShopOnline;
using WorkShopWebService.Models.WebService.Response.Base;
using WorkShopWebService.Models.WebService.Response.ShopOnline;

namespace WorkShopWebService.Controllers
{
    [Route("ShopOnline")]
    public class cShopOnlineController : Controller
    {
        private readonly IProductService _product;

        public cShopOnlineController(IProductService product)
        {
            _product=product;
        }

        [HttpPost]
        [Route("AddProduct")]
        public cmlResBase POST_EXPoShopOnline([FromBody] cmlReqShopOnline poData)
        {
            cmlResBase oResult;
            cRabbitMQ oRabbitMQ;
            string tErrAPI;
            
            try
            {
                oResult = new cmlResBase();

                //Check Model
                if (poData == null)
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
                string tMsgJson = Newtonsoft.Json.JsonConvert.SerializeObject(poData);
                //Publish to rabbitMQ
                if (oRabbitMQ.C_PRCbSendData2Srv(tMsgJson, true))
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
                poData = null;
                oRabbitMQ = null;
            }
        }

        [HttpGet]
        [Route("GetProduct")]
        public cmlResList<cmlResProduct> GET_EXPoShopOnlineResObject()
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

                }


                //To do process..
                //...
                //...
                //...

                oResult.raItems = _product.getProduct();
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
