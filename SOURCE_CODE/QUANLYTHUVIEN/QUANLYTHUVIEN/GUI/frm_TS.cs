using QUANLYTHUVIEN.BUSLayer;
using QUANLYTHUVIEN.DataAccessLayer;
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
    public partial class frm_TS : Form
    {
        DataTable dt = BUS.Select_TS();
        private readonly TuaSach ts;
        bool insert = false;
        bool update = false;
        public frm_TS()
        {
            InitializeComponent();
            ts = new TuaSach();
        }

        private void frm_TS_Load(object sender, EventArgs e)
        {
            gridControl2.DataSource = dt;
            btn_cancel.Enabled = false;
            btn_save.Enabled = false;
            string sqltg = "select *from TacGia";
            cmb_TG.DataSource = DataProvider.GetData(sqltg);
            cmb_TG.DisplayMember = "TenTG";
            cmb_TG.ValueMember = "MaTG";
            string sqlnxb = "select *from NXB";
            cmb_NXB.DataSource = DataProvider.GetData(sqlnxb);
            cmb_NXB.DisplayMember = "TenNXB";
            cmb_NXB.ValueMember = "MaNXB";
            string sqlks = "select *from KeSach";
            cmb_KS.DataSource = DataProvider.GetData(sqlks);
            cmb_KS.DisplayMember = "MaKe";
        }

        private void txt_search_TextChanged(object sender, EventArgs e)
        {
            string std = string.Format("TenTS like '%{0}%'", txt_search.Text);
            dt.DefaultView.RowFilter = std;
        }

        private void btn_delete_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn có muốn xóa hay không", "DELETE", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.OK)
            {
                DataTable kttt = new DataTable(); // kttt kiểm tra thông tin có trong bảng khác không???

                string sql = "select *from CuonSach where MaTS= '" + txt_MaTS.Text + "'";
                kttt = DataProvider.GetData(sql);
                int i = kttt.Rows.Count;
                if (i > 0)
                    MessageBox.Show("Dữ liệu " + txt_MaTS.Text + " có trong bảng CuonSach!", "Error !!!", MessageBoxButtons.OK, MessageBoxIcon.Error);
                else
                {
                    ts.MaTS = txt_MaTS.Text;
                    gridControl2.DataSource = BUS.Delete_TS(ts);
                    MessageBox.Show("Đã xóa thành công");
                    gridControl2.DataSource = BUS.Select_TS();
                }
            }
        }

        private void txt_search_MouseClick(object sender, MouseEventArgs e)
        {
            txt_search.Text = "";
        }

        private void btn_insert_Click(object sender, EventArgs e)
        {
            btn_save.Enabled = true;
            btn_delete.Enabled = false;
            btn_update.Enabled = false;
            btn_cancel.Enabled = true;
            txt_MaTS.Enabled = true;
            txt_SL.Enabled = true;
            insert = true;
            update = false;
        }

        private void btn_update_Click(object sender, EventArgs e)
        {
            btn_save.Enabled = true;
            btn_delete.Enabled = false;
            btn_insert.Enabled = false;
            btn_cancel.Enabled = true;
            insert = false;
            update = true;
        }

        private void btn_save_Click(object sender, EventArgs e)
        {
            TuaSach ts2 = new TuaSach();
            
            ts2.MaTS = txt_MaTS.Text ; ts2.TenTS = txt_TenTS.Text;
            ts2.NamXB = int.Parse(txt_XB.Text); ts2.TheLoai = txt_TL.Text;
            ts2.MaNXB = cmb_NXB.SelectedValue.ToString(); ts2.MaKe = cmb_KS.Text;
            ts2.SoLuong = txt_SL.Text;
            Viet v = new Viet();
            v.MaTS = txt_MaTS.Text;
            v.MaTG = cmb_TG.SelectedValue.ToString();
            v.SoTrang = int.Parse(txt_ST.Text);

            if (insert)
            {
                if (MessageBox.Show("Bạn muốn lưu dữ liệu được thêm mới không???", "SAVE", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.OK)
                {
                    DataTable test = new DataTable(); //  kiểm tra mã đã  có trong bảng chưa???

                    string sql = "select *from TuaSach where MaTS= '" + txt_MaTS.Text + "'";
                    test = DataProvider.GetData(sql);
                    int i = test.Rows.Count;
                    if (i > 0)
                        MessageBox.Show("Đã tồn tại " + txt_MaTS.Text, "Error !!!", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    else
                    {

                        BUS.Insert_TS(ts2);
                        BUS.Insert_Viet(v);
                        MessageBox.Show("Đã lưu thành công");
                        gridControl2.DataSource = BUS.Select_TS();
                       
                    }
                }
            }
            if (update)
            {
                if (MessageBox.Show("Bạn muốn lưu thay đổi không???", "SAVE", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.OK)
                {
                    gridControl2.DataSource = BUS.Update_TS(ts2);
                    gridControl2.DataSource = BUS.Update_Viet(v);
                    MessageBox.Show("Đã lưu thành công");
                    gridControl2.DataSource = BUS.Select_TS();
                   
                }
            }
            txt_MaTS.Enabled = false; txt_SL.Enabled = false;
            btn_cancel.Enabled = false;
            btn_save.Enabled = false;
            btn_delete.Enabled = true;
            btn_update.Enabled = true;
            btn_insert.Enabled = true;
        }

        private void btn_cancel_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn có muốn hủy hay không", "Hủy thay đổi", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.OK)
            {
                txt_MaTS.Enabled = false; txt_SL.Enabled = false;
                btn_insert.Enabled = true;
                btn_update.Enabled = true;
                btn_delete.Enabled = true;
                btn_save.Enabled = false;
                btn_cancel.Enabled = false;
               
            }
        }
        private void txt_XB_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!Char.IsDigit(e.KeyChar) && !Char.IsControl(e.KeyChar))
                e.Handled = true;
        }

        private void txt_ST_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!Char.IsDigit(e.KeyChar) && !Char.IsControl(e.KeyChar))
                e.Handled = true;
        }

        private void txt_SL_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!Char.IsDigit(e.KeyChar) && !Char.IsControl(e.KeyChar))
                e.Handled = true;
        }

        private void gridControl2_SelectionChanged(object sender, EventArgs e)
        {

            if (gridControl2.SelectedRows.Count > 0)
            {
                txt_MaTS.Text = gridControl2.SelectedRows[0].Cells[0].Value.ToString();
                for (int i = 0; i < cmb_NXB.Items.Count; i++)
                {
                    string gridNSX = gridControl2.SelectedRows[0].Cells[6].Value.ToString().Trim().ToUpper();
                    string cmdNSX =((DataRowView)cmb_NXB.Items[i]).Row[1].ToString().Trim().ToUpper();
                    if (gridNSX == cmdNSX)
                        {
                        cmb_NXB.SelectedIndex = i;
                        break;

                    }
                }
                txt_TenTS.Text = gridControl2.SelectedRows[0].Cells[1].Value.ToString();
                txt_TL.Text = gridControl2.SelectedRows[0].Cells[3].Value.ToString();
                txt_SL.Text = gridControl2.SelectedRows[0].Cells[8].Value.ToString();
                txt_XB.Text = gridControl2.SelectedRows[0].Cells[2].Value.ToString();
                txt_ST.Text = gridControl2.SelectedRows[0].Cells[4].Value.ToString();
                for(int i=0; i < cmb_KS.Items.Count;i++)
                {
                    string gridKS = gridControl2.SelectedRows[0].Cells[5].Value.ToString().Trim().ToUpper();
                    string cmdKS = ((DataRowView)cmb_KS.Items[i]).Row[1].ToString().Trim().ToUpper();
                    if (gridKS == cmdKS)
                    {
                        cmb_KS.SelectedIndex = i;
                        break;
                    }
                }
                for (int i = 0; i < cmb_TG.Items.Count; i++)
                {
                    string gridTG = gridControl2.SelectedRows[0].Cells[7].Value.ToString().Trim().ToUpper();
                    string cmdTG = ((DataRowView)cmb_TG.Items[i]).Row[1].ToString().Trim().ToUpper();
                    if (gridTG == cmdTG)
                    {
                        cmb_TG.SelectedIndex = i;
                        break;
                    }
                }
            }
        }

        private void cmb_NXB_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
