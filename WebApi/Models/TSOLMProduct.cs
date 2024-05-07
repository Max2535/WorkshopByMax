using System;
using System.Collections.Generic;

#nullable disable

namespace WebApi.Models
{
    public partial class TSOLMProduct
    {
        public string FTPdtCode { get; set; }
        public string FTPdtName { get; set; }
        public int? FNPdtQty { get; set; }
        public int? FNPdtCnfVat { get; set; }
        public decimal? FCPdtPri { get; set; }
        public bool? FBPdtAct { get; set; }
    }
}
