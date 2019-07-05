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
    public partial class frm_NXB : Form
    {
        private readonly NXB nxb;
        DataTable dt = BUS.Select_NXB();
        bool insert = false;
        bool update = false;
        public frm_NXB()
        {
            InitializeComponent();
            nxb = new NXB();
        }

        private void frm_NXB_Load(object sender, EventArgs e)
        {
            gridControl2.DataSource = dt;
            btn_cancel.Enabled = false;
            btn_save.Enabled = false;
        }

        private void btn_delete_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn có muốn xóa hay không", "DELETE", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.OK)
            {
                DataTable kttt = new DataTable();

                string sql = "select *from TuaSach where MaNXB= '" + txt_MaNXB.Text + "'";
                kttt = DataProvider.GetData(sql);
                int i = kttt.Rows.Count;
                if (i > 0)
                    MessageBox.Show("Dữ liệu '" + txt_MaNXB.Text + "' có trong bảng Tựa Sách  !", "Error !!!", MessageBoxButtons.OK, MessageBoxIcon.Error);
                else
                {
                    nxb.MaNXB = txt_MaNXB.Text;
                    gridControl2.DataSource = BUS.Delete_NXB(nxb);
                    MessageBox.Show("Đã xóa thành công");
                    gridControl2.DataSource = BUS.Select_NXB();
                }
            }
        }

        private void txt_search_TextChanged(object sender, EventArgs e)
        {
            string std = string.Format("TenNXB like '%{0}%'", txt_search.Text);
            dt.DefaultView.RowFilter = std;
        }
        private void txt_search_MouseClick(object sender, MouseEventArgs e)
        {
            txt_search.Text = "";
        }

        private void btn_insert_Click(object sender, EventArgs e)
        {
            btn_save.Enabled = true; btn_delete.Enabled = false; btn_update.Enabled = false;
            txt_MaNXB.Enabled = true; btn_cancel.Enabled = true;
            insert = true; update = false;
        }

        private void btn_update_Click(object sender, EventArgs e)
        {
            btn_save.Enabled = true; btn_delete.Enabled = false; btn_insert.Enabled = false;
            update = true; btn_cancel.Enabled = true;
            insert = false;
        }

        private void btn_save_Click(object sender, EventArgs e)
        {
            NXB nxb2 = new NXB();
            nxb2.MaNXB = txt_MaNXB.Text;
            nxb2.TenNXB = txt_TenNXB.Text;
            nxb2.DiaChi = txt_DC.Text;
            nxb2.SDT = txt_SDT.Text;
            nxb2.Email = txt_Email.Text;

            if (insert)
            {
                if (MessageBox.Show("Bạn muốn lưu dữ liệu thêm mới không???", "SAVE", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.OK)
                {
                    DataTable test = new DataTable(); //  kiểm tra mã đã  có trong bảng chưa???

                    string sql = "select *from NXB where MaNXB= '" + txt_MaNXB.Text + "'";
                    test = DataProvider.GetData(sql);
                    int i = test.Rows.Count;
                    if (i > 0)
                        MessageBox.Show("Đã tồn tại " + txt_MaNXB.Text, "Error !!!", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    else
                    {
                        gridControl2.DataSource = BUS.Insert_NXB(nxb2);
                        MessageBox.Show("Đã lưu thành công");
                        gridControl2.DataSource = BUS.Select_NXB();
                    }
                }
            }
            if (update)
            {
                if (MessageBox.Show("Bạn muốn lưu thay đổi không???", "SAVE", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.OK)
                {
                    gridControl2.DataSource = BUS.Update_NXB(nxb2);
                    MessageBox.Show("Đã lưu thành công");
                    gridControl2.DataSource = BUS.Select_NXB();
                }

            }
            txt_MaNXB.Enabled = false;
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
                txt_MaNXB.Enabled = false;
                btn_insert.Enabled = true;
                btn_update.Enabled = true;
                btn_delete.Enabled = true;
                btn_save.Enabled = false;
                btn_cancel.Enabled = false;
            }
        }

        private void gridControl2_SizeChanged(object sender, EventArgs e)
        {

        }

        private void gridControl2_SelectionChanged(object sender, EventArgs e)
        {

            if (gridControl2.SelectedRows.Count > 0)
            {
                txt_MaNXB.Text = gridControl2.SelectedRows[0].Cells[0].Value.ToString();
                txt_TenNXB.Text = gridControl2.SelectedRows[0].Cells[1].Value.ToString();
                txt_DC.Text = gridControl2.SelectedRows[0].Cells[2].Value.ToString();
                txt_SDT.Text = gridControl2.SelectedRows[0].Cells[3].Value.ToString();
                txt_Email.Text = gridControl2.SelectedRows[0].Cells[4].Value.ToString();
            }
        }
    }
}
