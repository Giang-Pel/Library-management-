using QUANLYTHUVIEN.DataAccessLayer;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QUANLYTHUVIEN.GUI
{
    public partial class frm_TK : Form
    {
        DataTable dt1 = new DataTable();
        DataTable dt2 = new DataTable();
        public frm_TK()
        {
            InitializeComponent();
        }

        private void frm_TK_Load(object sender, EventArgs e)
        {
            string sql1 = "select CuonSach.MaCS as DM from CuonSach, ChiTietMuon where CuonSach.MaCS=ChiTietMuon.MaCS";
            dt1 = DataProvider.GetData(sql1);
            gridControl1.DataSource = dt1;
            string sql2 = "select CuonSach.MaCS as CM from CuonSach except select MaCS from ChiTietMuon";
            dt2 = DataProvider.GetData(sql2);
            gridControl2.DataSource = dt2;
        }
    }
}
