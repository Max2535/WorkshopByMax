using System;
using System.Collections.Generic;

#nullable disable

namespace ConApp.Models
{
    public partial class TSOLTInv
    {
        public string FTOrdCode { get; set; }
        public string FTPdtCode { get; set; }
        public int? FNInvQty { get; set; }
        public DateTime? FDInvDate { get; set; }
    }
}
