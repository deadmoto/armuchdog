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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            this.ContractMenu = new System.Windows.Forms.MenuStrip();
            this.FileMenu = new System.Windows.Forms.ToolStripMenuItem();
            this.SaveMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.CloseMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.EditMenu = new System.Windows.Forms.ToolStripMenuItem();
            this.InsertDetailMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.UpdateDetailMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.DeleteDetailMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.DepartmentBox = new System.Windows.Forms.GroupBox();
            this.DepartmentButton = new System.Windows.Forms.Button();
            this.Department = new System.Windows.Forms.TextBox();
            this.SupplierBox = new System.Windows.Forms.GroupBox();
            this.SupplierButton = new System.Windows.Forms.Button();
            this.Supplier = new System.Windows.Forms.TextBox();
            this.RequisiteBox = new System.Windows.Forms.GroupBox();
            this.groupBox5 = new System.Windows.Forms.GroupBox();
            this.ValidFrom = new System.Windows.Forms.DateTimePicker();
            this.groupBox7 = new System.Windows.Forms.GroupBox();
            this.ContractNumber = new System.Windows.Forms.TextBox();
            this.groupBox6 = new System.Windows.Forms.GroupBox();
            this.RegistrationNumber = new System.Windows.Forms.TextBox();
            this.groupBox4 = new System.Windows.Forms.GroupBox();
            this.ValidTo = new System.Windows.Forms.DateTimePicker();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.Registered = new System.Windows.Forms.DateTimePicker();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.Recieved = new System.Windows.Forms.DateTimePicker();
            this.DetailBox = new System.Windows.Forms.GroupBox();
            this.Grid = new System.Windows.Forms.DataGridView();
            this.Column1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column4 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column5 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ContractMenu.SuspendLayout();
            this.DepartmentBox.SuspendLayout();
            this.SupplierBox.SuspendLayout();
            this.RequisiteBox.SuspendLayout();
            this.groupBox5.SuspendLayout();
            this.groupBox7.SuspendLayout();
            this.groupBox6.SuspendLayout();
            this.groupBox4.SuspendLayout();
            this.groupBox3.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.DetailBox.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.Grid)).BeginInit();
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
            this.SaveMenuItem,
            this.CloseMenuItem});
            this.FileMenu.Name = "FileMenu";
            this.FileMenu.Size = new System.Drawing.Size(48, 20);
            this.FileMenu.Text = "Файл";
            // 
            // SaveMenuItem
            // 
            this.SaveMenuItem.Name = "SaveMenuItem";
            this.SaveMenuItem.Size = new System.Drawing.Size(132, 22);
            this.SaveMenuItem.Text = "Сохранить";
            this.SaveMenuItem.Click += new System.EventHandler(this.SaveContractClick);
            // 
            // CloseMenuItem
            // 
            this.CloseMenuItem.Name = "CloseMenuItem";
            this.CloseMenuItem.Size = new System.Drawing.Size(132, 22);
            this.CloseMenuItem.Text = "Закрыть";
            this.CloseMenuItem.Click += new System.EventHandler(this.CloseContractClick);
            // 
            // EditMenu
            // 
            this.EditMenu.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.InsertDetailMenuItem,
            this.UpdateDetailMenuItem,
            this.DeleteDetailMenuItem});
            this.EditMenu.Name = "EditMenu";
            this.EditMenu.Size = new System.Drawing.Size(59, 20);
            this.EditMenu.Text = "Правка";
            // 
            // InsertDetailMenuItem
            // 
            this.InsertDetailMenuItem.Name = "InsertDetailMenuItem";
            this.InsertDetailMenuItem.Size = new System.Drawing.Size(128, 22);
            this.InsertDetailMenuItem.Text = "Добавить";
            this.InsertDetailMenuItem.Click += new System.EventHandler(this.InsertDetailClick);
            // 
            // UpdateDetailMenuItem
            // 
            this.UpdateDetailMenuItem.Name = "UpdateDetailMenuItem";
            this.UpdateDetailMenuItem.Size = new System.Drawing.Size(128, 22);
            this.UpdateDetailMenuItem.Text = "Изменить";
            this.UpdateDetailMenuItem.Click += new System.EventHandler(this.UpdateDetailClick);
            // 
            // DeleteDetailMenuItem
            // 
            this.DeleteDetailMenuItem.Name = "DeleteDetailMenuItem";
            this.DeleteDetailMenuItem.Size = new System.Drawing.Size(128, 22);
            this.DeleteDetailMenuItem.Text = "Удалить";
            this.DeleteDetailMenuItem.Click += new System.EventHandler(this.DeleteDetailClick);
            // 
            // DepartmentBox
            // 
            this.DepartmentBox.Controls.Add(this.DepartmentButton);
            this.DepartmentBox.Controls.Add(this.Department);
            this.DepartmentBox.Location = new System.Drawing.Point(12, 27);
            this.DepartmentBox.Name = "DepartmentBox";
            this.DepartmentBox.Size = new System.Drawing.Size(317, 40);
            this.DepartmentBox.TabIndex = 1;
            this.DepartmentBox.TabStop = false;
            this.DepartmentBox.Text = "Наименование района:";
            // 
            // DepartmentButton
            // 
            this.DepartmentButton.Location = new System.Drawing.Point(287, 13);
            this.DepartmentButton.Name = "DepartmentButton";
            this.DepartmentButton.Size = new System.Drawing.Size(24, 21);
            this.DepartmentButton.TabIndex = 28;
            this.DepartmentButton.Text = "...";
            this.DepartmentButton.UseVisualStyleBackColor = true;
            this.DepartmentButton.Click += new System.EventHandler(this.DepartmentSelectClick);
            // 
            // Department
            // 
            this.Department.Location = new System.Drawing.Point(9, 14);
            this.Department.Name = "Department";
            this.Department.ReadOnly = true;
            this.Department.Size = new System.Drawing.Size(272, 20);
            this.Department.TabIndex = 0;
            // 
            // SupplierBox
            // 
            this.SupplierBox.Controls.Add(this.SupplierButton);
            this.SupplierBox.Controls.Add(this.Supplier);
            this.SupplierBox.Location = new System.Drawing.Point(12, 73);
            this.SupplierBox.Name = "SupplierBox";
            this.SupplierBox.Size = new System.Drawing.Size(317, 73);
            this.SupplierBox.TabIndex = 3;
            this.SupplierBox.TabStop = false;
            this.SupplierBox.Text = "Контрагент:";
            // 
            // SupplierButton
            // 
            this.SupplierButton.Location = new System.Drawing.Point(287, 43);
            this.SupplierButton.Name = "SupplierButton";
            this.SupplierButton.Size = new System.Drawing.Size(24, 21);
            this.SupplierButton.TabIndex = 0;
            this.SupplierButton.Text = "...";
            this.SupplierButton.UseVisualStyleBackColor = true;
            this.SupplierButton.Click += new System.EventHandler(this.SupplierSelectClick);
            // 
            // Supplier
            // 
            this.Supplier.Location = new System.Drawing.Point(9, 19);
            this.Supplier.Multiline = true;
            this.Supplier.Name = "Supplier";
            this.Supplier.ReadOnly = true;
            this.Supplier.Size = new System.Drawing.Size(272, 45);
            this.Supplier.TabIndex = 0;
            // 
            // RequisiteBox
            // 
            this.RequisiteBox.Controls.Add(this.groupBox5);
            this.RequisiteBox.Controls.Add(this.groupBox7);
            this.RequisiteBox.Controls.Add(this.groupBox6);
            this.RequisiteBox.Controls.Add(this.groupBox4);
            this.RequisiteBox.Controls.Add(this.groupBox3);
            this.RequisiteBox.Controls.Add(this.groupBox2);
            this.RequisiteBox.Location = new System.Drawing.Point(12, 152);
            this.RequisiteBox.Name = "RequisiteBox";
            this.RequisiteBox.Size = new System.Drawing.Size(317, 149);
            this.RequisiteBox.TabIndex = 4;
            this.RequisiteBox.TabStop = false;
            this.RequisiteBox.Text = "Реквизиты:";
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
            this.ValidFrom.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.ValidFrom.Location = new System.Drawing.Point(3, 16);
            this.ValidFrom.Name = "ValidFrom";
            this.ValidFrom.ShowCheckBox = true;
            this.ValidFrom.Size = new System.Drawing.Size(144, 20);
            this.ValidFrom.TabIndex = 2;
            this.ValidFrom.Value = new System.DateTime(2000, 1, 1, 0, 0, 0, 0);
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
            this.ValidTo.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.ValidTo.Location = new System.Drawing.Point(3, 16);
            this.ValidTo.Name = "ValidTo";
            this.ValidTo.ShowCheckBox = true;
            this.ValidTo.Size = new System.Drawing.Size(144, 20);
            this.ValidTo.TabIndex = 3;
            this.ValidTo.Value = new System.DateTime(2000, 1, 1, 0, 0, 0, 0);
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
            this.Registered.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.Registered.Location = new System.Drawing.Point(3, 16);
            this.Registered.Name = "Registered";
            this.Registered.ShowCheckBox = true;
            this.Registered.Size = new System.Drawing.Size(146, 20);
            this.Registered.TabIndex = 0;
            this.Registered.Value = new System.DateTime(2000, 1, 1, 0, 0, 0, 0);
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
            this.Recieved.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.Recieved.Location = new System.Drawing.Point(3, 16);
            this.Recieved.Name = "Recieved";
            this.Recieved.ShowCheckBox = true;
            this.Recieved.Size = new System.Drawing.Size(146, 20);
            this.Recieved.TabIndex = 1;
            this.Recieved.Value = new System.DateTime(2000, 1, 1, 0, 0, 0, 0);
            // 
            // DetailBox
            // 
            this.DetailBox.Controls.Add(this.Grid);
            this.DetailBox.Location = new System.Drawing.Point(335, 27);
            this.DetailBox.Name = "DetailBox";
            this.DetailBox.Size = new System.Drawing.Size(447, 274);
            this.DetailBox.TabIndex = 5;
            this.DetailBox.TabStop = false;
            this.DetailBox.Text = "Детализация";
            // 
            // Grid
            // 
            this.Grid.AllowUserToAddRows = false;
            this.Grid.AllowUserToDeleteRows = false;
            this.Grid.AllowUserToResizeColumns = false;
            this.Grid.AllowUserToResizeRows = false;
            this.Grid.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.Grid.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Column1,
            this.Column4,
            this.Column3,
            this.Column5,
            this.Column2});
            this.Grid.Location = new System.Drawing.Point(6, 19);
            this.Grid.Name = "Grid";
            this.Grid.ReadOnly = true;
            this.Grid.RowHeadersVisible = false;
            this.Grid.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.Grid.Size = new System.Drawing.Size(435, 249);
            this.Grid.TabIndex = 5;
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
            dataGridViewCellStyle2.Format = "C2";
            dataGridViewCellStyle2.NullValue = null;
            this.Column2.DefaultCellStyle = dataGridViewCellStyle2;
            this.Column2.HeaderText = "Сумма";
            this.Column2.Name = "Column2";
            this.Column2.ReadOnly = true;
            this.Column2.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            this.Column2.Width = 47;
            // 
            // ContractForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(794, 313);
            this.Controls.Add(this.DetailBox);
            this.Controls.Add(this.RequisiteBox);
            this.Controls.Add(this.SupplierBox);
            this.Controls.Add(this.DepartmentBox);
            this.Controls.Add(this.ContractMenu);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.MainMenuStrip = this.ContractMenu;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "ContractForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Договор";
            this.ContractMenu.ResumeLayout(false);
            this.ContractMenu.PerformLayout();
            this.DepartmentBox.ResumeLayout(false);
            this.DepartmentBox.PerformLayout();
            this.SupplierBox.ResumeLayout(false);
            this.SupplierBox.PerformLayout();
            this.RequisiteBox.ResumeLayout(false);
            this.groupBox5.ResumeLayout(false);
            this.groupBox7.ResumeLayout(false);
            this.groupBox7.PerformLayout();
            this.groupBox6.ResumeLayout(false);
            this.groupBox6.PerformLayout();
            this.groupBox4.ResumeLayout(false);
            this.groupBox3.ResumeLayout(false);
            this.groupBox2.ResumeLayout(false);
            this.DetailBox.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.Grid)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip ContractMenu;
        private System.Windows.Forms.ToolStripMenuItem FileMenu;
        private System.Windows.Forms.ToolStripMenuItem CloseMenuItem;
        private System.Windows.Forms.ToolStripMenuItem EditMenu;
        private System.Windows.Forms.ToolStripMenuItem InsertDetailMenuItem;
        private System.Windows.Forms.ToolStripMenuItem UpdateDetailMenuItem;
        private System.Windows.Forms.ToolStripMenuItem DeleteDetailMenuItem;
        private System.Windows.Forms.ToolStripMenuItem SaveMenuItem;
        private System.Windows.Forms.GroupBox DepartmentBox;
        private System.Windows.Forms.Button DepartmentButton;
        private System.Windows.Forms.TextBox Department;
        private System.Windows.Forms.GroupBox SupplierBox;
        private System.Windows.Forms.Button SupplierButton;
        private System.Windows.Forms.TextBox Supplier;
        private System.Windows.Forms.GroupBox RequisiteBox;
        private System.Windows.Forms.GroupBox groupBox5;
        private System.Windows.Forms.DateTimePicker ValidFrom;
        private System.Windows.Forms.GroupBox groupBox7;
        private System.Windows.Forms.TextBox ContractNumber;
        private System.Windows.Forms.GroupBox groupBox6;
        private System.Windows.Forms.TextBox RegistrationNumber;
        private System.Windows.Forms.GroupBox groupBox4;
        private System.Windows.Forms.DateTimePicker ValidTo;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.DateTimePicker Registered;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.DateTimePicker Recieved;
        private System.Windows.Forms.GroupBox DetailBox;
        private System.Windows.Forms.DataGridView Grid;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column1;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column4;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column3;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column5;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column2;



    }
}