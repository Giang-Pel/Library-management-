namespace QUANLYTHUVIEN.GUI
{
    partial class frm_CS
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frm_CS));
            this.label11 = new System.Windows.Forms.Label();
            this.panel1 = new System.Windows.Forms.Panel();
            this.txt_MaCS = new System.Windows.Forms.TextBox();
            this.txt_TenTS = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.btn_TTTS = new System.Windows.Forms.Button();
            this.txt_search = new System.Windows.Forms.TextBox();
            this.btn_delete = new System.Windows.Forms.Button();
            this.imageList1 = new System.Windows.Forms.ImageList(this.components);
            this.btn_update = new System.Windows.Forms.Button();
            this.btn_save = new System.Windows.Forms.Button();
            this.btn_insert = new System.Windows.Forms.Button();
            this.panel5 = new System.Windows.Forms.Panel();
            this.gridControl2 = new System.Windows.Forms.DataGridView();
            this.panel2 = new System.Windows.Forms.Panel();
            this.panel1.SuspendLayout();
            this.panel5.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl2)).BeginInit();
            this.panel2.SuspendLayout();
            this.SuspendLayout();
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Font = new System.Drawing.Font("Courier New", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label11.Location = new System.Drawing.Point(10, 12);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(128, 18);
            this.label11.TabIndex = 6;
            this.label11.Text = "Mã cuốn sách";
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.txt_MaCS);
            this.panel1.Controls.Add(this.txt_TenTS);
            this.panel1.Controls.Add(this.label1);
            this.panel1.Controls.Add(this.label11);
            this.panel1.Location = new System.Drawing.Point(2, 12);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(647, 79);
            this.panel1.TabIndex = 7;
            // 
            // txt_MaCS
            // 
            this.txt_MaCS.Location = new System.Drawing.Point(152, 10);
            this.txt_MaCS.Name = "txt_MaCS";
            this.txt_MaCS.Size = new System.Drawing.Size(465, 20);
            this.txt_MaCS.TabIndex = 9;
            // 
            // txt_TenTS
            // 
            this.txt_TenTS.Location = new System.Drawing.Point(152, 42);
            this.txt_TenTS.Name = "txt_TenTS";
            this.txt_TenTS.Size = new System.Drawing.Size(465, 20);
            this.txt_TenTS.TabIndex = 8;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Courier New", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(10, 42);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(128, 18);
            this.label1.TabIndex = 7;
            this.label1.Text = "Tên tựa sách";
            // 
            // btn_TTTS
            // 
            this.btn_TTTS.Font = new System.Drawing.Font("Courier New", 12F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_TTTS.Location = new System.Drawing.Point(12, 97);
            this.btn_TTTS.Name = "btn_TTTS";
            this.btn_TTTS.Size = new System.Drawing.Size(220, 36);
            this.btn_TTTS.TabIndex = 8;
            this.btn_TTTS.Text = "Thông tin tựa sách";
            this.btn_TTTS.UseVisualStyleBackColor = true;
            this.btn_TTTS.Click += new System.EventHandler(this.btn_TTTS_Click);
            // 
            // txt_search
            // 
            this.txt_search.Location = new System.Drawing.Point(412, 21);
            this.txt_search.Multiline = true;
            this.txt_search.Name = "txt_search";
            this.txt_search.Size = new System.Drawing.Size(219, 29);
            this.txt_search.TabIndex = 12;
            this.txt_search.Text = "Search";
            this.txt_search.TextChanged += new System.EventHandler(this.txt_search_TextChanged);
            // 
            // btn_delete
            // 
            this.btn_delete.Font = new System.Drawing.Font("Comic Sans MS", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_delete.ImageIndex = 5;
            this.btn_delete.ImageList = this.imageList1;
            this.btn_delete.Location = new System.Drawing.Point(104, 3);
            this.btn_delete.Name = "btn_delete";
            this.btn_delete.Size = new System.Drawing.Size(91, 69);
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
            this.imageList1.Images.SetKeyName(0, "download.png");
            this.imageList1.Images.SetKeyName(1, "add_png_16398.jpg");
            this.imageList1.Images.SetKeyName(2, "Trash_Can-512.png");
            this.imageList1.Images.SetKeyName(3, "download (1).png");
            this.imageList1.Images.SetKeyName(4, "kisspng-computer-icons-portable-network-graphics-scalable-delete-svg-png-icon-fre" +
        "e-download-275374-onli-5b6652fd5308f7.0367009715334325733401.jpg");
            this.imageList1.Images.SetKeyName(5, "file-delete.png");
            this.imageList1.Images.SetKeyName(6, "reload_edition-512.png");
            this.imageList1.Images.SetKeyName(7, "update-png-image-65027.png");
            this.imageList1.Images.SetKeyName(8, "save-a-web-page-button-png-image-76928.png");
            // 
            // btn_update
            // 
            this.btn_update.Font = new System.Drawing.Font("Comic Sans MS", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_update.ImageIndex = 7;
            this.btn_update.ImageList = this.imageList1;
            this.btn_update.Location = new System.Drawing.Point(201, 3);
            this.btn_update.Name = "btn_update";
            this.btn_update.Size = new System.Drawing.Size(91, 69);
            this.btn_update.TabIndex = 10;
            this.btn_update.Text = "Sửa";
            this.btn_update.TextImageRelation = System.Windows.Forms.TextImageRelation.TextAboveImage;
            this.btn_update.UseVisualStyleBackColor = true;
            // 
            // btn_save
            // 
            this.btn_save.Font = new System.Drawing.Font("Comic Sans MS", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_save.ImageIndex = 8;
            this.btn_save.ImageList = this.imageList1;
            this.btn_save.Location = new System.Drawing.Point(298, 3);
            this.btn_save.Name = "btn_save";
            this.btn_save.Size = new System.Drawing.Size(91, 69);
            this.btn_save.TabIndex = 7;
            this.btn_save.Text = "Lưu";
            this.btn_save.TextImageRelation = System.Windows.Forms.TextImageRelation.TextAboveImage;
            this.btn_save.UseVisualStyleBackColor = true;
            // 
            // btn_insert
            // 
            this.btn_insert.Font = new System.Drawing.Font("Comic Sans MS", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_insert.ImageIndex = 1;
            this.btn_insert.ImageList = this.imageList1;
            this.btn_insert.Location = new System.Drawing.Point(7, 3);
            this.btn_insert.Name = "btn_insert";
            this.btn_insert.Size = new System.Drawing.Size(91, 72);
            this.btn_insert.TabIndex = 6;
            this.btn_insert.Text = "Thêm";
            this.btn_insert.TextImageRelation = System.Windows.Forms.TextImageRelation.TextAboveImage;
            this.btn_insert.UseVisualStyleBackColor = true;
            // 
            // panel5
            // 
            this.panel5.Controls.Add(this.gridControl2);
            this.panel5.Location = new System.Drawing.Point(2, 221);
            this.panel5.Name = "panel5";
            this.panel5.Size = new System.Drawing.Size(647, 307);
            this.panel5.TabIndex = 35;
            // 
            // gridControl2
            // 
            this.gridControl2.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.gridControl2.Location = new System.Drawing.Point(2, 3);
            this.gridControl2.Name = "gridControl2";
            this.gridControl2.Size = new System.Drawing.Size(645, 325);
            this.gridControl2.TabIndex = 0;
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.btn_insert);
            this.panel2.Controls.Add(this.txt_search);
            this.panel2.Controls.Add(this.btn_delete);
            this.panel2.Controls.Add(this.btn_save);
            this.panel2.Controls.Add(this.btn_update);
            this.panel2.Location = new System.Drawing.Point(5, 133);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(644, 85);
            this.panel2.TabIndex = 36;
            // 
            // frm_CS
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(653, 532);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel5);
            this.Controls.Add(this.btn_TTTS);
            this.Controls.Add(this.panel1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "frm_CS";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "frm_CS";
            this.Load += new System.EventHandler(this.frm_CS_Load);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.panel5.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gridControl2)).EndInit();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txt_MaCS;
        private System.Windows.Forms.TextBox txt_TenTS;
        private System.Windows.Forms.Button btn_TTTS;
        private System.Windows.Forms.TextBox txt_search;
        private System.Windows.Forms.Button btn_delete;
        private System.Windows.Forms.Button btn_update;
        private System.Windows.Forms.Button btn_save;
        private System.Windows.Forms.Button btn_insert;
        private System.Windows.Forms.Panel panel5;
        private System.Windows.Forms.DataGridView gridControl2;
        private System.Windows.Forms.ImageList imageList1;
        private System.Windows.Forms.Panel panel2;
    }
}