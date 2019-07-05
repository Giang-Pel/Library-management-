using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QUANLYTHUVIEN.ValueObj
{
    public class TuaSach
    {
        private string maTS;
        private string tenTS;
        private int namXB;
        private string maKe;
        private string theLoai;
        private string maNXB;
        private string sl;

        public string MaTS { get => maTS; set => maTS = value; }
        public string TenTS { get => tenTS; set => tenTS = value; }
        public int NamXB { get => namXB; set => namXB = value; }
        public string MaKe { get => maKe; set => maKe = value; }
        public string TheLoai { get => theLoai; set => theLoai = value; }
        public string MaNXB { get => maNXB; set => maNXB = value; }
        public string SoLuong { get => sl; set => sl = value; }
    }
}
