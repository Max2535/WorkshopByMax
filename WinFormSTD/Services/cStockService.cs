
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
    public class cOrdertService
    {
        private static IConfiguration oConfiguration;
        public cOrdertService() {
            // Set up configuration
            var configurationBuilder = new ConfigurationBuilder()
                .SetBasePath(AppDomain.CurrentDomain.BaseDirectory)
                .AddJsonFile("appsettings.json", optional: true, reloadOnChange: true);
            oConfiguration = configurationBuilder.Build();           
        }
        public List<cmlResOrder> C_GETaoOrd(string tSearchPdtCode="")
        {
            try
            {
                // Get configuration values
                string tAccess = oConfiguration["AppSettings:tAccess"];
                string tUrlApi = oConfiguration["AppSettings:tUrlApi"];
                RestClientOptions oPtions = new RestClientOptions(tUrlApi);
                RestClient oClient = new RestClient(oPtions);
                RestRequest oRrequest = new RestRequest($"/ShopOnline/GetOrder/{tSearchPdtCode}", Method.Get);
                oRrequest.AddHeader("X-Api-Key", tAccess);
                RestResponse oResponse= oClient.Execute(oRrequest);
                Console.WriteLine(oResponse.Content);
                var aoResList = Newtonsoft.Json.JsonConvert.DeserializeObject<cmlResList<cmlResOrder>>(oResponse.Content);
                return aoResList.raItems;
            }catch (Exception)
            {
                return new List<cmlResOrder>();
            }
        }
    }
}
