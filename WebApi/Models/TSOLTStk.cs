using System;
using System.Collections.Generic;

#nullable disable

namespace WebApi.Models
{
    public partial class TSOLTStk
    {
        public string FTPdtCode { get; set; }
        public string FTOrdCode { get; set; }
        public int FNInvQty { get; set; }
        public DateTime FDInvDate { get; set; }
        public string FTInvCnfTypeCode { get; set; }
    }
}
