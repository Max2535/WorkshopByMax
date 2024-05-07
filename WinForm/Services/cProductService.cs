
using RestSharp;
using System;
using System.Collections.Generic;
using System.Xml.Linq;
using BuildingBlocks.Models.WebService.Request.ShopOnline;
using BuildingBlocks.Models.WebService.Response.Base;
using BuildingBlocks.Models.WebService.Response.ShopOnline;
using Microsoft.Extensions.Configuration;

namespace WinForm.Services
{
    public class cProductService
    {
        private readonly IConfiguration oConfiguration;
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
                var options = new RestClientOptions(tUrlApi);
                var client = new RestClient(options);
                var request = new RestRequest($"/ShopOnline/GetProduct/{tSearchPdtCode}", Method.Get);
                request.AddHeader("X-Api-Key", tAccess);
                RestResponse response = client.Execute(request);
                Console.WriteLine(response.Content);
                var aoResList = Newtonsoft.Json.JsonConvert.DeserializeObject<cmlResList<cmlResProduct>>(response.Content);
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
                var options = new RestClientOptions("http://localhost:50210");
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
