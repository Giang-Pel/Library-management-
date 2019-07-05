using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QUANLYTHUVIEN.ValueObj
{
   public class Viet
    {
        private string maTS;
        private string maTG;
        private int soTrang;

        public string MaTS { get => maTS; set => maTS = value; }
        public string MaTG { get => maTG; set => maTG = value; }
        public int SoTrang { get => soTrang; set => soTrang = value; }
    }
}
