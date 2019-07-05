using QUANLYTHUVIEN.BUSLayer;
using QUANLYTHUVIEN.Form_info;
using QUANLYTHUVIEN.ValueObj;
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
    public partial class frm_CS : Form
    {

        DataTable dt = BUS.Select_CS();
        private readonly CuonSach cs;
        public frm_CS()
        {
            InitializeComponent();
            cs = new CuonSach();
        }

        private void frm_CS_Load(object sender, EventArgs e)
        {
            gridControl2.DataSource = dt;
        }

        private void btn_TTTS_Click(object sender, EventArgs e)
        {
            frm_TTTS.MaTS = txt_MaCS.Text;
            frm_TTTS ttts = new frm_TTTS();
            ttts.ShowDialog();
        }

        private void txt_search_TextChanged(object sender, EventArgs e)
        {
            string std = string.Format("TenTS like '%{0}%'", txt_search.Text);
            dt.DefaultView.RowFilter = std;
        }
        private void txt_search_MouseClick(object sender, MouseEventArgs e)
        {
            txt_search.Text = "";
        }

        private void btn_delete_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn có muốn xóa hay không", "DELETE", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.OK)
                BUS.Delete_CS(cs);
        }
    }
}
