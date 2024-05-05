using System;
using System.Collections.Generic;

#nullable disable

namespace ConApp.Models
{
    public partial class TSOLTOrderDetail
    {
        public string FTOrdCode { get; set; }
        public string FTPdtCode { get; set; }
        public int? FNOrdDtQty { get; set; }
        public decimal? FCOrdDtPri { get; set; }
    }
}
