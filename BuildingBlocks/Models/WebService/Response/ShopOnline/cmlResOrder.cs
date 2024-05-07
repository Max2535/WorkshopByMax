using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BuildingBlocks.Models.WebService.Response.ShopOnline
{
    public class cmlResOrder
    {
        public string rtOrdCode { get; set; }
        public Nullable<DateTime> rdOrdDte { get; set; }
        public string rdOrdCus { get; set; }
        public Nullable<decimal> rcTotalPri { get; set; }
    }
}
