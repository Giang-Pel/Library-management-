using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QUANLYTHUVIEN.ValueObj
{
    public class NXB
    {
        private string maNXB;
        private string tenNXB;
        private string diaChi;
        private string sDT;
        private string email;

        public string MaNXB { get => maNXB; set => maNXB = value; }
        public string TenNXB { get => tenNXB; set => tenNXB = value; }
        public string DiaChi { get => diaChi; set => diaChi = value; }
        public string SDT { get => sDT; set => sDT = value; }
        public string Email { get => email; set => email = value; }
    }
}
