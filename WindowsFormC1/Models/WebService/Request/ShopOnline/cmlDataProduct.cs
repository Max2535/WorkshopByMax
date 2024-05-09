using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WindowsFormC1.Models.WebService.Request.ShopOnline
{
    public class cmlDataProduct
    {
        public string ptCode { get; set; }
        public string ptName { get; set; }
        public string ptImgPdt { get; set; }
        public Nullable<int> pnQty { get; set; }
        public Nullable<int> pnCnfVat { get; set; }
        public Nullable<decimal> pnPri { get; set; }

    }
}
