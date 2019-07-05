using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QUANLYTHUVIEN.ValueObj
{
    public class PhieuNhap
    {
        private string maPN;
        private DateTime ngayLap;
        private string maTT;
        private string maNCC;

        public string MaPN { get => maPN; set => maPN = value; }
        public DateTime NgayLap { get => ngayLap; set => ngayLap = value; }
        public string MaTT { get => maTT; set => maTT = value; }
        public string MaNCC { get => maNCC; set => maNCC = value; }
    }
}
