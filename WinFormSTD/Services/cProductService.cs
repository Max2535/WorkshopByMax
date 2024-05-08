
using RestSharp;
using System;
using System.Collections.Generic;
using System.Xml.Linq;
using BuildingBlocks.Models.WebService.Request.ShopOnline;
using BuildingBlocks.Models.WebService.Response.Base;
using BuildingBlocks.Models.WebService.Response.ShopOnline;
using Microsoft.Extensions.Configuration;

namespace WinFormSTD.Services
{
    public class cProductService
    {
        private static IConfiguration oConfiguration;
        public cProductService() {
            // Set up configuration
            var configurationBuilder = new ConfigurationBuilder()
                .SetBasePath(AppDomain.CurrentDomain.BaseDirectory)
                .AddJsonFile("appsettings.json", optional: true, reloadOnChange: true);
            oConfiguration = configurationBuilder.Build();           
        }
        public List<cmlResProduct> C_GETaoProduct(string tSearchPdtCode="")
        {
            try
            {
                // Get configuration values
                string tAccess = oConfiguration["AppSettings:tAccess"];
                string tUrlApi = oConfiguration["AppSettings:tUrlApi"];
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
                // Get configuration values
                string tAccess = oConfiguration["AppSettings:tAccess"];
                string tUrlApi = oConfiguration["AppSettings:tUrlApi"];
                string tMsgJson = Newtonsoft.Json.JsonConvert.SerializeObject(poData);
                RestClientOptions oPtions = new RestClientOptions(tUrlApi);
                RestClient oClient = new RestClient(oPtions);
                RestRequest oRrequest = new RestRequest("/ShopOnline/AddProduct", Method.Post);
                oRrequest.AddHeader("X-Api-Key", tAccess);
                oRrequest.AddHeader("Content-Type", "application/json");
                var body = tMsgJson;
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
        public bool C_UPDbProduct(cmlDataProduct poData)
        {
            try
            {
                // Get configuration values
                string tAccess = oConfiguration["AppSettings:tAccess"];
                string tUrlApi = oConfiguration["AppSettings:tUrlApi"];
                string tMsgJson = Newtonsoft.Json.JsonConvert.SerializeObject(poData);
                RestClientOptions oPtions = new RestClientOptions(tUrlApi);
                RestClient oClient = new RestClient(oPtions);
                RestRequest oRrequest = new RestRequest("/ShopOnline/UpdateProduct", Method.Put);
                oRrequest.AddHeader("X-Api-Key", tAccess);
                oRrequest.AddHeader("Content-Type", "application/json");
                var body = tMsgJson;
                oRrequest.AddStringBody(body, DataFormat.Json);
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
                // Get configuration values
                string tAccess = oConfiguration["AppSettings:tAccess"];
                string tUrlApi = oConfiguration["AppSettings:tUrlApi"];
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
                // Get configuration values
                string tAccess = oConfiguration["AppSettings:tAccess"];
                string tUrlApi = oConfiguration["AppSettings:tUrlApi"];
                string tMsgJson = Newtonsoft.Json.JsonConvert.SerializeObject(paoCart);
                RestClientOptions oPtions = new RestClientOptions(tUrlApi);
                RestClient oClient = new RestClient(oPtions);
                RestRequest oRrequest = new RestRequest("/ShopOnline/ChackOut", Method.Post);
                oRrequest.AddHeader("X-Api-Key", tAccess);
                oRrequest.AddHeader("Content-Type", "application/json");
                var body = tMsgJson;
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
