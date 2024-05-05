using System;
using System.Collections.Generic;
using System.Linq;
using WebApi.Class;
using BuildingBlocks.Models.WebService.Request.ShopOnline;
using BuildingBlocks.Models.WebService.Response.ShopOnline;

namespace WebApi.Services
{
    public class cProductService : IcProductService
    {
        private readonly cDbContext _context;

        public cProductService(cDbContext context)
        {
            _context = context;
        }

        public bool C_ADDbProduct(cmlDataProduct oShopOnline)
        {
            throw new System.NotImplementedException();
        }

        public List<cmlResProduct> C_GETaoProduct()
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
