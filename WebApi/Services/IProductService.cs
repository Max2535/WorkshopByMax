using System.Collections.Generic;
using System.Threading.Tasks;
using WorkShopWebService.Models.WebService.Request.ShopOnline;
using WorkShopWebService.Models.WebService.Response.ShopOnline;

namespace WebApi.Services
{
    public interface IProductService
    {
        public List<cmlResProduct> getProduct();
        public bool addProduct(cmlDataProduct oShopOnline);
    }
}
