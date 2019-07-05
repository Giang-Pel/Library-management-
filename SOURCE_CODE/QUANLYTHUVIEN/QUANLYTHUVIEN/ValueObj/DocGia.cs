using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QUANLYTHUVIEN.ValueObj
{
    public class DocGia
    {
        private string maDG;
        private string tenDG;
        private string gioiTinh;
        private DateTime ngaySinh;
        private string diaChi;
        private string sDT;
        private string matKhau;
        private string loaiDG;

        public string MaDG { get => maDG; set => maDG = value; }
        public string TenDG { get => tenDG; set => tenDG = value; }
        public string GioiTinh { get => gioiTinh; set => gioiTinh = value; }
        public DateTime NgaySinh { get => ngaySinh; set => ngaySinh = value; }
        public string DiaChi { get => diaChi; set => diaChi = value; }
        public string SDT { get => sDT; set => sDT = value; }
        public string MatKhau { get => matKhau; set => matKhau = value; }
        public string LoaiDG { get => loaiDG; set => loaiDG = value; }
    }
}
