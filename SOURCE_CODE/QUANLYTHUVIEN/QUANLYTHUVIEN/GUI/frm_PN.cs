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

    public partial class frm_PN : Form
    {
        DataTable dt = BUS.Select_PN();
        private readonly PhieuNhap pn;
        bool insert = false;
        bool update = false;

        public frm_PN()
        {
            InitializeComponent();
            pn = new PhieuNhap();
        }

        private void frm_PN_Load(object sender, EventArgs e)
        {
            gridControl2.DataSource = dt;
            btn_save.Enabled = false; btn_cancel.Enabled = false;
            string sqltt = "select *from ThuThu";
            cmb_TenTT.DataSource = DataProvider.GetData(sqltt);
            cmb_TenTT.DisplayMember = "TenTT";
            cmb_TenTT.ValueMember = "MaTT";
            string sqlts = "select *from TuaSach";
            cmb_TenTS.DataSource = DataProvider.GetData(sqlts);
            cmb_TenTS.DisplayMember = "TenTS";
            cmb_TenTS.ValueMember = "MaTS";
            string sqlncc = "select *from NCC";
            cmb_NCC.DataSource = DataProvider.GetData(sqlncc);
            cmb_NCC.DisplayMember = "TenNCC";
            cmb_NCC.ValueMember = "MaNCC";
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
                pn.MaPN = txt_MaPN.Text;
                gridControl2.DataSource = BUS.Delete_PN(pn);
                MessageBox.Show("Đã xóa thành công");
                gridControl2.DataSource = BUS.Select_PN();
            }
        }

        private void txt_search_MouseClick(object sender, MouseEventArgs e)
        {
            txt_search.Text = "";
        }

        private void btn_insert_Click(object sender, EventArgs e)
        {
            btn_save.Enabled = true; btn_delete.Enabled = false; btn_update.Enabled = false;
            txt_MaPN.Enabled = true; btn_cancel.Enabled = true;
            insert = true; update = false;
        }

        private void btn_update_Click(object sender, EventArgs e)
        {
            btn_save.Enabled = true; btn_delete.Enabled = false; btn_insert.Enabled = false;
            update = true; btn_cancel.Enabled = true;
            insert = false;
        }

        private void btn_cancel_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn có muốn hủy hay không", "Hủy thay đổi", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.OK)
            {
                txt_MaPN.Enabled = false;
                btn_insert.Enabled = true;
                btn_update.Enabled = true;
                btn_delete.Enabled = true;
                btn_save.Enabled = false;
                btn_cancel.Enabled = false;
            }
        }

        private void btn_save_Click(object sender, EventArgs e)
        {

            PhieuNhap pn2 = new PhieuNhap();
            pn2.MaPN = txt_MaPN.Text;
            pn2.NgayLap = date_NL.Value;
            pn2.MaNCC = cmb_NCC.SelectedValue.ToString();
            pn2.MaTT = cmb_TenTT.SelectedValue.ToString();

            ChiTietNhap ctn = new ChiTietNhap();
            ctn.MaPN = txt_MaPN.Text;
            ctn.MaTS = cmb_TenTS.SelectedValue.ToString();
            ctn.SoLuong = int.Parse(txt_SL.Text);
            ctn.DonGia = int.Parse(txt_Gia.Text);

            if (insert)
            {
                if (MessageBox.Show("Bạn muốn lưu dữ liệu được thêm mơi không???", "SAVE", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.OK)
                {
                    DataTable test = new DataTable(); //  kiểm tra mã đã  có trong bảng chưa???

                    string sql = "select *from PhieuNhap where MaPN= '" + txt_MaPN.Text + "'";
                    test = DataProvider.GetData(sql);
                    int i = test.Rows.Count;
                    if (i > 0)
                    {
                        BUS.Insert_CTN(ctn);
                        MessageBox.Show("Đã thêm chi tiết mượn vào  " + txt_MaPN.Text, "Thông Báo !!!", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        gridControl2.DataSource = BUS.Select_PN();
                    }
                    else
                    {

                        BUS.Insert_PN(pn2);
                        BUS.Insert_CTN(ctn);
                        MessageBox.Show("Đã lưu thành công");
                        gridControl2.DataSource = BUS.Select_PN();
                    }
                }
            }
            if (update)
            {
                if (MessageBox.Show("Bạn muốn lưu thay đổi không???", "SAVE", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.OK)
                {
                    gridControl2.DataSource = BUS.Update_PN(pn2);
                    gridControl2.DataSource = BUS.Update_CTN(ctn);
                    MessageBox.Show("Đã lưu thành công");
                    gridControl2.DataSource = BUS.Select_PN();
                }
            }
            txt_MaPN.Enabled = false;
            btn_cancel.Enabled = false;
            btn_save.Enabled = false;
            btn_delete.Enabled = true;
            btn_update.Enabled = true;
            btn_insert.Enabled = true;
        }

        private void gridControl2_SelectionChanged(object sender, EventArgs e)
        {
            if (gridControl2.SelectedRows.Count > 0)
            {
                txt_MaPN.Text = gridControl2.SelectedRows[0].Cells[0].Value.ToString();
                txt_SL.Text = gridControl2.SelectedRows[0].Cells[7].Value.ToString();
                txt_Gia.Text = gridControl2.SelectedRows[0].Cells[8].Value.ToString();
                txt_TT.Text = gridControl2.SelectedRows[0].Cells[9].Value.ToString();
                txt_Tong.Text = gridControl2.SelectedRows[0].Cells[10].Value.ToString();

                for (int i = 0; i < cmb_TenTS.Items.Count; i++)
                {
                    string gridTenTS = gridControl2.SelectedRows[0].Cells[6].Value.ToString().Trim().ToUpper();
                    string cmdTenTS = ((DataRowView)cmb_TenTS.Items[i]).Row[1].ToString().Trim().ToUpper();
                    if (gridTenTS == cmdTenTS)
                    {
                        cmb_TenTS.SelectedIndex = i;
                        break;
                    }
                }

                for (int i = 0; i < cmb_TenTT.Items.Count; i++)
                {
                    string gridTenTT = gridControl2.SelectedRows[0].Cells[3].Value.ToString().Trim().ToUpper();
                    string cmdTenTT = ((DataRowView)cmb_TenTT.Items[i]).Row[1].ToString().Trim().ToUpper();
                    if (gridTenTT == cmdTenTT)
                    {
                        cmb_TenTT.SelectedIndex = i;
                        break;
                    }
                }

                for (int i = 0; i < cmb_NCC.Items.Count; i++)
                {
                    string gridNCC = gridControl2.SelectedRows[0].Cells[4].Value.ToString().Trim().ToUpper();
                    string cmdNCC = ((DataRowView)cmb_NCC.Items[i]).Row[1].ToString().Trim().ToUpper();
                    if (gridNCC == cmdNCC)
                    {
                        cmb_NCC.SelectedIndex = i;
                        break;
                    }
                }
            }
        }
    }
}

