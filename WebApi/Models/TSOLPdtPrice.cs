using System;
using System.Collections.Generic;

#nullable disable

namespace WebApi.Models
{
    public partial class TSOLPdtPrice
    {
        public string FTPriCode { get; set; }
        public string FTPdtCode { get; set; }
        public DateTime? FDPriStart { get; set; }
        public DateTime? FDPriStop { get; set; }
        public decimal? FCPdtPrice { get; set; }
    }
}
