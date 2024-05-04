
using RestSharp;
using System;
using System.Collections.Generic;
using System.Xml.Linq;
using WorkShopWebService.Models.WebService.Request.ShopOnline;
using WorkShopWebService.Models.WebService.Response.Base;
using WorkShopWebService.Models.WebService.Response.ShopOnline;

namespace WinForm.Services
{
    public class ProductService
    {
        public static List<cmlResProduct> getProduct()
        {
            try
            {
                return new List<cmlResProduct>();
                var options = new RestClientOptions("http://localhost:50210")
                {
                    MaxTimeout = -1,
                };
                var client = new RestClient(options);
                var request = new RestRequest("/ShopOnline/GetProduct", Method.Get);
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

        public static bool addProduct(cmlDataProduct poData)
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
                Console.WriteLine(response.Content);

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
