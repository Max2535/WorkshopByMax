using System;
using System.Collections.Generic;

#nullable disable

namespace WebApi.Models
{
    public partial class VSOLTOrder
    {
        public string FTOrdCode { get; set; }
        public string FTPdtCode { get; set; }
        public int? FNOrdDtQty { get; set; }
        public decimal? FCOrdDtPri { get; set; }
        public string FTPdtName { get; set; }
    }
}
