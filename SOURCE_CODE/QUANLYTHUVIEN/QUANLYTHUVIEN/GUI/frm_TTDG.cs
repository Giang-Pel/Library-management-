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
    public partial class frm_TTDG : Form
    {
        private string username;
        public frm_TTDG(string loggedUser)
        {
            this.username = loggedUser;
            InitializeComponent();
            
        }
        public string temp2;
        private void frm_TTDG_Load(object sender, EventArgs e)
        {
            txt_MaDG.Text = username;
            DataTable ttdg = new DataTable();
            string sql = "select *from DocGia where MaDG='" + username + "'";
            ttdg = DataProvider.GetData(sql);
            txt_MaDG.Text = ttdg.Rows[0][0].ToString();
            txt_TenDG.Text = ttdg.Rows[0][1].ToString();
            txt_NS.Text = ttdg.Rows[0][2].ToString();
            txt_GT.Text = ttdg.Rows[0][3].ToString();
            txt_DC.Text = ttdg.Rows[0][4].ToString();
            txt_SDT.Text = ttdg.Rows[0][5].ToString();
        }
    }
}
