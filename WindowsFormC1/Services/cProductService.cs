
using RestSharp;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Xml.Linq;
using WindowsFormC1.Models.WebService.Request.ShopOnline;
using WindowsFormC1.Models.WebService.Response.Base;
using WindowsFormC1.Models.WebService.Response.ShopOnline;

namespace WindowsFormC1.Services
{
    public class cProductService
    {
        string tAccess;
        string tUrlApi;
        public cProductService() {
            // Get configuration values
            tAccess = ConfigurationManager.AppSettings["tAccess"];
            tUrlApi = ConfigurationManager.AppSettings["tUrlApi"];
        }
        public List<cmlResProduct> C_GETaoProduct(string tSearchPdtCode="")
        {
            try
            {
                RestClientOptions oPtions = new RestClientOptions(tUrlApi);
                RestClient oClient = new RestClient(oPtions);
                RestRequest oRrequest = new RestRequest($"/ShopOnline/GetProduct/{tSearchPdtCode}", Method.Get);
                oRrequest.AddHeader("X-Api-Key", tAccess);
                RestResponse oResponse= oClient.Execute(oRrequest);
                Console.WriteLine(oResponse.Content);
                var aoResList = Newtonsoft.Json.JsonConvert.DeserializeObject<cmlResList<cmlResProduct>>(oResponse.Content);
                return aoResList.raItems;
            }catch (Exception)
            {
                return new List<cmlResProduct>();
            }
        }

        public bool C_ADDbProduct(cmlDataProduct poData)
        {
            try
            {
                string tMsgJson = Newtonsoft.Json.JsonConvert.SerializeObject(poData);
                RestClientOptions oPtions = new RestClientOptions(tUrlApi);
                RestClient oClient = new RestClient(oPtions);
                RestRequest oRrequest = new RestRequest("/ShopOnline/AddProduct", Method.Post);
                oRrequest.AddHeader("X-Api-Key", tAccess);
                oRrequest.AddHeader("Content-Type", "application/json");
                oRrequest.AddStringBody(tMsgJson, DataFormat.Json);
                RestResponse oResponse= oClient.Execute(oRrequest);
                var oRes = Newtonsoft.Json.JsonConvert.DeserializeObject<cmlResBase>(oResponse.Content);
                if (oRes.rtCode == "001")
                {
                    return true;
                }
                return false;
            }
            catch (Exception)
            {
                return false;
            }
            finally
            {

            }
        }
        public bool C_UPDbProduct(cmlDataProduct poData)
        {
            try
            {
                string tMsgJson = Newtonsoft.Json.JsonConvert.SerializeObject(poData);
                RestClientOptions oPtions = new RestClientOptions(tUrlApi);
                RestClient oClient = new RestClient(oPtions);
                RestRequest oRrequest = new RestRequest("/ShopOnline/UpdateProduct", Method.Put);
                oRrequest.AddHeader("X-Api-Key", tAccess);
                oRrequest.AddHeader("Content-Type", "application/json");
                oRrequest.AddStringBody(tMsgJson, DataFormat.Json);
                RestResponse oResponse= oClient.Execute(oRrequest);
                var oRes = Newtonsoft.Json.JsonConvert.DeserializeObject<cmlResBase>(oResponse.Content);
                if (oRes.rtCode== "001")
                {
                    return true;
                }
                return false;
            }
            catch (Exception)
            {
                return false;
            }
            finally
            {

            }
        }

        public bool C_DELbProduct(string ptPdtCode)
        {
            try
            {
                RestClientOptions oPtions = new RestClientOptions(tUrlApi);
                RestClient oClient = new RestClient(oPtions);
                RestRequest oRrequest = new RestRequest($"/ShopOnline/DelProduct/{ptPdtCode}", Method.Delete);
                oRrequest.AddHeader("X-Api-Key", tAccess);
                RestResponse oResponse= oClient.Execute(oRrequest);
                Console.WriteLine(oResponse.Content);
                var oRes = Newtonsoft.Json.JsonConvert.DeserializeObject<cmlResBase>(oResponse.Content);
                if (oRes.rtCode == "001")
                {
                    return true;
                }
                return false;
            }
            catch (Exception)
            {
                return false;
            }
            finally
            {

            }
        }

        public bool C_SalebChackOut(List<cmlDataCheckOut> paoCart)
        {
            try
            {
                string tMsgJson = Newtonsoft.Json.JsonConvert.SerializeObject(paoCart);
                RestClientOptions oPtions = new RestClientOptions(tUrlApi);
                RestClient oClient = new RestClient(oPtions);
                RestRequest oRrequest = new RestRequest("/ShopOnline/ChackOut", Method.Post);
                oRrequest.AddHeader("X-Api-Key", tAccess);
                oRrequest.AddHeader("Content-Type", "application/json");
                string body = tMsgJson;
                oRrequest.AddStringBody(body, DataFormat.Json);
                RestResponse oResponse= oClient.Execute(oRrequest);
                var oRes = Newtonsoft.Json.JsonConvert.DeserializeObject<cmlResBase>(oResponse.Content);
                if (oRes.rtCode == "001")
                {
                    return true;
                }
                return false;
            }
            catch (Exception)
            {
                return false;
            }
            finally
            {

            }
        }
    }
}
