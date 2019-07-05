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
    public partial class frm_TTTT : Form
    {
        private string username;
        public frm_TTTT(string loggedUser)
        {
            this.username = loggedUser;
            InitializeComponent();
           
        }

        private void frm_TTTT_Load(object sender, EventArgs e)
        {
            txt_MaTT.Text = username;
            DataTable tttt = new DataTable();
            string sql = "select *from ThuThu where MaTT='" + username + "'";
            tttt = DataProvider.GetData(sql);
            txt_MaTT.Text = tttt.Rows[0][0].ToString();
            txt_TenTT.Text = tttt.Rows[0][1].ToString();
            txt_NS.Text = tttt.Rows[0][2].ToString();
            txt_GT.Text = tttt.Rows[0][3].ToString();
            txt_DC.Text = tttt.Rows[0][4].ToString();
            txt_SDT.Text = tttt.Rows[0][5].ToString();
            txt_CV.Text = tttt.Rows[0][6].ToString();
        }
    }
}
