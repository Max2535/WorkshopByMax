using System.Collections.Generic;
using System.Threading.Tasks;
using BuildingBlocks.Models.WebService.Request.ShopOnline;
using BuildingBlocks.Models.WebService.Response.ShopOnline;

namespace WebApi.Services
{
    public interface IcProductService
    {
        public List<cmlResProduct> C_GETaoProduct();
        public bool C_ADDbProduct(cmlDataProduct oShopOnline);
    }
}
