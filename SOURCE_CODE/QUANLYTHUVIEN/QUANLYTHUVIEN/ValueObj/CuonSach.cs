using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QUANLYTHUVIEN.ValueObj
{
    public class CuonSach
    {
        private string maCS;
        private string tenCS;
        private string maTS;
        private string soPN;

        public string MaCS { get => maCS; set => maCS = value; }
        public string TenCS { get => tenCS; set => tenCS = value; }
        public string MaTS { get => maTS; set => maTS = value; }
        public string SoPN { get => soPN; set => soPN = value; }
    }
}
