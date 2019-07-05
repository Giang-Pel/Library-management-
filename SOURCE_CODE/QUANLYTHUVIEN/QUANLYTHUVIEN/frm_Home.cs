using QUANLYTHUVIEN.GUI;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QUANLYTHUVIEN
{
    public partial class frm_Home : Form
    {
        DangNhap login = new DangNhap();
        public string loaitaikhoan;
        public string username="";
        public frm_Home()
        {
            InitializeComponent();
        }
     
        public string tmp;
        public string tmp1;
        public string dg;
        public string dg1;
        private void tabPage2_Click(object sender, EventArgs e)
        {

        }

        private void frm_Home_Load(object sender, EventArgs e)
        {
            if(loaitaikhoan == "ThuThu")
            {
                btn_TT.Enabled = true;
                btn_DG.Enabled = true;
                btn_GTC.Enabled = true;
                btn_QDC.Enabled = true;
                btn_TS.Enabled = true;
                btn_TG.Enabled = true;
                btn_NXB.Enabled = true;
                btn_KS.Enabled = true;
                btn_TTMT.Enabled = true;
                btn_TK.Enabled = true;
                btn_NCC.Enabled = true;
                btn_PN.Enabled = true;
                btn_TTBT.Enabled = true;
                btn_DN.Enabled = true;
                btn_DX.Enabled = true;
            }
            else if (loaitaikhoan == "DocGia")
            {
                btn_TT.Enabled = false;
                btn_DG.Enabled = false;
                btn_GTC.Enabled = true;
                btn_QDC.Enabled = true;
                btn_TS.Enabled = true;
                btn_TG.Enabled = true;
                btn_NXB.Enabled = true;
                btn_KS.Enabled = false;
                btn_TTMT.Enabled = false;
                btn_TK.Enabled = true;
                btn_NCC.Enabled = false;
                btn_PN.Enabled = false;
                btn_TTBT.Enabled = true;
                btn_DN.Enabled = false;
                btn_DX.Enabled = true;
            }
        }

        private void btn_NCC_Click(object sender, EventArgs e)
        {
            frm_NCC f = new frm_NCC();
            this.Hide();
            f.ShowDialog();
            this.Show();
        }

        private void btn_TT_Click(object sender, EventArgs e)
        {
            frm_TT f = new frm_TT();
            this.Hide();
            f.ShowDialog();
            this.Show();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            frm_DG f = new frm_DG();
            this.Hide();
            f.ShowDialog();
            this.Show();
        }

        private void btn_GTC_Click(object sender, EventArgs e)
        {
;           frm_GT f = new frm_GT();
            this.Hide();
            f.ShowDialog();
            this.Show();
        }

        private void btn_QDC_Click(object sender, EventArgs e)
        {
         
        }

        private void btn_TS_Click(object sender, EventArgs e)
        {
            frm_TS f = new frm_TS();
            this.Hide();
            f.ShowDialog();
            this.Show();
        }

        private void btn_TG_Click(object sender, EventArgs e)
        {
            frm_TG f = new frm_TG();
            this.Hide();
            f.ShowDialog();
            this.Show();
        }

        private void btn_NXB_Click(object sender, EventArgs e)
        {
            frm_NXB f = new frm_NXB();
            this.Hide();
            f.ShowDialog();
            this.Show();
        }

        private void btn_KS_Click(object sender, EventArgs e)
        {
            frm_KS f = new frm_KS();
            this.Hide();
            f.ShowDialog();
            this.Show();
        }

        private void btn_TTMT_Click(object sender, EventArgs e)
        {
            frm_PM f = new frm_PM();
            this.Hide();
            f.ShowDialog();
            this.Show();
        }

        private void btn_TK_Click(object sender, EventArgs e)
        {
            frm_TK f = new frm_TK();
            this.Hide();
            f.ShowDialog();
            this.Show();
        }

        private void btn_PN_Click(object sender, EventArgs e)
        {
            frm_PN f = new frm_PN();
            this.Hide();
            f.ShowDialog();
            this.Show();
        }

        private void btn_TTBT_Click(object sender, EventArgs e)
        {

            if (loaitaikhoan == "ThuThu")
            {
                frm_TTTT f = new frm_TTTT(this.username);
                this.Hide();
                f.ShowDialog();
                this.Show();
            }
            else if (loaitaikhoan == "Docgia")
            {
                frm_TTDG f = new frm_TTDG(this.username);
                this.Hide();
                f.ShowDialog();
                this.Show();
            }
        }

        private void btn_DN_Click(object sender, EventArgs e)
        {
            login.ShowDialog();
            this.Hide();
        }

        private void btn_DX_Click(object sender, EventArgs e)
        {
            this.Hide();
            login.ShowDialog();
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }
    }
}
