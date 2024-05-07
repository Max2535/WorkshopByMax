using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BuildingBlocks.Models.WebService.Request.ShopOnline
{
    public class cmlDataCheckOut
    {
        public string ptCode { get; set; }
        public Nullable<int> pnQty { get; set; }
        public Nullable<int> nMaxOrd { get; set; }
        public Nullable<decimal> pnPri { get; set; }

    }
}
