
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
                RestClientOptions oPtions = new RestClientOptions(tUrlApi);
                RestClient oClient = new RestClient(oPtions);
                RestRequest oRrequest = new RestRequest($"/ShopOnline/GetStock/{pdDte}", Method.Get);
                oRrequest.AddHeader("X-Api-Key", tAccess);
                RestResponse oResponse = oClient.Execute(oRrequest);
                var aoResList = Newtonsoft.Json.JsonConvert.DeserializeObject<cmlResList<cmlResStk>>(oResponse.Content);
                return aoResList.raItems;
            }catch (Exception)
            {
                return new List<cmlResStk>();
            }
        }
    }
}
