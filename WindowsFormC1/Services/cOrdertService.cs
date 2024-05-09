using RestSharp;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WindowsFormC1.Models.WebService.Response.Base;
using WindowsFormC1.Models.WebService.Response.ShopOnline;

namespace WindowsFormC1.Services
{
    public class cStockService
    {
        public static List<cmlResOrder> C_GETaoOrder(string ptOrdcode = "")
        {
            try
            {
                // Get configuration values
                var tAccess = ConfigurationManager.AppSettings["tAccess"];
                var tUrlApi = ConfigurationManager.AppSettings["tUrlApi"];

                RestClientOptions oPtions = new RestClientOptions(tUrlApi);
                RestClient oClient = new RestClient(oPtions);
                RestRequest oRrequest = new RestRequest($"/ShopOnline/GetOrder/{ptOrdcode}", Method.Get);
                oRrequest.AddHeader("X-Api-Key", tAccess);
                RestResponse oResponse = oClient.Execute(oRrequest);
                var aoResList = Newtonsoft.Json.JsonConvert.DeserializeObject<cmlResList<cmlResOrder>>(oResponse.Content);
                return aoResList.raItems;
            }catch (Exception)
            {
                return new List<cmlResOrder>();
            }
        }
    }
}
