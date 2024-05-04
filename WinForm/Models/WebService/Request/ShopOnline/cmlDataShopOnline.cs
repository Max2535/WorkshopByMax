using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WorkShopWebService.Models.WebService.Request.ShopOnline
{
    public class cmlDataProduct
    {
        public string ptCode { get; set; }
        public string ptName { get; set; }
        public int pnQty { get; set; }
        public int pnCnfVat { get; set; }
        public decimal pnPri { get; set; }

    }
}
