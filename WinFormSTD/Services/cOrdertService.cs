
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
    public class cStockService
    {
        private static IConfiguration oConfiguration;
        public cStockService() {
            // Set up configuration
            var configurationBuilder = new ConfigurationBuilder()
                .SetBasePath(AppDomain.CurrentDomain.BaseDirectory)
                .AddJsonFile("appsettings.json", optional: true, reloadOnChange: true);
            oConfiguration = configurationBuilder.Build();           
        }
        public List<cmlResStk> C_GETaoStock(DateTime? pdDte = null)
        {
            try
            {
                // Get configuration values
                string tAccess = oConfiguration["AppSettings:tAccess"];
                string tUrlApi = oConfiguration["AppSettings:tUrlApi"];
                var options = new RestClientOptions(tUrlApi);
                var client = new RestClient(options);
                var request = new RestRequest($"/ShopOnline/GetStock/{pdDte}", Method.Get);
                request.AddHeader("X-Api-Key", tAccess);
                RestResponse response = client.Execute(request);
                Console.WriteLine(response.Content);
                var aoResList = Newtonsoft.Json.JsonConvert.DeserializeObject<cmlResList<cmlResStk>>(response.Content);
                return aoResList.raItems;
            }catch (Exception)
            {
                return new List<cmlResStk>();
            }
        }
    }
}
