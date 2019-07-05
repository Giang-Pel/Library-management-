using QUANLYTHUVIEN.DataAccessLayer;
using System;
using System.Data;
using System.Windows.Forms;

namespace QUANLYTHUVIEN
{
    public partial class DangNhap : Form
    {
        public DangNhap login;
        public static string Quyen;

        public DangNhap()
        {
            InitializeComponent();
        }

        private void panel2_Paint(object sender, PaintEventArgs e)
        {
       
        }

             
        private void btn_Cancel_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void btn_Log_Click(object sender, EventArgs e)
        {
            string User = txt_user.Text;
            string Password = txt_pass.Text;
            DataTable log1 = new DataTable();
            string sql1 = "select *from ThuThu where MaTT= '" + User + "'" + "and Matkhau = '" + Password + "'";
            log1 = DataProvider.GetData(sql1);
            int i = log1.Rows.Count;
            if (i > 0)
            {
                MessageBox.Show(" Đăng nhập thành công ","Chúc mừng", MessageBoxButtons.OK, MessageBoxIcon.Information);
                frm_Home home = new frm_Home();
                home.loaitaikhoan = "ThuThu";
                home.username = User;
                home.tmp = log1.Rows[0][0].ToString();
                this.Hide();
                home.ShowDialog();
                this.Show();
            }
            else
            {
                DataTable log2 = new DataTable();
                string sql2 = "select *from DocGia where MaDG= '" + User + "'" + "and Matkhau = '" + Password + "'";
                log2 = DataProvider.GetData(sql2);
                int j = log2.Rows.Count;
                if (j > 0)
                {
                    MessageBox.Show(" Đăng nhập thành công ", "Chúc mừng", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    frm_Home home = new frm_Home();
                    home.loaitaikhoan = "Docgia";
                    home.username = User;
                    home.tmp = log2.Rows[0][0].ToString();
                    home.dg = log2.Rows[0][0].ToString();
                    this.Hide();
                    home.ShowDialog();
                    this.Show();
                }
                else
                {
                    MessageBox.Show(" Sai tên tài khoản hoặc mật khẩu !");
                }
            }
          
        }
        private void DangNhap_Load(object sender, EventArgs e)
        {
            txt_pass.UseSystemPasswordChar = true;
        }

        private void chk_show_CheckedChanged(object sender, EventArgs e)
        {
            if (chk_show.Checked) txt_pass.UseSystemPasswordChar = false;

            else txt_pass.UseSystemPasswordChar = true;
        }

        private void DangNhap_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (MessageBox.Show("Bạn có thực sự muốn thoát chương trình", "Thông báo", MessageBoxButtons.OKCancel) != System.Windows.Forms.DialogResult.OK)
            {
                e.Cancel = true;
            }
        }

        private void DangNhap_Load_1(object sender, EventArgs e)
        {

        }
    }
}
