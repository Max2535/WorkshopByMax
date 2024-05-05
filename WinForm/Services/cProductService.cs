
using RestSharp;
using System;
using System.Collections.Generic;
using System.Xml.Linq;
using BuildingBlocks.Models.WebService.Request.ShopOnline;
using BuildingBlocks.Models.WebService.Response.Base;
using BuildingBlocks.Models.WebService.Response.ShopOnline;

namespace WinForm.Services
{
    public class cProductService
    {
        public static List<cmlResProduct> C_GETaoProduct()
        {
            try
            {
                //Test
                return new List<cmlResProduct>();
                var options = new RestClientOptions("http://localhost:50210")
                {
                    MaxTimeout = -1,
                };
                var client = new RestClient(options);
                var request = new RestRequest("/ShopOnline/C_GETaoProduct", Method.Get);
                request.AddHeader("X-Api-Key", "123456789");
                RestResponse response = client.Execute(request);
                Console.WriteLine(response.Content);
                var aoResList = Newtonsoft.Json.JsonConvert.DeserializeObject<cmlResList<cmlResProduct>>(response.Content);
                return aoResList.raItems;
            }catch (Exception ex)
            {
                return new List<cmlResProduct>();
            }
        }

        public static bool C_ADDbProduct(cmlDataProduct poData)
        {
            try
            {
                string tMsgJson = Newtonsoft.Json.JsonConvert.SerializeObject(poData);
                var options = new RestClientOptions("http://localhost:50210")
                {
                    MaxTimeout = -1,
                };
                var client = new RestClient(options);
                var request = new RestRequest("/ShopOnline/AddProduct", Method.Post);
                request.AddHeader("X-Api-Key", "123456789");
                request.AddHeader("Content-Type", "application/json");
                var body = tMsgJson;
                request.AddStringBody(body, DataFormat.Json);
                RestResponse response = client.Execute(request);
                var oRes = Newtonsoft.Json.JsonConvert.DeserializeObject<cmlResBase>(response.Content);
                //TODO::
                return true;
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
