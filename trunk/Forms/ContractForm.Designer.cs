namespace Contracts.NET
{
    partial class ContractForm
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            this.ContractMenu = new System.Windows.Forms.MenuStrip();
            this.FileMenu = new System.Windows.Forms.ToolStripMenuItem();
            this.CloseMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.правкаToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.добавитьToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.изменитьToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.удалитьToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.ContractDetailPanel = new System.Windows.Forms.Panel();
            this.ContractDetailGridView = new System.Windows.Forms.DataGridView();
            this.Column1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column4 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column5 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ContractDataPanel = new System.Windows.Forms.Panel();
            this.groupBox9 = new System.Windows.Forms.GroupBox();
            this.groupBox5 = new System.Windows.Forms.GroupBox();
            this.ValidFrom = new System.Windows.Forms.MaskedTextBox();
            this.groupBox7 = new System.Windows.Forms.GroupBox();
            this.textBox2 = new System.Windows.Forms.TextBox();
            this.groupBox6 = new System.Windows.Forms.GroupBox();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.groupBox4 = new System.Windows.Forms.GroupBox();
            this.ValidTo = new System.Windows.Forms.MaskedTextBox();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.Registered = new System.Windows.Forms.MaskedTextBox();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.Recieved = new System.Windows.Forms.MaskedTextBox();
            this.groupBox8 = new System.Windows.Forms.GroupBox();
            this.button1 = new System.Windows.Forms.Button();
            this.textBox3 = new System.Windows.Forms.TextBox();
            this.ContractDepartmentBox = new System.Windows.Forms.GroupBox();
            this.button2 = new System.Windows.Forms.Button();
            this.Department = new System.Windows.Forms.TextBox();
            this.ContractMenu.SuspendLayout();
            this.ContractDetailPanel.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.ContractDetailGridView)).BeginInit();
            this.ContractDataPanel.SuspendLayout();
            this.groupBox9.SuspendLayout();
            this.groupBox5.SuspendLayout();
            this.groupBox7.SuspendLayout();
            this.groupBox6.SuspendLayout();
            this.groupBox4.SuspendLayout();
            this.groupBox3.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.groupBox8.SuspendLayout();
            this.ContractDepartmentBox.SuspendLayout();
            this.SuspendLayout();
            // 
            // ContractMenu
            // 
            this.ContractMenu.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.FileMenu,
            this.правкаToolStripMenuItem});
            this.ContractMenu.Location = new System.Drawing.Point(0, 0);
            this.ContractMenu.Name = "ContractMenu";
            this.ContractMenu.Size = new System.Drawing.Size(794, 24);
            this.ContractMenu.TabIndex = 0;
            // 
            // FileMenu
            // 
            this.FileMenu.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.CloseMenuItem});
            this.FileMenu.Name = "FileMenu";
            this.FileMenu.Size = new System.Drawing.Size(48, 20);
            this.FileMenu.Text = "Файл";
            // 
            // CloseMenuItem
            // 
            this.CloseMenuItem.Name = "CloseMenuItem";
            this.CloseMenuItem.Size = new System.Drawing.Size(120, 22);
            this.CloseMenuItem.Text = "Закрыть";
            // 
            // правкаToolStripMenuItem
            // 
            this.правкаToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.добавитьToolStripMenuItem,
            this.изменитьToolStripMenuItem,
            this.удалитьToolStripMenuItem});
            this.правкаToolStripMenuItem.Name = "правкаToolStripMenuItem";
            this.правкаToolStripMenuItem.Size = new System.Drawing.Size(59, 20);
            this.правкаToolStripMenuItem.Text = "Правка";
            // 
            // добавитьToolStripMenuItem
            // 
            this.добавитьToolStripMenuItem.Name = "добавитьToolStripMenuItem";
            this.добавитьToolStripMenuItem.Size = new System.Drawing.Size(128, 22);
            this.добавитьToolStripMenuItem.Text = "Добавить";
            // 
            // изменитьToolStripMenuItem
            // 
            this.изменитьToolStripMenuItem.Name = "изменитьToolStripMenuItem";
            this.изменитьToolStripMenuItem.Size = new System.Drawing.Size(128, 22);
            this.изменитьToolStripMenuItem.Text = "Изменить";
            // 
            // удалитьToolStripMenuItem
            // 
            this.удалитьToolStripMenuItem.Name = "удалитьToolStripMenuItem";
            this.удалитьToolStripMenuItem.Size = new System.Drawing.Size(128, 22);
            this.удалитьToolStripMenuItem.Text = "Удалить";
            // 
            // ContractDetailPanel
            // 
            this.ContractDetailPanel.Controls.Add(this.ContractDetailGridView);
            this.ContractDetailPanel.Dock = System.Windows.Forms.DockStyle.Fill;
            this.ContractDetailPanel.Location = new System.Drawing.Point(317, 24);
            this.ContractDetailPanel.Name = "ContractDetailPanel";
            this.ContractDetailPanel.Size = new System.Drawing.Size(477, 551);
            this.ContractDetailPanel.TabIndex = 0;
            // 
            // ContractDetailGridView
            // 
            this.ContractDetailGridView.AllowUserToAddRows = false;
            this.ContractDetailGridView.AllowUserToDeleteRows = false;
            this.ContractDetailGridView.AllowUserToResizeColumns = false;
            this.ContractDetailGridView.AllowUserToResizeRows = false;
            this.ContractDetailGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.ContractDetailGridView.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Column1,
            this.Column4,
            this.Column3,
            this.Column5,
            this.Column2});
            this.ContractDetailGridView.Dock = System.Windows.Forms.DockStyle.Top;
            this.ContractDetailGridView.Location = new System.Drawing.Point(0, 0);
            this.ContractDetailGridView.Name = "ContractDetailGridView";
            this.ContractDetailGridView.ReadOnly = true;
            this.ContractDetailGridView.RowHeadersVisible = false;
            this.ContractDetailGridView.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.ContractDetailGridView.Size = new System.Drawing.Size(477, 299);
            this.ContractDetailGridView.TabIndex = 0;
            // 
            // Column1
            // 
            this.Column1.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.AllCells;
            this.Column1.HeaderText = "Дата";
            this.Column1.Name = "Column1";
            this.Column1.ReadOnly = true;
            this.Column1.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            this.Column1.Width = 39;
            // 
            // Column4
            // 
            this.Column4.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.AllCells;
            this.Column4.HeaderText = "ОКВЭД";
            this.Column4.Name = "Column4";
            this.Column4.ReadOnly = true;
            this.Column4.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            this.Column4.Width = 51;
            // 
            // Column3
            // 
            this.Column3.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.AllCells;
            this.Column3.HeaderText = "КОСГУ";
            this.Column3.Name = "Column3";
            this.Column3.ReadOnly = true;
            this.Column3.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            this.Column3.Width = 49;
            // 
            // Column5
            // 
            this.Column5.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.Column5.HeaderText = "Комментарий";
            this.Column5.Name = "Column5";
            this.Column5.ReadOnly = true;
            this.Column5.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            // 
            // Column2
            // 
            this.Column2.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.AllCells;
            dataGridViewCellStyle1.Format = "C2";
            dataGridViewCellStyle1.NullValue = null;
            this.Column2.DefaultCellStyle = dataGridViewCellStyle1;
            this.Column2.HeaderText = "Сумма";
            this.Column2.Name = "Column2";
            this.Column2.ReadOnly = true;
            this.Column2.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            this.Column2.Width = 47;
            // 
            // ContractDataPanel
            // 
            this.ContractDataPanel.Controls.Add(this.groupBox9);
            this.ContractDataPanel.Controls.Add(this.groupBox8);
            this.ContractDataPanel.Controls.Add(this.ContractDepartmentBox);
            this.ContractDataPanel.Dock = System.Windows.Forms.DockStyle.Left;
            this.ContractDataPanel.Location = new System.Drawing.Point(0, 24);
            this.ContractDataPanel.Name = "ContractDataPanel";
            this.ContractDataPanel.Size = new System.Drawing.Size(317, 551);
            this.ContractDataPanel.TabIndex = 0;
            // 
            // groupBox9
            // 
            this.groupBox9.Controls.Add(this.groupBox5);
            this.groupBox9.Controls.Add(this.groupBox7);
            this.groupBox9.Controls.Add(this.groupBox6);
            this.groupBox9.Controls.Add(this.groupBox4);
            this.groupBox9.Controls.Add(this.groupBox3);
            this.groupBox9.Controls.Add(this.groupBox2);
            this.groupBox9.Dock = System.Windows.Forms.DockStyle.Top;
            this.groupBox9.Location = new System.Drawing.Point(0, 150);
            this.groupBox9.Name = "groupBox9";
            this.groupBox9.Size = new System.Drawing.Size(317, 149);
            this.groupBox9.TabIndex = 0;
            this.groupBox9.TabStop = false;
            this.groupBox9.Text = "Реквизиты:";
            // 
            // groupBox5
            // 
            this.groupBox5.Controls.Add(this.ValidFrom);
            this.groupBox5.Location = new System.Drawing.Point(160, 61);
            this.groupBox5.Name = "groupBox5";
            this.groupBox5.Size = new System.Drawing.Size(150, 40);
            this.groupBox5.TabIndex = 10;
            this.groupBox5.TabStop = false;
            this.groupBox5.Text = "Дата договора:";
            // 
            // ValidFrom
            // 
            this.ValidFrom.Dock = System.Windows.Forms.DockStyle.Fill;
            this.ValidFrom.Location = new System.Drawing.Point(3, 16);
            this.ValidFrom.Mask = "00/00/0000";
            this.ValidFrom.Name = "ValidFrom";
            this.ValidFrom.Size = new System.Drawing.Size(144, 20);
            this.ValidFrom.TabIndex = 3;
            this.ValidFrom.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            this.ValidFrom.ValidatingType = typeof(System.DateTime);
            // 
            // groupBox7
            // 
            this.groupBox7.Controls.Add(this.textBox2);
            this.groupBox7.Location = new System.Drawing.Point(160, 19);
            this.groupBox7.Name = "groupBox7";
            this.groupBox7.Size = new System.Drawing.Size(150, 40);
            this.groupBox7.TabIndex = 13;
            this.groupBox7.TabStop = false;
            this.groupBox7.Text = "Номер договора:";
            // 
            // textBox2
            // 
            this.textBox2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.textBox2.Location = new System.Drawing.Point(3, 16);
            this.textBox2.Name = "textBox2";
            this.textBox2.Size = new System.Drawing.Size(144, 20);
            this.textBox2.TabIndex = 0;
            this.textBox2.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // groupBox6
            // 
            this.groupBox6.Controls.Add(this.textBox1);
            this.groupBox6.Location = new System.Drawing.Point(6, 19);
            this.groupBox6.Name = "groupBox6";
            this.groupBox6.Size = new System.Drawing.Size(152, 40);
            this.groupBox6.TabIndex = 12;
            this.groupBox6.TabStop = false;
            this.groupBox6.Text = "Регистрационный номер:";
            // 
            // textBox1
            // 
            this.textBox1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.textBox1.Location = new System.Drawing.Point(3, 16);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(146, 20);
            this.textBox1.TabIndex = 0;
            this.textBox1.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // groupBox4
            // 
            this.groupBox4.Controls.Add(this.ValidTo);
            this.groupBox4.Location = new System.Drawing.Point(160, 103);
            this.groupBox4.Name = "groupBox4";
            this.groupBox4.Size = new System.Drawing.Size(150, 40);
            this.groupBox4.TabIndex = 11;
            this.groupBox4.TabStop = false;
            this.groupBox4.Text = "Срок договора:";
            // 
            // ValidTo
            // 
            this.ValidTo.Dock = System.Windows.Forms.DockStyle.Fill;
            this.ValidTo.Location = new System.Drawing.Point(3, 16);
            this.ValidTo.Mask = "00/00/0000";
            this.ValidTo.Name = "ValidTo";
            this.ValidTo.Size = new System.Drawing.Size(144, 20);
            this.ValidTo.TabIndex = 1;
            this.ValidTo.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            this.ValidTo.ValidatingType = typeof(System.DateTime);
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.Registered);
            this.groupBox3.Location = new System.Drawing.Point(6, 103);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(152, 40);
            this.groupBox3.TabIndex = 9;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "Дата регистрации:";
            // 
            // Registered
            // 
            this.Registered.Dock = System.Windows.Forms.DockStyle.Fill;
            this.Registered.Location = new System.Drawing.Point(3, 16);
            this.Registered.Mask = "00/00/0000";
            this.Registered.Name = "Registered";
            this.Registered.Size = new System.Drawing.Size(146, 20);
            this.Registered.TabIndex = 1;
            this.Registered.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            this.Registered.ValidatingType = typeof(System.DateTime);
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.Recieved);
            this.groupBox2.Location = new System.Drawing.Point(6, 61);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(152, 40);
            this.groupBox2.TabIndex = 8;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Дата поступления:";
            // 
            // Recieved
            // 
            this.Recieved.Dock = System.Windows.Forms.DockStyle.Fill;
            this.Recieved.Location = new System.Drawing.Point(3, 16);
            this.Recieved.Mask = "00/00/0000";
            this.Recieved.Name = "Recieved";
            this.Recieved.Size = new System.Drawing.Size(146, 20);
            this.Recieved.TabIndex = 1;
            this.Recieved.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            this.Recieved.ValidatingType = typeof(System.DateTime);
            // 
            // groupBox8
            // 
            this.groupBox8.Controls.Add(this.button1);
            this.groupBox8.Controls.Add(this.textBox3);
            this.groupBox8.Dock = System.Windows.Forms.DockStyle.Top;
            this.groupBox8.Location = new System.Drawing.Point(0, 40);
            this.groupBox8.Name = "groupBox8";
            this.groupBox8.Size = new System.Drawing.Size(317, 110);
            this.groupBox8.TabIndex = 0;
            this.groupBox8.TabStop = false;
            this.groupBox8.Text = "Контрагент:";
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(286, 83);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(24, 21);
            this.button1.TabIndex = 0;
            this.button1.Text = "...";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // textBox3
            // 
            this.textBox3.Location = new System.Drawing.Point(9, 19);
            this.textBox3.Multiline = true;
            this.textBox3.Name = "textBox3";
            this.textBox3.ReadOnly = true;
            this.textBox3.Size = new System.Drawing.Size(268, 85);
            this.textBox3.TabIndex = 0;
            // 
            // ContractDepartmentBox
            // 
            this.ContractDepartmentBox.Controls.Add(this.button2);
            this.ContractDepartmentBox.Controls.Add(this.Department);
            this.ContractDepartmentBox.Dock = System.Windows.Forms.DockStyle.Top;
            this.ContractDepartmentBox.Location = new System.Drawing.Point(0, 0);
            this.ContractDepartmentBox.Name = "ContractDepartmentBox";
            this.ContractDepartmentBox.Size = new System.Drawing.Size(317, 40);
            this.ContractDepartmentBox.TabIndex = 0;
            this.ContractDepartmentBox.TabStop = false;
            this.ContractDepartmentBox.Text = "Наименование района:";
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(286, 13);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(24, 21);
            this.button2.TabIndex = 28;
            this.button2.Text = "...";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // Department
            // 
            this.Department.Location = new System.Drawing.Point(9, 14);
            this.Department.Name = "Department";
            this.Department.ReadOnly = true;
            this.Department.Size = new System.Drawing.Size(268, 20);
            this.Department.TabIndex = 0;
            // 
            // ContractForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(794, 575);
            this.Controls.Add(this.ContractDetailPanel);
            this.Controls.Add(this.ContractDataPanel);
            this.Controls.Add(this.ContractMenu);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.MainMenuStrip = this.ContractMenu;
            this.MinimumSize = new System.Drawing.Size(800, 600);
            this.Name = "ContractForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Договор";
            this.ContractMenu.ResumeLayout(false);
            this.ContractMenu.PerformLayout();
            this.ContractDetailPanel.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.ContractDetailGridView)).EndInit();
            this.ContractDataPanel.ResumeLayout(false);
            this.groupBox9.ResumeLayout(false);
            this.groupBox5.ResumeLayout(false);
            this.groupBox5.PerformLayout();
            this.groupBox7.ResumeLayout(false);
            this.groupBox7.PerformLayout();
            this.groupBox6.ResumeLayout(false);
            this.groupBox6.PerformLayout();
            this.groupBox4.ResumeLayout(false);
            this.groupBox4.PerformLayout();
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.groupBox8.ResumeLayout(false);
            this.groupBox8.PerformLayout();
            this.ContractDepartmentBox.ResumeLayout(false);
            this.ContractDepartmentBox.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip ContractMenu;
        private System.Windows.Forms.ToolStripMenuItem FileMenu;
        private System.Windows.Forms.ToolStripMenuItem CloseMenuItem;
        private System.Windows.Forms.Panel ContractDetailPanel;
        private System.Windows.Forms.DataGridView ContractDetailGridView;
        private System.Windows.Forms.Panel ContractDataPanel;
        private System.Windows.Forms.GroupBox groupBox9;
        private System.Windows.Forms.GroupBox groupBox5;
        private System.Windows.Forms.MaskedTextBox ValidFrom;
        private System.Windows.Forms.GroupBox groupBox7;
        private System.Windows.Forms.TextBox textBox2;
        private System.Windows.Forms.GroupBox groupBox6;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.GroupBox groupBox4;
        private System.Windows.Forms.MaskedTextBox ValidTo;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.MaskedTextBox Registered;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.MaskedTextBox Recieved;
        private System.Windows.Forms.GroupBox groupBox8;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.TextBox textBox3;
        private System.Windows.Forms.GroupBox ContractDepartmentBox;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.TextBox Department;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column1;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column4;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column3;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column5;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column2;
        private System.Windows.Forms.ToolStripMenuItem правкаToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem добавитьToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem изменитьToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem удалитьToolStripMenuItem;



    }
}