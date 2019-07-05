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
    public partial class frm_TT : Form
    {
      
        private readonly ThuThu tt;
        DataTable dt = BUS.Select_TT();
        bool insert = false;
        bool update = false;
        public frm_TT()
        {
            InitializeComponent();
            tt = new ThuThu();
        }

        private void frm_TT_Load(object sender, EventArgs e)
        {
            gridControl2.DataSource = dt;
            btn_save.Enabled = false;
            btn_cancel.Enabled = false;
        }

        private void btn_delete_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn có muốn xóa hay không", "DELETE", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.OK)
            {
                DataTable kttt = new DataTable(); // kttt kiểm tra thông tin có trong bảng khác không???

                string sql = "select *from PhieuNhap where MaTT= '" + txt_MaTT.Text + "'";
                kttt = DataProvider.GetData(sql);
                int i = kttt.Rows.Count;
                if (i > 0)
                    MessageBox.Show("Dữ liệu " + txt_MaTT.Text + " có trong bảng PhieuNhap!", "Error !!!", MessageBoxButtons.OK, MessageBoxIcon.Error);
                else
                {
                    tt.MaTT = txt_MaTT.Text;
                    gridControl2.DataSource = BUS.Delete_TT(tt);
                    MessageBox.Show("Đã xóa thành công");
                    gridControl2.DataSource = BUS.Select_TT();
                 
                }
            }
        }

        private void txt_search_TextChanged(object sender, EventArgs e)
        {
            string std = string.Format("TenTT like '%{0}%'", txt_search.Text);
            dt.DefaultView.RowFilter = std;
        }

        private void btn_insert_Click(object sender, EventArgs e)
        {

            btn_save.Enabled = true;
            btn_delete.Enabled = false;
            btn_update.Enabled = false;
            btn_cancel.Enabled = true;
            txt_MaTT.Enabled = true;
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
            ThuThu tt2 = new ThuThu();
            tt2.MaTT = txt_MaTT.Text;
            tt2.TenTT = txt_TenTT.Text;
            tt2.NgaySinh = date_NS.Value;
            tt2.GioiTinh = cmb_GT.Text;
            tt2.SDT = txt_SDT.Text;
            tt2.ChucVu = txt_CV.Text;
            tt2.DiaChi = txt_DC.Text;
            tt2.MatKhau = txt_MK.Text;


            if (insert)
            {
                if (MessageBox.Show("Bạn muốn lưu dữ liệu được thêm mơi không???", "SAVE", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.OK)
                {
                    DataTable test = new DataTable(); //  kiểm tra mã đã  có trong bảng chưa???

                    string sql = "select *from ThuThu where MaTT= '" + txt_MaTT.Text + "'";
                    test = DataProvider.GetData(sql);
                    int i = test.Rows.Count;
                    if (i > 0)
                        MessageBox.Show("Đã tồn tại " + txt_MaTT.Text, "Error !!!", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    else
                    {
                        BUS.Insert_TT(tt2);
                        MessageBox.Show("Đã lưu thành công");
                        gridControl2.DataSource = BUS.Select_TT();
                      
                    }
                }
            }
            if (update)
            {
                if (MessageBox.Show("Bạn muốn lưu thay đổi không???", "SAVE", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.OK)
                {
                    gridControl2.DataSource = BUS.Update_TT(tt2);
                    MessageBox.Show("Đã lưu thành công");
                    gridControl2.DataSource = BUS.Select_TT();
                   
                }
            }
            txt_MaTT.Enabled = false;
            btn_cancel.Enabled = false;
            btn_save.Enabled = false;
            btn_delete.Enabled = true;
            btn_update.Enabled = true;
            btn_insert.Enabled = true;
        }

        private void btn_cancel_Click(object sender, EventArgs e)
        {

        }

        private void btn_cancel_Click_1(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn có muốn hủy hay không", "Hủy thay đổi", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.OK)
            {
                txt_MaTT.Enabled = false;
                btn_insert.Enabled = true;
                btn_update.Enabled = true;
                btn_delete.Enabled = true;
                btn_save.Enabled = false;
                btn_cancel.Enabled = false;
               
            }
        }
   
        private void gridControl2_SelectionChanged_1(object sender, EventArgs e)
        {
            if (gridControl2.SelectedRows.Count > 0)
            {
                txt_MaTT.Text = gridControl2.SelectedRows[0].Cells[0].Value.ToString();
                txt_TenTT.Text = gridControl2.SelectedRows[0].Cells[1].Value.ToString();
                txt_DC.Text = gridControl2.SelectedRows[0].Cells[4].Value.ToString();
                txt_SDT.Text = gridControl2.SelectedRows[0].Cells[5].Value.ToString();
                txt_CV.Text = gridControl2.SelectedRows[0].Cells[6].Value.ToString();
                txt_MK.Text = gridControl2.SelectedRows[0].Cells[7].Value.ToString();
                for (int i = 0; i < cmb_GT.Items.Count; i++)
                {
                    string gridGT = gridControl2.SelectedRows[0].Cells[3].Value.ToString().Trim().ToUpper();
                    //string cmdGT = ((DataRowView)cmb_GT.Items[i]).Row[1].ToString().Trim().ToUpper();
                    string cmdGT = cmb_GT.Items[i].ToString().Trim().ToUpper();
                    if (gridGT == cmdGT)
                    {
                        cmb_GT.SelectedIndex = i;
                        break;

                    }
                }
            }
        }
    }
}
