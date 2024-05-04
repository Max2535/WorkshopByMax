using System;
using System.Collections.Generic;
using System.Linq;
using WebApi.Class;
using WorkShopWebService.Models.WebService.Request.ShopOnline;
using WorkShopWebService.Models.WebService.Response.ShopOnline;

namespace WebApi.Services
{
    public class ProductService : IProductService
    {
        private readonly cDbContext _context;

        public ProductService(cDbContext context)
        {
            _context = context;
        }

        public bool addProduct(cmlDataProduct oShopOnline)
        {
            throw new System.NotImplementedException();
        }

        public List<cmlResProduct> getProduct()
        {
            try
            {
                List<cmlResProduct> aoProduct = new List<cmlResProduct>();
                var cmlPdt = _context.TSOLMProducts.ToList();
                foreach (var pdt in cmlPdt)
                {
                    aoProduct.Add(new cmlResProduct
                    {
                        rtCode=pdt.FTPdtCode,
                        rtName=pdt.FTPdtName,
                        rnQty=pdt.FNPdtQty,
                        rcPri=pdt.FCPdtPri,
                    });
                }

                return aoProduct;
            }
            catch (Exception ex)
            {
                return null; 
            }
            finally
            {
            }
        }
    }
}
