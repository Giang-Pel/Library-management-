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
    public partial class frm_TG : Form
    {
        private readonly TacGia tg;
        DataTable dt = BUS.Select_TG();
        bool insert = false;
        bool update = false;
        public frm_TG()
        {
            InitializeComponent();
            tg = new TacGia();
        }

        private void frm_TG_Load(object sender, EventArgs e)
        {
            gridControl2.DataSource = null;
            gridControl2.DataSource = dt;
        }

        private void btn_delete_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn có muốn xóa hay không", "DELETE", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.OK)
            {
                DataTable kttt = new DataTable(); // kttt kiểm tra thông tin có trong bảng khác không???

                string sql = "select *from Viet where MaTG= '" + txt_MaTG.Text + "'";
                kttt = DataProvider.GetData(sql);
                int i = kttt.Rows.Count;
                if (i > 0)
                    MessageBox.Show("Dữ liệu '" + txt_MaTG.Text + "' có trong bảng Viet!", "Error !!!", MessageBoxButtons.OK, MessageBoxIcon.Error);
                else
                {
                    tg.MaTG = txt_MaTG.Text;
                    gridControl2.DataSource = BUS.Delete_TG(tg);
                    MessageBox.Show("Đã xóa thành công");
                    gridControl2.DataSource = BUS.Select_TG();
                }
            }

        }
        private void txt_search_MouseClick(object sender, MouseEventArgs e)
        {
            txt_search.Text = "";
        }

        private void txt_search_TextChanged(object sender, EventArgs e)
        {
            string std = string.Format("TenTG like '%{0}%'", txt_search.Text);
            dt.DefaultView.RowFilter = std;
        }

        private void btn_insert_Click(object sender, EventArgs e)
        {

            btn_save.Enabled = true; btn_delete.Enabled = false; btn_update.Enabled = false;
            txt_MaTG.Enabled = true; btn_cancel.Enabled = true;
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
            TacGia tg2 = new TacGia();
            tg2.MaTG = txt_MaTG.Text;
            tg2.TenTG = txt_TenTG.Text;
            tg2.NgaySinh = date_NS.Value; 
            tg2.GioiTinh = cmb_GT.Text;
            tg2.QueQuan = txt_QQ.Text;


            if (insert)
            {
                if (MessageBox.Show("Bạn muốn lưu dữ liệu thêm mới không???", "SAVE", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.OK)
                {
                    DataTable test = new DataTable(); //  kiểm tra mã đã  có trong bảng chưa???

                    string sql = "select *from TacGia where MaTG= '" + txt_MaTG.Text + "'";
                    test = DataProvider.GetData(sql);
                    int i = test.Rows.Count;
                    if (i > 0)
                        MessageBox.Show("Đã tồn tại " + txt_MaTG.Text, "Error !!!", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    else
                    {
                        gridControl2.DataSource = BUS.Insert_TG(tg2);
                        MessageBox.Show("Đã lưu thành công");
                        gridControl2.DataSource = BUS.Select_TG();
                    }
                }
            }
            if (update)
            {
                if (MessageBox.Show("Bạn muốn lưu thay đổi không???", "SAVE", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.OK)
                {
                    gridControl2.DataSource = BUS.Update_TG(tg2);
                    MessageBox.Show("Đã lưu thành công");
                    gridControl2.DataSource = BUS.Select_TG();
                }
            }
            txt_MaTG.Enabled = false;
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
                txt_MaTG.Enabled = false;
                btn_insert.Enabled = true;
                btn_update.Enabled = true;
                btn_delete.Enabled = true;
                btn_save.Enabled = false;
                btn_cancel.Enabled = false;
            }
        }

        private void gridControl2_SelectionChanged(object sender, EventArgs e)
        {
            if (gridControl2.SelectedRows.Count > 0)
            {
                txt_MaTG.Text = gridControl2.SelectedRows[0].Cells[0].Value.ToString();
                txt_TenTG.Text = gridControl2.SelectedRows[0].Cells[1].Value.ToString();
                txt_QQ.Text = gridControl2.SelectedRows[0].Cells[4].Value.ToString();
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
            }
        }
    }
}
