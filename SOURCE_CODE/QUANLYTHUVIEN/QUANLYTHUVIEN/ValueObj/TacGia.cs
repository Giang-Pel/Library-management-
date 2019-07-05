using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QUANLYTHUVIEN.ValueObj
{
    public class TacGia
    {
        private string maTG;
        private string tenTG;
        private string gioiTinh;
        private DateTime ngaySinh;
        private string queQuan;

        public string MaTG { get => maTG; set => maTG = value; }
        public string TenTG { get => tenTG; set => tenTG = value; }
        public string GioiTinh { get => gioiTinh; set => gioiTinh = value; }
        public DateTime NgaySinh { get => ngaySinh; set => ngaySinh = value; }
        public string QueQuan { get => queQuan; set => queQuan = value; }
    }

}
