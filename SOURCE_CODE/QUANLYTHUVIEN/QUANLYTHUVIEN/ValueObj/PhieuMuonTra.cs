using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QUANLYTHUVIEN.ValueObj
{
    public class PhieuMuon
    {
        private string maPM;
        private DateTime ngayMuon;
        private DateTime ngayTra;
        private string maDG;
        private string maTT;

        public string MaPM { get => maPM; set => maPM = value; }
        public DateTime NgayMuon { get => ngayMuon; set => ngayMuon = value; }
        public DateTime NgayTra { get => ngayTra; set => ngayTra = value; }
        public string MaDG { get => maDG; set => maDG = value; }
        public string MaTT { get => maTT; set => maTT = value; }
    }
}
