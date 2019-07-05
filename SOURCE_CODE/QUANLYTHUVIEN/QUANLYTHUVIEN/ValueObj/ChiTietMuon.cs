using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QUANLYTHUVIEN.ValueObj
{
    public class ChiTietMuon
    {
        private string maPM;
        private string maCS;
        private string tinhTrang;

        public string MaPM { get => maPM; set => maPM = value; }
        public string MaCS { get => maCS; set => maCS = value; }
        public string TinhTrang { get => tinhTrang; set => tinhTrang = value; }
    }
}
