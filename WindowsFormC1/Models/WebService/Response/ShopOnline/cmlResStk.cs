using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WindowsFormC1.Models.WebService.Response.ShopOnline
{
    public class cmlResStk
    {
        public string rtPdtCode { get; set; }
        public string rtOrdCode { get; set; }
        public Nullable<int> rnInvQty { get; set; }
        public Nullable<DateTime> rdInvDte { get; set; }
    }
}
