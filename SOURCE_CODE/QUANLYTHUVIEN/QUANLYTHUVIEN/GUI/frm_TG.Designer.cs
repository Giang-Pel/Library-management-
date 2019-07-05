namespace QUANLYTHUVIEN.GUI
{
    partial class frm_TG
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frm_TG));
            this.panel2 = new System.Windows.Forms.Panel();
            this.date_NS = new System.Windows.Forms.DateTimePicker();
            this.cmb_GT = new System.Windows.Forms.ComboBox();
            this.txt_TenTG = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.txt_QQ = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label11 = new System.Windows.Forms.Label();
            this.txt_MaTG = new System.Windows.Forms.TextBox();
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
            this.panel3 = new System.Windows.Forms.Panel();
            this.panel2.SuspendLayout();
            this.panel5.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl2)).BeginInit();
            this.panel3.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.date_NS);
            this.panel2.Controls.Add(this.cmb_GT);
            this.panel2.Controls.Add(this.txt_TenTG);
            this.panel2.Controls.Add(this.label3);
            this.panel2.Controls.Add(this.label2);
            this.panel2.Controls.Add(this.txt_QQ);
            this.panel2.Controls.Add(this.label1);
            this.panel2.Controls.Add(this.label11);
            this.panel2.Controls.Add(this.txt_MaTG);
            this.panel2.Controls.Add(this.label12);
            this.panel2.Location = new System.Drawing.Point(2, 2);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(831, 94);
            this.panel2.TabIndex = 14;
            // 
            // date_NS
            // 
            this.date_NS.Location = new System.Drawing.Point(610, 38);
            this.date_NS.Name = "date_NS";
            this.date_NS.Size = new System.Drawing.Size(208, 20);
            this.date_NS.TabIndex = 21;
            // 
            // cmb_GT
            // 
            this.cmb_GT.FormattingEnabled = true;
            this.cmb_GT.Items.AddRange(new object[] {
            "Nam",
            "Nữ"});
            this.cmb_GT.Location = new System.Drawing.Point(193, 37);
            this.cmb_GT.Name = "cmb_GT";
            this.cmb_GT.Size = new System.Drawing.Size(208, 21);
            this.cmb_GT.TabIndex = 20;
            // 
            // txt_TenTG
            // 
            this.txt_TenTG.Location = new System.Drawing.Point(610, 12);
            this.txt_TenTG.Name = "txt_TenTG";
            this.txt_TenTG.Size = new System.Drawing.Size(208, 20);
            this.txt_TenTG.TabIndex = 19;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Courier New", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(434, 44);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(98, 18);
            this.label3.TabIndex = 18;
            this.label3.Text = "Ngày sinh";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Courier New", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(434, 13);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(68, 18);
            this.label2.TabIndex = 17;
            this.label2.Text = "Họ tên";
            // 
            // txt_QQ
            // 
            this.txt_QQ.Location = new System.Drawing.Point(193, 65);
            this.txt_QQ.Name = "txt_QQ";
            this.txt_QQ.Size = new System.Drawing.Size(625, 20);
            this.txt_QQ.TabIndex = 15;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Courier New", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(7, 65);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(88, 18);
            this.label1.TabIndex = 10;
            this.label1.Text = "Quê quán";
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Font = new System.Drawing.Font("Courier New", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label11.Location = new System.Drawing.Point(7, 11);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(108, 18);
            this.label11.TabIndex = 5;
            this.label11.Text = "Mã tác giả";
            // 
            // txt_MaTG
            // 
            this.txt_MaTG.Location = new System.Drawing.Point(193, 11);
            this.txt_MaTG.Name = "txt_MaTG";
            this.txt_MaTG.Size = new System.Drawing.Size(208, 20);
            this.txt_MaTG.TabIndex = 4;
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Font = new System.Drawing.Font("Courier New", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label12.Location = new System.Drawing.Point(7, 38);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(98, 18);
            this.label12.TabIndex = 3;
            this.label12.Text = "Giới tính";
            // 
            // txt_search
            // 
            this.txt_search.Location = new System.Drawing.Point(535, 21);
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
            this.btn_delete.Location = new System.Drawing.Point(97, 3);
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
            this.btn_update.Location = new System.Drawing.Point(194, 3);
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
            this.btn_cancel.Location = new System.Drawing.Point(388, 3);
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
            this.btn_save.Location = new System.Drawing.Point(291, 3);
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
            this.btn_insert.Location = new System.Drawing.Point(0, 3);
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
            this.panel5.Location = new System.Drawing.Point(2, 191);
            this.panel5.Name = "panel5";
            this.panel5.Size = new System.Drawing.Size(832, 334);
            this.panel5.TabIndex = 23;
            // 
            // gridControl2
            // 
            this.gridControl2.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.gridControl2.Location = new System.Drawing.Point(0, 3);
            this.gridControl2.Name = "gridControl2";
            this.gridControl2.Size = new System.Drawing.Size(827, 328);
            this.gridControl2.TabIndex = 0;
            this.gridControl2.SelectionChanged += new System.EventHandler(this.gridControl2_SelectionChanged);
            // 
            // panel3
            // 
            this.panel3.Controls.Add(this.btn_insert);
            this.panel3.Controls.Add(this.txt_search);
            this.panel3.Controls.Add(this.btn_delete);
            this.panel3.Controls.Add(this.btn_update);
            this.panel3.Controls.Add(this.btn_cancel);
            this.panel3.Controls.Add(this.btn_save);
            this.panel3.Location = new System.Drawing.Point(2, 103);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(828, 85);
            this.panel3.TabIndex = 41;
            // 
            // frm_TG
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(836, 526);
            this.Controls.Add(this.panel3);
            this.Controls.Add(this.panel5);
            this.Controls.Add(this.panel2);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "frm_TG";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "frm_TG";
            this.Load += new System.EventHandler(this.frm_TG_Load);
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.panel5.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gridControl2)).EndInit();
            this.panel3.ResumeLayout(false);
            this.panel3.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.TextBox txt_TenTG;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txt_QQ;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.TextBox txt_MaTG;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.TextBox txt_search;
        private System.Windows.Forms.Button btn_delete;
        private System.Windows.Forms.Button btn_update;
        private System.Windows.Forms.Button btn_cancel;
        private System.Windows.Forms.Button btn_save;
        private System.Windows.Forms.Button btn_insert;
        private System.Windows.Forms.Panel panel5;
        private System.Windows.Forms.DataGridView gridControl2;
        private System.Windows.Forms.ComboBox cmb_GT;
        private System.Windows.Forms.ImageList imageList1;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.DateTimePicker date_NS;
    }
}