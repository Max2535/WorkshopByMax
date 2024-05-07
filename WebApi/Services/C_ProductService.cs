using System;
using System.Collections.Generic;
using System.Linq;
using WebApi.Class;
using BuildingBlocks.Models.WebService.Request.ShopOnline;
using BuildingBlocks.Models.WebService.Response.ShopOnline;

namespace WebApi.Services
{
    public class C_ProductService : C_IProductService
    {
        private readonly cDbContext oContext;

        public C_ProductService(cDbContext context)
        {
            oContext = context;
        }

        public bool C_ADDbProduct(cmlDataProduct oShopOnline)
        {
            //Send RabbitMQ
            throw new System.NotImplementedException();
        }

        public List<cmlResProduct> C_GETaoProduct(string tSearchPdtCode = "")
        {
            try
            {
                List<cmlResProduct> aoProduct = new List<cmlResProduct>();
                var cmlPdt = oContext.TSOLMProducts.AsQueryable();
                if (!string.IsNullOrEmpty(tSearchPdtCode))
                {
                    cmlPdt = cmlPdt.Where(x=>x.FTPdtCode.Contains(tSearchPdtCode));
                }
                foreach (var pdt in cmlPdt.ToList())
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
