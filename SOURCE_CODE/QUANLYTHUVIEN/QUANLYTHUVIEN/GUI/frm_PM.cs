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
    public partial class frm_PM : Form
    {
        DataTable dt = BUS.Select_PM();
        private readonly PhieuMuon pm;
        bool insert = false; bool update = false;
        public frm_PM()
        {
            InitializeComponent();
            pm = new PhieuMuon();
        }

        private void frm_PM_Load(object sender, EventArgs e)
        {
            gridControl2.DataSource = dt;
            btn_save.Enabled = false; btn_cancel.Enabled = false;
            string sqlcs = "select *from CuonSach";
            cmb_MaCS.DataSource = DataProvider.GetData(sqlcs);
            cmb_MaCS.DisplayMember = "MaCS";
            string sqltt = "select *from ThuThu";
            cmb_TenTT.DataSource = DataProvider.GetData(sqltt);
            cmb_TenTT.DisplayMember = "TenTT";
            cmb_TenTT.ValueMember = "MaTT";
            string sqlts = "select *from TuaSach";
            cmb_TenTS.DataSource = DataProvider.GetData(sqlts);
            cmb_TenTS.DisplayMember = "TenTS";
            cmb_TenTS.ValueMember = "MaTS";
            string sqldg = "select *from DocGia";
            cmb_TenDG.DataSource = DataProvider.GetData(sqldg);
            cmb_TenDG.DisplayMember = "TenDG";
            cmb_TenDG.ValueMember = "MaDG";
        }

        private void txt_search_TextChanged(object sender, EventArgs e)
        {
            string std = string.Format("TenDG like '%{0}%'", txt_search.Text);
            dt.DefaultView.RowFilter = std;
        }

        private void btn_delete_Click(object sender, EventArgs e)
        {

            if (MessageBox.Show("Bạn có muốn xóa hay không", "DELETE", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.OK)
            {
                pm.MaPM = txt_MaPM.Text;
                gridControl2.DataSource = BUS.Delete_PM(pm);
                MessageBox.Show("Đã xóa thành công");
                gridControl2.DataSource = BUS.Select_PM();
            }
        }
        private void txt_search_MouseClick(object sender, MouseEventArgs e)
        {
            txt_search.Text = "";
        }

        private void btn_insert_Click(object sender, EventArgs e)
        {
            btn_save.Enabled = true; btn_delete.Enabled = false; btn_update.Enabled = false;
            txt_MaPM.Enabled = true; btn_cancel.Enabled = true;
            insert = true; update = false;
        }

        private void btn_update_Click(object sender, EventArgs e)
        {
            btn_save.Enabled = true;
            btn_delete.Enabled = false;
            btn_insert.Enabled = false;
            update = true;
            btn_cancel.Enabled = true;
            cmb_MaCS.Enabled = true;
            insert = false;
        }

        private void btn_save_Click(object sender, EventArgs e)
        {
            PhieuMuon pm2 = new PhieuMuon();
            pm2.MaPM = txt_MaPM.Text;
            pm2.NgayMuon = date_NM.Value;
            pm2.NgayTra = date_NT.Value;
            pm2.MaDG = cmb_TenDG.SelectedValue.ToString();
            pm2.MaTT = cmb_TenTT.SelectedValue.ToString();
            ChiTietMuon ctm = new ChiTietMuon();
            ctm.MaPM = txt_MaPM.Text;
            ctm.MaCS = cmb_MaCS.Text;
            ctm.TinhTrang = cmb_TT.Text;

            if (insert)
            {
                if (MessageBox.Show("Bạn muốn lưu dữ liệu được thêm mơi không???", "SAVE", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.OK)
                {
                    DataTable test = new DataTable(); //  kiểm tra mã đã  có trong bảng chưa???
                    string sql = "select *from PhieuMuon where MaPM= '" + txt_MaPM.Text + "'";
                    test = DataProvider.GetData(sql);
                    int i = test.Rows.Count;
                    if (i > 0)
                    {
                        BUS.Insert_CTM(ctm);
                        MessageBox.Show("Đã thêm chi tiết mượn vào  " + txt_MaPM.Text, "Thông Báo !!!", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        gridControl2.DataSource = BUS.Select_PM();
                    }
                    else
                    {

                        BUS.Insert_PM(pm2);
                        BUS.Insert_CTM(ctm);
                        MessageBox.Show("Đã lưu thành công");
                        gridControl2.DataSource = BUS.Select_PM();
                    }
                }
            }
            if (update)
            {
                if (MessageBox.Show("Bạn muốn lưu thay đổi không???", "SAVE", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.OK)
                {
                    gridControl2.DataSource = BUS.Update_PM(pm2);
                    gridControl2.DataSource = BUS.Update_CTM(ctm);
                    MessageBox.Show("Đã lưu thành công");
                    gridControl2.DataSource = BUS.Select_PM();
                }
            }
            txt_MaPM.Enabled = false; cmb_MaCS.Enabled = true;
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
                txt_MaPM.Enabled = false;
                btn_insert.Enabled = true;
                btn_update.Enabled = true;
                btn_delete.Enabled = true;
                btn_save.Enabled = false;
                btn_cancel.Enabled = false;
            }
        }
        private void cmb_MaCS_Click(object sender, EventArgs e)
        {
            string sql = "select MaCS from CuonSach where MaTS = '" + cmb_TenTS.SelectedValue.ToString() + "'";
            cmb_MaCS.DataSource = DataProvider.GetData(sql);
            cmb_MaCS.DisplayMember = "MaCS";
        }

        private void gridControl2_SelectionChanged(object sender, EventArgs e)
        {

            if (gridControl2.SelectedRows.Count > 0)
            {
                txt_MaPM.Text = gridControl2.SelectedRows[0].Cells[0].Value.ToString();


                for (int i = 0; i < cmb_TenTS.Items.Count; i++)
                {
                    string gridTenTS = gridControl2.SelectedRows[0].Cells[9].Value.ToString().Trim().ToUpper();
                    string cmdTenTS = ((DataRowView)cmb_TenTS.Items[i]).Row[1].ToString().Trim().ToUpper();
                    if (gridTenTS == cmdTenTS)
                    {
                        cmb_TenTS.SelectedIndex = i;
                        break;

                    }
                }
                for (int i = 0; i < cmb_TenDG.Items.Count; i++)
                {
                    string gridTenDG = gridControl2.SelectedRows[0].Cells[4].Value.ToString().Trim().ToUpper();
                    string cmdTenDG = ((DataRowView)cmb_TenDG.Items[i]).Row[1].ToString().Trim().ToUpper();
                    if (gridTenDG == cmdTenDG)
                    {
                        cmb_TenDG.SelectedIndex = i;
                        break;
                    }
                }
                for (int i = 0; i < cmb_TenTT.Items.Count; i++)
                {
                    string gridTenTT = gridControl2.SelectedRows[0].Cells[6].Value.ToString().Trim().ToUpper();
                    string cmdTenTT = ((DataRowView)cmb_TenTT.Items[i]).Row[1].ToString().Trim().ToUpper();
                    if (gridTenTT == cmdTenTT)
                    {
                        cmb_TenTT.SelectedIndex = i;
                        break;
                    }
                }
                for (int i = 0; i < cmb_MaCS.Items.Count; i++)
                {
                    string gridMaCS = gridControl2.SelectedRows[0].Cells[7].Value.ToString().Trim().ToUpper();
                    string cmdMaCS = ((DataRowView)cmb_MaCS.Items[i]).Row[1].ToString().Trim().ToUpper();
                    if (gridMaCS == cmdMaCS)
                    {
                        cmb_MaCS.SelectedIndex = i;
                        break;
                    }
                }
                for (int i = 0; i < cmb_TT.Items.Count; i++)
                {
                    string gridTT = gridControl2.SelectedRows[0].Cells[10].Value.ToString().Trim().ToUpper();
                    string cmdTT = cmb_TT.Items[i].ToString().Trim().ToUpper();
                    if (gridTT == cmdTT)
                    {
                        cmb_TT.SelectedIndex = i;
                        break;
                    }
                }
            }
        }

    }
}
