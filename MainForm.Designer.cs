namespace Contracts.NET
{
    partial class MainForm
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
            this.MainMenu = new System.Windows.Forms.MenuStrip();
            this.FileMenu = new System.Windows.Forms.ToolStripMenuItem();
            this.ExitMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.MainStatus = new System.Windows.Forms.StatusStrip();
            this.StatusContractsCountStatic = new System.Windows.Forms.ToolStripStatusLabel();
            this.StatusContractsCount = new System.Windows.Forms.ToolStripStatusLabel();
            this.StatusFilteredCountStatic = new System.Windows.Forms.ToolStripStatusLabel();
            this.StatusFilteredCount = new System.Windows.Forms.ToolStripStatusLabel();
            this.StatusContractsSumStatic = new System.Windows.Forms.ToolStripStatusLabel();
            this.StatusContractsSum = new System.Windows.Forms.ToolStripStatusLabel();
            this.StatusContractsFilteredSumStatic = new System.Windows.Forms.ToolStripStatusLabel();
            this.StatusContractsFilteredSum = new System.Windows.Forms.ToolStripStatusLabel();
            this.FilterPanel = new System.Windows.Forms.Panel();
            this.MainGrid = new System.Windows.Forms.DataGridView();
            this.Column1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column4 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column5 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column6 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column7 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column8 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column9 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column10 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.MainMenu.SuspendLayout();
            this.MainStatus.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.MainGrid)).BeginInit();
            this.SuspendLayout();
            // 
            // MainMenu
            // 
            this.MainMenu.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.FileMenu});
            this.MainMenu.Location = new System.Drawing.Point(0, 0);
            this.MainMenu.Name = "MainMenu";
            this.MainMenu.Size = new System.Drawing.Size(807, 24);
            this.MainMenu.TabIndex = 1;
            this.MainMenu.Text = "menuStrip1";
            // 
            // FileMenu
            // 
            this.FileMenu.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.ExitMenuItem});
            this.FileMenu.Name = "FileMenu";
            this.FileMenu.Size = new System.Drawing.Size(35, 20);
            this.FileMenu.Text = "File";
            // 
            // ExitMenuItem
            // 
            this.ExitMenuItem.Name = "ExitMenuItem";
            this.ExitMenuItem.Size = new System.Drawing.Size(152, 22);
            this.ExitMenuItem.Text = "Exit";
            this.ExitMenuItem.Click += new System.EventHandler(this.ExitMenuItemClick);
            // 
            // MainStatus
            // 
            this.MainStatus.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.StatusContractsCountStatic,
            this.StatusContractsCount,
            this.StatusFilteredCountStatic,
            this.StatusFilteredCount,
            this.StatusContractsSumStatic,
            this.StatusContractsSum,
            this.StatusContractsFilteredSumStatic,
            this.StatusContractsFilteredSum});
            this.MainStatus.Location = new System.Drawing.Point(0, 438);
            this.MainStatus.Name = "MainStatus";
            this.MainStatus.Size = new System.Drawing.Size(807, 22);
            this.MainStatus.TabIndex = 2;
            // 
            // StatusContractsCountStatic
            // 
            this.StatusContractsCountStatic.Name = "StatusContractsCountStatic";
            this.StatusContractsCountStatic.Size = new System.Drawing.Size(96, 17);
            this.StatusContractsCountStatic.Text = "Всего договоров:";
            // 
            // StatusContractsCount
            // 
            this.StatusContractsCount.Name = "StatusContractsCount";
            this.StatusContractsCount.Size = new System.Drawing.Size(13, 17);
            this.StatusContractsCount.Text = "0";
            // 
            // StatusFilteredCountStatic
            // 
            this.StatusFilteredCountStatic.Name = "StatusFilteredCountStatic";
            this.StatusFilteredCountStatic.Size = new System.Drawing.Size(64, 17);
            this.StatusFilteredCountStatic.Text = "В фильтре:";
            // 
            // StatusFilteredCount
            // 
            this.StatusFilteredCount.Name = "StatusFilteredCount";
            this.StatusFilteredCount.Size = new System.Drawing.Size(13, 17);
            this.StatusFilteredCount.Text = "0";
            // 
            // StatusContractsSumStatic
            // 
            this.StatusContractsSumStatic.Name = "StatusContractsSumStatic";
            this.StatusContractsSumStatic.Size = new System.Drawing.Size(78, 17);
            this.StatusContractsSumStatic.Text = "Общая сумма:";
            // 
            // StatusContractsSum
            // 
            this.StatusContractsSum.Name = "StatusContractsSum";
            this.StatusContractsSum.Size = new System.Drawing.Size(13, 17);
            this.StatusContractsSum.Text = "0";
            // 
            // StatusContractsFilteredSumStatic
            // 
            this.StatusContractsFilteredSumStatic.Name = "StatusContractsFilteredSumStatic";
            this.StatusContractsFilteredSumStatic.Size = new System.Drawing.Size(64, 17);
            this.StatusContractsFilteredSumStatic.Text = "В фильтре:";
            // 
            // StatusContractsFilteredSum
            // 
            this.StatusContractsFilteredSum.Name = "StatusContractsFilteredSum";
            this.StatusContractsFilteredSum.Size = new System.Drawing.Size(13, 17);
            this.StatusContractsFilteredSum.Text = "0";
            // 
            // FilterPanel
            // 
            this.FilterPanel.Dock = System.Windows.Forms.DockStyle.Left;
            this.FilterPanel.Location = new System.Drawing.Point(0, 24);
            this.FilterPanel.Name = "FilterPanel";
            this.FilterPanel.Size = new System.Drawing.Size(130, 414);
            this.FilterPanel.TabIndex = 3;
            // 
            // MainGrid
            // 
            this.MainGrid.AllowUserToAddRows = false;
            this.MainGrid.AllowUserToDeleteRows = false;
            this.MainGrid.AllowUserToOrderColumns = true;
            this.MainGrid.AllowUserToResizeColumns = false;
            this.MainGrid.AllowUserToResizeRows = false;
            this.MainGrid.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.DisplayedCells;
            this.MainGrid.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.DisplayedCells;
            this.MainGrid.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.MainGrid.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Column1,
            this.Column2,
            this.Column3,
            this.Column4,
            this.Column5,
            this.Column6,
            this.Column7,
            this.Column8,
            this.Column9,
            this.Column10});
            this.MainGrid.Dock = System.Windows.Forms.DockStyle.Fill;
            this.MainGrid.Location = new System.Drawing.Point(130, 24);
            this.MainGrid.MultiSelect = false;
            this.MainGrid.Name = "MainGrid";
            this.MainGrid.ReadOnly = true;
            this.MainGrid.RowHeadersVisible = false;
            this.MainGrid.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.MainGrid.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.MainGrid.Size = new System.Drawing.Size(677, 414);
            this.MainGrid.TabIndex = 4;
            // 
            // Column1
            // 
            this.Column1.HeaderText = "Номер договора";
            this.Column1.Name = "Column1";
            this.Column1.ReadOnly = true;
            this.Column1.Width = 106;
            // 
            // Column2
            // 
            this.Column2.HeaderText = "Регистр. номер";
            this.Column2.Name = "Column2";
            this.Column2.ReadOnly = true;
            this.Column2.Width = 102;
            // 
            // Column3
            // 
            this.Column3.HeaderText = "Номер договора";
            this.Column3.Name = "Column3";
            this.Column3.ReadOnly = true;
            this.Column3.Width = 106;
            // 
            // Column4
            // 
            this.Column4.HeaderText = "Дата договора";
            this.Column4.Name = "Column4";
            this.Column4.ReadOnly = true;
            this.Column4.Width = 99;
            // 
            // Column5
            // 
            this.Column5.HeaderText = "Срок договора";
            this.Column5.Name = "Column5";
            this.Column5.ReadOnly = true;
            this.Column5.Width = 98;
            // 
            // Column6
            // 
            this.Column6.HeaderText = "Дата поступления";
            this.Column6.Name = "Column6";
            this.Column6.ReadOnly = true;
            this.Column6.Width = 115;
            // 
            // Column7
            // 
            this.Column7.HeaderText = "Дата регистрации";
            this.Column7.Name = "Column7";
            this.Column7.ReadOnly = true;
            this.Column7.Width = 115;
            // 
            // Column8
            // 
            this.Column8.HeaderText = "Район";
            this.Column8.Name = "Column8";
            this.Column8.ReadOnly = true;
            this.Column8.Width = 63;
            // 
            // Column9
            // 
            this.Column9.HeaderText = "Поставщик";
            this.Column9.Name = "Column9";
            this.Column9.ReadOnly = true;
            this.Column9.Width = 90;
            // 
            // Column10
            // 
            this.Column10.HeaderText = "Сумма";
            this.Column10.Name = "Column10";
            this.Column10.ReadOnly = true;
            this.Column10.Width = 66;
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(807, 460);
            this.Controls.Add(this.MainGrid);
            this.Controls.Add(this.FilterPanel);
            this.Controls.Add(this.MainStatus);
            this.Controls.Add(this.MainMenu);
            this.MainMenuStrip = this.MainMenu;
            this.Name = "MainForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Contracts.NET";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.Load += new System.EventHandler(this.MainFormLoad);
            this.MainMenu.ResumeLayout(false);
            this.MainMenu.PerformLayout();
            this.MainStatus.ResumeLayout(false);
            this.MainStatus.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.MainGrid)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();
        }

        #endregion

        private System.Windows.Forms.MenuStrip MainMenu;
        private System.Windows.Forms.ToolStripMenuItem FileMenu;
        private System.Windows.Forms.ToolStripMenuItem ExitMenuItem;
        private System.Windows.Forms.StatusStrip MainStatus;
        private System.Windows.Forms.ToolStripStatusLabel StatusContractsCountStatic;
        private System.Windows.Forms.ToolStripStatusLabel StatusContractsCount;
        private System.Windows.Forms.ToolStripStatusLabel StatusFilteredCountStatic;
        private System.Windows.Forms.ToolStripStatusLabel StatusFilteredCount;
        private System.Windows.Forms.ToolStripStatusLabel StatusContractsSumStatic;
        private System.Windows.Forms.ToolStripStatusLabel StatusContractsSum;
        private System.Windows.Forms.ToolStripStatusLabel StatusContractsFilteredSumStatic;
        private System.Windows.Forms.ToolStripStatusLabel StatusContractsFilteredSum;
        private System.Windows.Forms.Panel FilterPanel;
        private System.Windows.Forms.DataGridView MainGrid;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column1;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column2;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column3;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column4;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column5;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column6;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column7;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column8;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column9;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column10;
    }
}

