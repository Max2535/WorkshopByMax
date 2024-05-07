using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BuildingBlocks.Models.WebService.Response.ShopOnline
{
    public class cmlResProduct
    {
        public string rtCode { get; set; }
        public string rtName { get; set; }
        public Nullable<int> rnQty { get; set; }
        public Nullable<decimal> rcPri { get; set; }
        public string rtImgPdt { get; set; }
    }
}
