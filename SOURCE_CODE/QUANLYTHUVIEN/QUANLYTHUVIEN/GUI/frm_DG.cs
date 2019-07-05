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
    public partial class frm_DG : Form
    {
        private readonly DocGia dg;
        DataTable dt = BUS.Select_DG();
        bool insert = false;
        bool update = false;

        public frm_DG()
        {
            InitializeComponent();
            dg = new DocGia();
        }

        private void frm_DG_Load(object sender, EventArgs e)
        {
            gridControl2.DataSource = dt;
            btn_cancel.Enabled = false;
            btn_save.Enabled = false;
        }

        private void btn_delete_Click(object sender, EventArgs e)
        {

            if (MessageBox.Show("Bạn có muốn xóa hay không", "DELETE", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.OK)
            {
                DataTable kttt = new DataTable(); // kttt kiểm tra thông tin có trong bảng khác không???

                string sql = "select *from PhieuMuon where MaDG= '" + txt_MaDG.Text + "'";
                kttt = DataProvider.GetData(sql);
                int i = kttt.Rows.Count;
                if (i > 0)
                    MessageBox.Show("Dữ liệu " + txt_MaDG.Text + " có trong bảng PhieuMuon!", "Error !!!", MessageBoxButtons.OK, MessageBoxIcon.Error);
                else
                {
                    dg.MaDG = txt_MaDG.Text;
                    gridControl2.DataSource = BUS.Delete_DG(dg);
                    MessageBox.Show("Đã xóa thành công");
                    gridControl2.DataSource = BUS.Select_DG();
                }
            }
        }

        private void btn_insert_Click(object sender, EventArgs e)
        {
            btn_save.Enabled = true;
            btn_delete.Enabled = false;
            btn_update.Enabled = false;
            txt_MaDG.Enabled = true;
            btn_cancel.Enabled = true;
            insert = true;
            update = false;
        }

        private void btn_update_Click(object sender, EventArgs e)
        {
            btn_save.Enabled = true;
            btn_delete.Enabled = false;
            btn_insert.Enabled = false;
            update = true;
            btn_cancel.Enabled = true;
            insert = false;
        }

        private void btn_save_Click(object sender, EventArgs e)
        {
            DocGia dg2 = new DocGia();
            dg2.MaDG = txt_MaDG.Text;
            dg2.TenDG = txt_TenDG.Text;
            dg2.NgaySinh = date_NS.Value;
            dg2.GioiTinh = cmb_GT.Text;
            dg2.SDT = txt_SDT.Text;
            dg2.DiaChi = txt_DC.Text;
            dg2.MatKhau = txt_MK.Text;
            dg2.LoaiDG = cmb_LTK.Text;

            if (insert)
            {
                if (MessageBox.Show("Bạn muốn lưu dữ liệu được thêm mơi không???", "SAVE", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.OK)
                {
                    DataTable test = new DataTable(); //  kiểm tra mã đã  có trong bảng chưa???

                    string sql = "select *from DocGia where MaDG= '" + txt_MaDG.Text + "'";
                    test = DataProvider.GetData(sql);
                    int i = test.Rows.Count;
                    if (i > 0)
                        MessageBox.Show("Đã tồn tại " + txt_MaDG.Text, "Error !!!", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    else
                    {
                        BUS.Insert_DG(dg2);
                        MessageBox.Show("Đã lưu thành công");
                        gridControl2.DataSource = BUS.Select_DG();
                    }
                }
            }
            if (update)
            {
                if (MessageBox.Show("Bạn muốn lưu thay đổi không???", "SAVE", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.OK)
                {
                    gridControl2.DataSource = BUS.Update_DG(dg2);
                    MessageBox.Show("Đã lưu thành công");
                    gridControl2.DataSource = BUS.Select_DG();
                }
            }
            txt_MaDG.Enabled = false;
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
                txt_MaDG.Enabled = false;
                btn_insert.Enabled = true;
                btn_update.Enabled = true;
                btn_delete.Enabled = true;
                btn_save.Enabled = false;
                btn_cancel.Enabled = false;
            }
        }
        private void gridControl2_SelectionChanged(object sender, EventArgs e)
        {

        }

        private void gridControl2_SelectionChanged_1(object sender, EventArgs e)
        {
            if (gridControl2.SelectedRows.Count > 0)
            {
                txt_MaDG.Text = gridControl2.SelectedRows[0].Cells[0].Value.ToString();
                txt_TenDG.Text = gridControl2.SelectedRows[0].Cells[1].Value.ToString();
                txt_DC.Text = gridControl2.SelectedRows[0].Cells[4].Value.ToString();
                txt_SDT.Text = gridControl2.SelectedRows[0].Cells[5].Value.ToString();
                txt_MK.Text = gridControl2.SelectedRows[0].Cells[6].Value.ToString();
                for (int i = 0; i < cmb_GT.Items.Count; i++)
                {
                    string gridGT = gridControl2.SelectedRows[0].Cells[3].Value.ToString().Trim().ToUpper();
                    string cmdGT = cmb_GT.Items[i].ToString().Trim().ToUpper();
                    if (gridGT == cmdGT)
                    {
                        cmb_GT.SelectedIndex = i;
                        break;

                    }
                }
                for (int i=0;i<cmb_LTK.Items.Count;i++)
                {
                    string gridLDG = gridControl2.SelectedRows[0].Cells[7].Value.ToString().Trim().ToUpper();
                    string cmdLDG = cmb_LTK.Items[i].ToString().Trim().ToUpper();
                    if (gridLDG == cmdLDG)
                    {
                        cmb_LTK.SelectedIndex = i;
                        break;
                    }
                }
            }
        }

        private void label4_Click(object sender, EventArgs e)
        {

        }
    }
}
