using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QUANLYTHUVIEN.ValueObj
{
    public class ThuThu
    {
        private string maTT;
        public string MaTT
        {
            get => maTT;
            set => maTT = value;
        }

        private string tenTT;
        public string TenTT
        {
            get => tenTT;
            set => tenTT = value;
        }

        private string gioiTinh;
        public string GioiTinh
        {
            get => gioiTinh;
            set => gioiTinh = value;
        }

        private DateTime ngaySinh;
        public DateTime NgaySinh
        {
            get => ngaySinh;
            set => ngaySinh = value;
        }

        private string diaChi;
        public string DiaChi
        {
            get => diaChi;
            set => diaChi = value;
        }

        private string sDT;
        public string SDT
        {
            get => sDT;
            set => sDT = value;
        }

        private string chucVu;
        public string ChucVu
        {
            get => chucVu;
            set => chucVu = value;
        }
       
        private string matKhau;
        public string MatKhau
        {
            get => matKhau;
            set => matKhau = value;
        }

    }
}
