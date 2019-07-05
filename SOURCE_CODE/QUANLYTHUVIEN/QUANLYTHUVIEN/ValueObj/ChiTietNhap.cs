using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QUANLYTHUVIEN.ValueObj
{
    public class ChiTietNhap
    {
        private string maPN;
        private string maTS;
        private int soLuong;
        private int donGia;

        public string MaPN { get => maPN; set => maPN = value; }
        public string MaTS { get => maTS; set => maTS = value; }
        public int SoLuong { get => soLuong; set => soLuong = value; }
        public int DonGia { get => donGia; set => donGia = value; }
    }
}
