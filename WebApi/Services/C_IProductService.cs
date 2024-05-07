using System.Collections.Generic;
using System.Threading.Tasks;
using BuildingBlocks.Models.WebService.Request.ShopOnline;
using BuildingBlocks.Models.WebService.Response.ShopOnline;

namespace WebApi.Services
{
    public interface C_IProductService
    {
        public List<cmlResProduct> C_GETaoProduct(string tSearchPdtCode);
        public bool C_ADDbProduct(cmlDataProduct oShopOnline);
    }
}
