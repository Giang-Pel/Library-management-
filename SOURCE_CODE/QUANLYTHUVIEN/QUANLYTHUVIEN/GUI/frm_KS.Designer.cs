namespace QUANLYTHUVIEN.GUI
{
    partial class frm_KS
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frm_KS));
            this.panel2 = new System.Windows.Forms.Panel();
            this.txt_SL = new System.Windows.Forms.TextBox();
            this.txt_SC = new System.Windows.Forms.TextBox();
            this.txt_CL = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label11 = new System.Windows.Forms.Label();
            this.txt_MaKe = new System.Windows.Forms.TextBox();
            this.label12 = new System.Windows.Forms.Label();
            this.txt_search = new System.Windows.Forms.TextBox();
            this.btn_delete = new System.Windows.Forms.Button();
            this.imageList1 = new System.Windows.Forms.ImageList(this.components);
            this.btn_update = new System.Windows.Forms.Button();
            this.btn_cancel = new System.Windows.Forms.Button();
            this.btn_save = new System.Windows.Forms.Button();
            this.btn_insert = new System.Windows.Forms.Button();
            this.panel5 = new System.Windows.Forms.Panel();
            this.gridControl2 = new System.Windows.Forms.DataGridView();
            this.panel1 = new System.Windows.Forms.Panel();
            this.panel2.SuspendLayout();
            this.panel5.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl2)).BeginInit();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.txt_SL);
            this.panel2.Controls.Add(this.txt_SC);
            this.panel2.Controls.Add(this.txt_CL);
            this.panel2.Controls.Add(this.label3);
            this.panel2.Controls.Add(this.label2);
            this.panel2.Controls.Add(this.label11);
            this.panel2.Controls.Add(this.txt_MaKe);
            this.panel2.Controls.Add(this.label12);
            this.panel2.Location = new System.Drawing.Point(12, 1);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(831, 70);
            this.panel2.TabIndex = 16;
            // 
            // txt_SL
            // 
            this.txt_SL.Location = new System.Drawing.Point(610, 39);
            this.txt_SL.Name = "txt_SL";
            this.txt_SL.Size = new System.Drawing.Size(208, 20);
            this.txt_SL.TabIndex = 21;
            // 
            // txt_SC
            // 
            this.txt_SC.Location = new System.Drawing.Point(193, 39);
            this.txt_SC.Name = "txt_SC";
            this.txt_SC.Size = new System.Drawing.Size(208, 20);
            this.txt_SC.TabIndex = 20;
            // 
            // txt_CL
            // 
            this.txt_CL.Location = new System.Drawing.Point(610, 12);
            this.txt_CL.Name = "txt_CL";
            this.txt_CL.Size = new System.Drawing.Size(208, 20);
            this.txt_CL.TabIndex = 19;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Courier New", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(434, 44);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(138, 18);
            this.label3.TabIndex = 18;
            this.label3.Text = "Số lượng sách";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Courier New", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(434, 13);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(98, 18);
            this.label2.TabIndex = 17;
            this.label2.Text = "Chất liệu";
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Font = new System.Drawing.Font("Courier New", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label11.Location = new System.Drawing.Point(7, 11);
            this.label11.Name = "label11";
            this.label11.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.label11.Size = new System.Drawing.Size(108, 18);
            this.label11.TabIndex = 5;
            this.label11.Text = "Mã kệ sách";
            // 
            // txt_MaKe
            // 
            this.txt_MaKe.Location = new System.Drawing.Point(193, 11);
            this.txt_MaKe.Name = "txt_MaKe";
            this.txt_MaKe.Size = new System.Drawing.Size(208, 20);
            this.txt_MaKe.TabIndex = 4;
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Font = new System.Drawing.Font("Courier New", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label12.Location = new System.Drawing.Point(7, 38);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(88, 18);
            this.label12.TabIndex = 3;
            this.label12.Text = "Sức chứa";
            // 
            // txt_search
            // 
            this.txt_search.Location = new System.Drawing.Point(530, 25);
            this.txt_search.Multiline = true;
            this.txt_search.Name = "txt_search";
            this.txt_search.Size = new System.Drawing.Size(245, 36);
            this.txt_search.TabIndex = 12;
            this.txt_search.TextChanged += new System.EventHandler(this.txt_search_TextChanged);
            // 
            // btn_delete
            // 
            this.btn_delete.Font = new System.Drawing.Font("Comic Sans MS", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_delete.ImageIndex = 1;
            this.btn_delete.ImageList = this.imageList1;
            this.btn_delete.Location = new System.Drawing.Point(100, 3);
            this.btn_delete.Name = "btn_delete";
            this.btn_delete.Size = new System.Drawing.Size(91, 79);
            this.btn_delete.TabIndex = 11;
            this.btn_delete.Text = "Xóa";
            this.btn_delete.TextImageRelation = System.Windows.Forms.TextImageRelation.TextAboveImage;
            this.btn_delete.UseVisualStyleBackColor = true;
            this.btn_delete.Click += new System.EventHandler(this.btn_delete_Click);
            // 
            // imageList1
            // 
            this.imageList1.ImageStream = ((System.Windows.Forms.ImageListStreamer)(resources.GetObject("imageList1.ImageStream")));
            this.imageList1.TransparentColor = System.Drawing.Color.Transparent;
            this.imageList1.Images.SetKeyName(0, "add_png_16398.jpg");
            this.imageList1.Images.SetKeyName(1, "file-delete.png");
            this.imageList1.Images.SetKeyName(2, "update-png-image-65027.png");
            this.imageList1.Images.SetKeyName(3, "save-a-web-page-button-png-image-76928.png");
            this.imageList1.Images.SetKeyName(4, "cancel (1).png");
            // 
            // btn_update
            // 
            this.btn_update.Font = new System.Drawing.Font("Comic Sans MS", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_update.ImageIndex = 2;
            this.btn_update.ImageList = this.imageList1;
            this.btn_update.Location = new System.Drawing.Point(196, 3);
            this.btn_update.Name = "btn_update";
            this.btn_update.Size = new System.Drawing.Size(91, 79);
            this.btn_update.TabIndex = 10;
            this.btn_update.Text = "Sửa";
            this.btn_update.TextImageRelation = System.Windows.Forms.TextImageRelation.TextAboveImage;
            this.btn_update.UseVisualStyleBackColor = true;
            this.btn_update.Click += new System.EventHandler(this.btn_update_Click);
            // 
            // btn_cancel
            // 
            this.btn_cancel.Font = new System.Drawing.Font("Comic Sans MS", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_cancel.ImageIndex = 4;
            this.btn_cancel.ImageList = this.imageList1;
            this.btn_cancel.Location = new System.Drawing.Point(390, 3);
            this.btn_cancel.Name = "btn_cancel";
            this.btn_cancel.Size = new System.Drawing.Size(91, 79);
            this.btn_cancel.TabIndex = 8;
            this.btn_cancel.Text = "Thoát";
            this.btn_cancel.TextImageRelation = System.Windows.Forms.TextImageRelation.TextAboveImage;
            this.btn_cancel.UseVisualStyleBackColor = true;
            this.btn_cancel.Click += new System.EventHandler(this.btn_cancel_Click);
            // 
            // btn_save
            // 
            this.btn_save.Font = new System.Drawing.Font("Comic Sans MS", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_save.ImageIndex = 3;
            this.btn_save.ImageList = this.imageList1;
            this.btn_save.Location = new System.Drawing.Point(293, 3);
            this.btn_save.Name = "btn_save";
            this.btn_save.Size = new System.Drawing.Size(91, 79);
            this.btn_save.TabIndex = 7;
            this.btn_save.Text = "Lưu";
            this.btn_save.TextImageRelation = System.Windows.Forms.TextImageRelation.TextAboveImage;
            this.btn_save.UseVisualStyleBackColor = true;
            this.btn_save.Click += new System.EventHandler(this.btn_save_Click);
            // 
            // btn_insert
            // 
            this.btn_insert.Font = new System.Drawing.Font("Comic Sans MS", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_insert.ImageIndex = 0;
            this.btn_insert.ImageList = this.imageList1;
            this.btn_insert.Location = new System.Drawing.Point(3, 3);
            this.btn_insert.Name = "btn_insert";
            this.btn_insert.Size = new System.Drawing.Size(91, 79);
            this.btn_insert.TabIndex = 6;
            this.btn_insert.Text = "Thêm";
            this.btn_insert.TextImageRelation = System.Windows.Forms.TextImageRelation.TextAboveImage;
            this.btn_insert.UseVisualStyleBackColor = true;
            this.btn_insert.Click += new System.EventHandler(this.btn_insert_Click);
            // 
            // panel5
            // 
            this.panel5.Controls.Add(this.gridControl2);
            this.panel5.Location = new System.Drawing.Point(11, 173);
            this.panel5.Name = "panel5";
            this.panel5.Size = new System.Drawing.Size(832, 331);
            this.panel5.TabIndex = 25;
            // 
            // gridControl2
            // 
            this.gridControl2.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.gridControl2.Location = new System.Drawing.Point(3, 0);
            this.gridControl2.Name = "gridControl2";
            this.gridControl2.Size = new System.Drawing.Size(827, 325);
            this.gridControl2.TabIndex = 0;
            this.gridControl2.SelectionChanged += new System.EventHandler(this.gridControl2_SelectionChanged);
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.btn_insert);
            this.panel1.Controls.Add(this.txt_search);
            this.panel1.Controls.Add(this.btn_cancel);
            this.panel1.Controls.Add(this.btn_delete);
            this.panel1.Controls.Add(this.btn_save);
            this.panel1.Controls.Add(this.btn_update);
            this.panel1.Location = new System.Drawing.Point(9, 82);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(828, 85);
            this.panel1.TabIndex = 38;
            // 
            // frm_KS
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(849, 516);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.panel5);
            this.Controls.Add(this.panel2);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "frm_KS";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "frm_KS";
            this.Load += new System.EventHandler(this.frm_KS_Load);
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.panel5.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gridControl2)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.TextBox txt_SL;
        private System.Windows.Forms.TextBox txt_SC;
        private System.Windows.Forms.TextBox txt_CL;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.TextBox txt_MaKe;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.TextBox txt_search;
        private System.Windows.Forms.Button btn_delete;
        private System.Windows.Forms.Button btn_update;
        private System.Windows.Forms.Button btn_cancel;
        private System.Windows.Forms.Button btn_save;
        private System.Windows.Forms.Button btn_insert;
        private System.Windows.Forms.Panel panel5;
        private System.Windows.Forms.DataGridView gridControl2;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.ImageList imageList1;
    }
}