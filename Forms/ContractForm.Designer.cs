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
            this.EditMenu = new System.Windows.Forms.ToolStripMenuItem();
            this.InsertMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.UpdateMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.DeleteMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.ContractDetailPanel = new System.Windows.Forms.Panel();
            this.DetailGrid = new System.Windows.Forms.DataGridView();
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
            this.ContractNumber = new System.Windows.Forms.TextBox();
            this.groupBox6 = new System.Windows.Forms.GroupBox();
            this.RegistrationNumber = new System.Windows.Forms.TextBox();
            this.groupBox4 = new System.Windows.Forms.GroupBox();
            this.ValidTo = new System.Windows.Forms.MaskedTextBox();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.Registered = new System.Windows.Forms.MaskedTextBox();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.Recieved = new System.Windows.Forms.MaskedTextBox();
            this.groupBox8 = new System.Windows.Forms.GroupBox();
            this.SupplierSelect = new System.Windows.Forms.Button();
            this.Supplier = new System.Windows.Forms.TextBox();
            this.ContractDepartmentBox = new System.Windows.Forms.GroupBox();
            this.DepartmentSelect = new System.Windows.Forms.Button();
            this.Department = new System.Windows.Forms.TextBox();
            this.ContractMenu.SuspendLayout();
            this.ContractDetailPanel.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.DetailGrid)).BeginInit();
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
            this.EditMenu});
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
            this.CloseMenuItem.Click += new System.EventHandler(this.CloseMenuItemClick);
            // 
            // EditMenu
            // 
            this.EditMenu.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.InsertMenuItem,
            this.UpdateMenuItem,
            this.DeleteMenuItem});
            this.EditMenu.Name = "EditMenu";
            this.EditMenu.Size = new System.Drawing.Size(59, 20);
            this.EditMenu.Text = "Правка";
            // 
            // InsertMenuItem
            // 
            this.InsertMenuItem.Name = "InsertMenuItem";
            this.InsertMenuItem.Size = new System.Drawing.Size(152, 22);
            this.InsertMenuItem.Text = "Добавить";
            this.InsertMenuItem.Click += new System.EventHandler(this.InsertMenuItemClick);
            // 
            // UpdateMenuItem
            // 
            this.UpdateMenuItem.Name = "UpdateMenuItem";
            this.UpdateMenuItem.Size = new System.Drawing.Size(152, 22);
            this.UpdateMenuItem.Text = "Изменить";
            this.UpdateMenuItem.Click += new System.EventHandler(this.UpdateMenuItemClick);
            // 
            // DeleteMenuItem
            // 
            this.DeleteMenuItem.Name = "DeleteMenuItem";
            this.DeleteMenuItem.Size = new System.Drawing.Size(152, 22);
            this.DeleteMenuItem.Text = "Удалить";
            this.DeleteMenuItem.Click += new System.EventHandler(this.DeleteMenuItemClick);
            // 
            // ContractDetailPanel
            // 
            this.ContractDetailPanel.Controls.Add(this.DetailGrid);
            this.ContractDetailPanel.Dock = System.Windows.Forms.DockStyle.Fill;
            this.ContractDetailPanel.Location = new System.Drawing.Point(317, 24);
            this.ContractDetailPanel.Name = "ContractDetailPanel";
            this.ContractDetailPanel.Size = new System.Drawing.Size(477, 551);
            this.ContractDetailPanel.TabIndex = 0;
            // 
            // DetailGrid
            // 
            this.DetailGrid.AllowUserToAddRows = false;
            this.DetailGrid.AllowUserToDeleteRows = false;
            this.DetailGrid.AllowUserToResizeColumns = false;
            this.DetailGrid.AllowUserToResizeRows = false;
            this.DetailGrid.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.DetailGrid.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Column1,
            this.Column4,
            this.Column3,
            this.Column5,
            this.Column2});
            this.DetailGrid.Dock = System.Windows.Forms.DockStyle.Top;
            this.DetailGrid.Location = new System.Drawing.Point(0, 0);
            this.DetailGrid.Name = "DetailGrid";
            this.DetailGrid.ReadOnly = true;
            this.DetailGrid.RowHeadersVisible = false;
            this.DetailGrid.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.DetailGrid.Size = new System.Drawing.Size(477, 299);
            this.DetailGrid.TabIndex = 0;
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
            this.groupBox7.Controls.Add(this.ContractNumber);
            this.groupBox7.Location = new System.Drawing.Point(160, 19);
            this.groupBox7.Name = "groupBox7";
            this.groupBox7.Size = new System.Drawing.Size(150, 40);
            this.groupBox7.TabIndex = 13;
            this.groupBox7.TabStop = false;
            this.groupBox7.Text = "Номер договора:";
            // 
            // ContractNumber
            // 
            this.ContractNumber.Dock = System.Windows.Forms.DockStyle.Fill;
            this.ContractNumber.Location = new System.Drawing.Point(3, 16);
            this.ContractNumber.Name = "ContractNumber";
            this.ContractNumber.Size = new System.Drawing.Size(144, 20);
            this.ContractNumber.TabIndex = 0;
            this.ContractNumber.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // groupBox6
            // 
            this.groupBox6.Controls.Add(this.RegistrationNumber);
            this.groupBox6.Location = new System.Drawing.Point(6, 19);
            this.groupBox6.Name = "groupBox6";
            this.groupBox6.Size = new System.Drawing.Size(152, 40);
            this.groupBox6.TabIndex = 12;
            this.groupBox6.TabStop = false;
            this.groupBox6.Text = "Регистрационный номер:";
            // 
            // RegistrationNumber
            // 
            this.RegistrationNumber.Dock = System.Windows.Forms.DockStyle.Fill;
            this.RegistrationNumber.Location = new System.Drawing.Point(3, 16);
            this.RegistrationNumber.Name = "RegistrationNumber";
            this.RegistrationNumber.Size = new System.Drawing.Size(146, 20);
            this.RegistrationNumber.TabIndex = 0;
            this.RegistrationNumber.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
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
            this.groupBox8.Controls.Add(this.SupplierSelect);
            this.groupBox8.Controls.Add(this.Supplier);
            this.groupBox8.Dock = System.Windows.Forms.DockStyle.Top;
            this.groupBox8.Location = new System.Drawing.Point(0, 40);
            this.groupBox8.Name = "groupBox8";
            this.groupBox8.Size = new System.Drawing.Size(317, 110);
            this.groupBox8.TabIndex = 0;
            this.groupBox8.TabStop = false;
            this.groupBox8.Text = "Контрагент:";
            // 
            // SupplierSelect
            // 
            this.SupplierSelect.Location = new System.Drawing.Point(286, 83);
            this.SupplierSelect.Name = "SupplierSelect";
            this.SupplierSelect.Size = new System.Drawing.Size(24, 21);
            this.SupplierSelect.TabIndex = 0;
            this.SupplierSelect.Text = "...";
            this.SupplierSelect.UseVisualStyleBackColor = true;
            this.SupplierSelect.Click += new System.EventHandler(this.SupplierSelectClick);
            // 
            // Supplier
            // 
            this.Supplier.Location = new System.Drawing.Point(9, 19);
            this.Supplier.Multiline = true;
            this.Supplier.Name = "Supplier";
            this.Supplier.ReadOnly = true;
            this.Supplier.Size = new System.Drawing.Size(268, 85);
            this.Supplier.TabIndex = 0;
            // 
            // ContractDepartmentBox
            // 
            this.ContractDepartmentBox.Controls.Add(this.DepartmentSelect);
            this.ContractDepartmentBox.Controls.Add(this.Department);
            this.ContractDepartmentBox.Dock = System.Windows.Forms.DockStyle.Top;
            this.ContractDepartmentBox.Location = new System.Drawing.Point(0, 0);
            this.ContractDepartmentBox.Name = "ContractDepartmentBox";
            this.ContractDepartmentBox.Size = new System.Drawing.Size(317, 40);
            this.ContractDepartmentBox.TabIndex = 0;
            this.ContractDepartmentBox.TabStop = false;
            this.ContractDepartmentBox.Text = "Наименование района:";
            // 
            // DepartmentSelect
            // 
            this.DepartmentSelect.Location = new System.Drawing.Point(286, 13);
            this.DepartmentSelect.Name = "DepartmentSelect";
            this.DepartmentSelect.Size = new System.Drawing.Size(24, 21);
            this.DepartmentSelect.TabIndex = 28;
            this.DepartmentSelect.Text = "...";
            this.DepartmentSelect.UseVisualStyleBackColor = true;
            this.DepartmentSelect.Click += new System.EventHandler(this.DepartmentSelectClick);
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
            this.Load += new System.EventHandler(this.ContractFormLoad);
            this.ContractMenu.ResumeLayout(false);
            this.ContractMenu.PerformLayout();
            this.ContractDetailPanel.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.DetailGrid)).EndInit();
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
        private System.Windows.Forms.DataGridView DetailGrid;
        private System.Windows.Forms.Panel ContractDataPanel;
        private System.Windows.Forms.GroupBox groupBox9;
        private System.Windows.Forms.GroupBox groupBox5;
        private System.Windows.Forms.MaskedTextBox ValidFrom;
        private System.Windows.Forms.GroupBox groupBox7;
        private System.Windows.Forms.TextBox ContractNumber;
        private System.Windows.Forms.GroupBox groupBox6;
        private System.Windows.Forms.TextBox RegistrationNumber;
        private System.Windows.Forms.GroupBox groupBox4;
        private System.Windows.Forms.MaskedTextBox ValidTo;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.MaskedTextBox Registered;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.MaskedTextBox Recieved;
        private System.Windows.Forms.GroupBox groupBox8;
        private System.Windows.Forms.Button SupplierSelect;
        private System.Windows.Forms.TextBox Supplier;
        private System.Windows.Forms.GroupBox ContractDepartmentBox;
        private System.Windows.Forms.Button DepartmentSelect;
        private System.Windows.Forms.TextBox Department;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column1;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column4;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column3;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column5;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column2;
        private System.Windows.Forms.ToolStripMenuItem EditMenu;
        private System.Windows.Forms.ToolStripMenuItem InsertMenuItem;
        private System.Windows.Forms.ToolStripMenuItem UpdateMenuItem;
        private System.Windows.Forms.ToolStripMenuItem DeleteMenuItem;



    }
}