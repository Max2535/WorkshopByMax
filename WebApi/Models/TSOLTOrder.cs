using System;
using System.Collections.Generic;

#nullable disable

namespace WebApi.Models
{
    public partial class TSOLTOrder
    {
        public string FTOrdCode { get; set; }
        public string FTOrdCusName { get; set; }
        public DateTime? FDOrdDate { get; set; }
        public decimal? FCOrdAmt { get; set; }
    }
}
