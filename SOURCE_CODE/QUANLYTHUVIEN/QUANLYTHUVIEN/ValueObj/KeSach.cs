using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QUANLYTHUVIEN.ValueObj
{
    public class KeSach
    {
        private string maKe;
        private string chatLieu;
        private string sucChua;

        public string MaKe { get => maKe; set => maKe = value; }
        public string ChatLieu { get => chatLieu; set => chatLieu = value; }
        public string SucChua { get => sucChua; set => sucChua = value; }
    }
}
