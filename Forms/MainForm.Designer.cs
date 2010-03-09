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
            this.�������ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.��������ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.��������ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.�������ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.EditorsMenu = new System.Windows.Forms.ToolStripMenuItem();
            this.�����������������ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.ProvidersMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.���������������ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.���������������ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.������ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.���������ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.���ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.������������ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.��������������ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.MainStatus = new System.Windows.Forms.StatusStrip();
            this.StatusTotalCountStatic = new System.Windows.Forms.ToolStripStatusLabel();
            this.StatusTotalCount = new System.Windows.Forms.ToolStripStatusLabel();
            this.StatusFilterCountStatic = new System.Windows.Forms.ToolStripStatusLabel();
            this.StatusFilterCount = new System.Windows.Forms.ToolStripStatusLabel();
            this.StatusTotalSumStatic = new System.Windows.Forms.ToolStripStatusLabel();
            this.StatusTotalSum = new System.Windows.Forms.ToolStripStatusLabel();
            this.StatusFilterSumStatic = new System.Windows.Forms.ToolStripStatusLabel();
            this.StatusFilterSum = new System.Windows.Forms.ToolStripStatusLabel();
            this.FilterPanel = new System.Windows.Forms.Panel();
            this.MainGrid = new System.Windows.Forms.DataGridView();
            this.ColumnRegion = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColumnId = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColumnRegNum = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColumnConNum = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColumnRecDate = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColumnRegDate = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColumnConDate = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColumnExpDate = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColumnProvider = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column10 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.MainMenu.SuspendLayout();
            this.MainStatus.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.MainGrid)).BeginInit();
            this.SuspendLayout();
            // 
            // MainMenu
            // 
            this.MainMenu.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.FileMenu,
            this.�������ToolStripMenuItem,
            this.EditorsMenu,
            this.������ToolStripMenuItem});
            this.MainMenu.Location = new System.Drawing.Point(0, 0);
            this.MainMenu.Name = "MainMenu";
            this.MainMenu.Size = new System.Drawing.Size(807, 24);
            this.MainMenu.TabIndex = 1;
            this.MainMenu.Text = "ProvidersMenu";
            // 
            // FileMenu
            // 
            this.FileMenu.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.ExitMenuItem});
            this.FileMenu.Name = "FileMenu";
            this.FileMenu.Size = new System.Drawing.Size(45, 20);
            this.FileMenu.Text = "����";
            // 
            // ExitMenuItem
            // 
            this.ExitMenuItem.Name = "ExitMenuItem";
            this.ExitMenuItem.Size = new System.Drawing.Size(118, 22);
            this.ExitMenuItem.Text = "�����";
            this.ExitMenuItem.Click += new System.EventHandler(this.ExitMenuItemClick);
            // 
            // �������ToolStripMenuItem
            // 
            this.�������ToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.��������ToolStripMenuItem,
            this.��������ToolStripMenuItem,
            this.�������ToolStripMenuItem});
            this.�������ToolStripMenuItem.Name = "�������ToolStripMenuItem";
            this.�������ToolStripMenuItem.Size = new System.Drawing.Size(68, 20);
            this.�������ToolStripMenuItem.Text = "��������";
            // 
            // ��������ToolStripMenuItem
            // 
            this.��������ToolStripMenuItem.Name = "��������ToolStripMenuItem";
            this.��������ToolStripMenuItem.Size = new System.Drawing.Size(135, 22);
            this.��������ToolStripMenuItem.Text = "��������";
            // 
            // ��������ToolStripMenuItem
            // 
            this.��������ToolStripMenuItem.Name = "��������ToolStripMenuItem";
            this.��������ToolStripMenuItem.Size = new System.Drawing.Size(135, 22);
            this.��������ToolStripMenuItem.Text = "��������";
            // 
            // �������ToolStripMenuItem
            // 
            this.�������ToolStripMenuItem.Name = "�������ToolStripMenuItem";
            this.�������ToolStripMenuItem.Size = new System.Drawing.Size(135, 22);
            this.�������ToolStripMenuItem.Text = "�������";
            // 
            // EditorsMenu
            // 
            this.EditorsMenu.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.�����������������ToolStripMenuItem,
            this.ProvidersMenuItem,
            this.���������������ToolStripMenuItem,
            this.���������������ToolStripMenuItem});
            this.EditorsMenu.Name = "EditorsMenu";
            this.EditorsMenu.Size = new System.Drawing.Size(86, 20);
            this.EditorsMenu.Text = "�����������";
            // 
            // �����������������ToolStripMenuItem
            // 
            this.�����������������ToolStripMenuItem.Name = "�����������������ToolStripMenuItem";
            this.�����������������ToolStripMenuItem.Size = new System.Drawing.Size(217, 22);
            this.�����������������ToolStripMenuItem.Text = "���������� �������";
            // 
            // ProvidersMenuItem
            // 
            this.ProvidersMenuItem.Name = "ProvidersMenuItem";
            this.ProvidersMenuItem.Size = new System.Drawing.Size(217, 22);
            this.ProvidersMenuItem.Text = "���������� �����������";
            this.ProvidersMenuItem.Click += new System.EventHandler(this.ProvidersMenuItemClick);
            // 
            // ���������������ToolStripMenuItem
            // 
            this.���������������ToolStripMenuItem.Name = "���������������ToolStripMenuItem";
            this.���������������ToolStripMenuItem.Size = new System.Drawing.Size(217, 22);
            this.���������������ToolStripMenuItem.Text = "���������� �����";
            // 
            // ���������������ToolStripMenuItem
            // 
            this.���������������ToolStripMenuItem.Name = "���������������ToolStripMenuItem";
            this.���������������ToolStripMenuItem.Size = new System.Drawing.Size(217, 22);
            this.���������������ToolStripMenuItem.Text = "���������� �����";
            // 
            // ������ToolStripMenuItem
            // 
            this.������ToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.���������ToolStripMenuItem,
            this.���ToolStripMenuItem,
            this.������������ToolStripMenuItem,
            this.��������������ToolStripMenuItem});
            this.������ToolStripMenuItem.Name = "������ToolStripMenuItem";
            this.������ToolStripMenuItem.Size = new System.Drawing.Size(59, 20);
            this.������ToolStripMenuItem.Text = "������";
            // 
            // ���������ToolStripMenuItem
            // 
            this.���������ToolStripMenuItem.Name = "���������ToolStripMenuItem";
            this.���������ToolStripMenuItem.Size = new System.Drawing.Size(176, 22);
            this.���������ToolStripMenuItem.Text = "��������� �����";
            // 
            // ���ToolStripMenuItem
            // 
            this.���ToolStripMenuItem.Name = "���ToolStripMenuItem";
            this.���ToolStripMenuItem.Size = new System.Drawing.Size(176, 22);
            this.���ToolStripMenuItem.Text = "����� �� �����";
            // 
            // ������������ToolStripMenuItem
            // 
            this.������������ToolStripMenuItem.Name = "������������ToolStripMenuItem";
            this.������������ToolStripMenuItem.Size = new System.Drawing.Size(176, 22);
            this.������������ToolStripMenuItem.Text = "����� �� �����";
            // 
            // ��������������ToolStripMenuItem
            // 
            this.��������������ToolStripMenuItem.Name = "��������������ToolStripMenuItem";
            this.��������������ToolStripMenuItem.Size = new System.Drawing.Size(176, 22);
            this.��������������ToolStripMenuItem.Text = "����� �� �������";
            // 
            // MainStatus
            // 
            this.MainStatus.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.StatusTotalCountStatic,
            this.StatusTotalCount,
            this.StatusFilterCountStatic,
            this.StatusFilterCount,
            this.StatusTotalSumStatic,
            this.StatusTotalSum,
            this.StatusFilterSumStatic,
            this.StatusFilterSum});
            this.MainStatus.Location = new System.Drawing.Point(0, 438);
            this.MainStatus.Name = "MainStatus";
            this.MainStatus.Size = new System.Drawing.Size(807, 22);
            this.MainStatus.TabIndex = 2;
            // 
            // StatusTotalCountStatic
            // 
            this.StatusTotalCountStatic.Name = "StatusTotalCountStatic";
            this.StatusTotalCountStatic.Size = new System.Drawing.Size(96, 17);
            this.StatusTotalCountStatic.Text = "����� ���������:";
            // 
            // StatusTotalCount
            // 
            this.StatusTotalCount.Name = "StatusTotalCount";
            this.StatusTotalCount.Size = new System.Drawing.Size(13, 17);
            this.StatusTotalCount.Text = "0";
            // 
            // StatusFilterCountStatic
            // 
            this.StatusFilterCountStatic.Name = "StatusFilterCountStatic";
            this.StatusFilterCountStatic.Size = new System.Drawing.Size(64, 17);
            this.StatusFilterCountStatic.Text = "� �������:";
            // 
            // StatusFilterCount
            // 
            this.StatusFilterCount.Name = "StatusFilterCount";
            this.StatusFilterCount.Size = new System.Drawing.Size(13, 17);
            this.StatusFilterCount.Text = "0";
            // 
            // StatusTotalSumStatic
            // 
            this.StatusTotalSumStatic.Name = "StatusTotalSumStatic";
            this.StatusTotalSumStatic.Size = new System.Drawing.Size(78, 17);
            this.StatusTotalSumStatic.Text = "����� �����:";
            // 
            // StatusTotalSum
            // 
            this.StatusTotalSum.Name = "StatusTotalSum";
            this.StatusTotalSum.Size = new System.Drawing.Size(13, 17);
            this.StatusTotalSum.Text = "0";
            // 
            // StatusFilterSumStatic
            // 
            this.StatusFilterSumStatic.Name = "StatusFilterSumStatic";
            this.StatusFilterSumStatic.Size = new System.Drawing.Size(64, 17);
            this.StatusFilterSumStatic.Text = "� �������:";
            // 
            // StatusFilterSum
            // 
            this.StatusFilterSum.Name = "StatusFilterSum";
            this.StatusFilterSum.Size = new System.Drawing.Size(13, 17);
            this.StatusFilterSum.Text = "0";
            // 
            // FilterPanel
            // 
            this.FilterPanel.Dock = System.Windows.Forms.DockStyle.Top;
            this.FilterPanel.Location = new System.Drawing.Point(0, 24);
            this.FilterPanel.Name = "FilterPanel";
            this.FilterPanel.Size = new System.Drawing.Size(807, 50);
            this.FilterPanel.TabIndex = 3;
            // 
            // MainGrid
            // 
            this.MainGrid.AllowUserToAddRows = false;
            this.MainGrid.AllowUserToDeleteRows = false;
            this.MainGrid.AllowUserToResizeColumns = false;
            this.MainGrid.AllowUserToResizeRows = false;
            this.MainGrid.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            this.MainGrid.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.MainGrid.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.ColumnRegion,
            this.ColumnId,
            this.ColumnRegNum,
            this.ColumnConNum,
            this.ColumnRecDate,
            this.ColumnRegDate,
            this.ColumnConDate,
            this.ColumnExpDate,
            this.ColumnProvider,
            this.Column10});
            this.MainGrid.Dock = System.Windows.Forms.DockStyle.Fill;
            this.MainGrid.Location = new System.Drawing.Point(0, 74);
            this.MainGrid.MultiSelect = false;
            this.MainGrid.Name = "MainGrid";
            this.MainGrid.ReadOnly = true;
            this.MainGrid.RowHeadersVisible = false;
            this.MainGrid.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.MainGrid.Size = new System.Drawing.Size(807, 364);
            this.MainGrid.TabIndex = 4;
            this.MainGrid.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.MainGrid_CellContentClick);
            // 
            // ColumnRegion
            // 
            this.ColumnRegion.HeaderText = "�����";
            this.ColumnRegion.Name = "ColumnRegion";
            this.ColumnRegion.ReadOnly = true;
            this.ColumnRegion.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            this.ColumnRegion.Width = 44;
            // 
            // ColumnId
            // 
            this.ColumnId.HeaderText = "���������� �����";
            this.ColumnId.Name = "ColumnId";
            this.ColumnId.ReadOnly = true;
            this.ColumnId.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            this.ColumnId.Visible = false;
            this.ColumnId.Width = 107;
            // 
            // ColumnRegNum
            // 
            this.ColumnRegNum.HeaderText = "�������. �����";
            this.ColumnRegNum.Name = "ColumnRegNum";
            this.ColumnRegNum.ReadOnly = true;
            this.ColumnRegNum.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            this.ColumnRegNum.Width = 83;
            // 
            // ColumnConNum
            // 
            this.ColumnConNum.HeaderText = "����� ��������";
            this.ColumnConNum.Name = "ColumnConNum";
            this.ColumnConNum.ReadOnly = true;
            this.ColumnConNum.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            this.ColumnConNum.Width = 87;
            // 
            // ColumnRecDate
            // 
            this.ColumnRecDate.HeaderText = "���� ������.";
            this.ColumnRecDate.Name = "ColumnRecDate";
            this.ColumnRecDate.ReadOnly = true;
            this.ColumnRecDate.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            this.ColumnRecDate.Width = 71;
            // 
            // ColumnRegDate
            // 
            this.ColumnRegDate.HeaderText = "���� �������.";
            this.ColumnRegDate.Name = "ColumnRegDate";
            this.ColumnRegDate.ReadOnly = true;
            this.ColumnRegDate.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            this.ColumnRegDate.Width = 77;
            // 
            // ColumnConDate
            // 
            this.ColumnConDate.HeaderText = "���� ��������";
            this.ColumnConDate.Name = "ColumnConDate";
            this.ColumnConDate.ReadOnly = true;
            this.ColumnConDate.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            this.ColumnConDate.Width = 80;
            // 
            // ColumnExpDate
            // 
            this.ColumnExpDate.HeaderText = "���� ��������";
            this.ColumnExpDate.Name = "ColumnExpDate";
            this.ColumnExpDate.ReadOnly = true;
            this.ColumnExpDate.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            this.ColumnExpDate.Width = 79;
            // 
            // ColumnProvider
            // 
            this.ColumnProvider.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.ColumnProvider.HeaderText = "���������";
            this.ColumnProvider.Name = "ColumnProvider";
            this.ColumnProvider.ReadOnly = true;
            this.ColumnProvider.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            // 
            // Column10
            // 
            this.Column10.HeaderText = "�����";
            this.Column10.Name = "Column10";
            this.Column10.ReadOnly = true;
            this.Column10.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            this.Column10.Width = 47;
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
        private System.Windows.Forms.ToolStripStatusLabel StatusTotalCountStatic;
        private System.Windows.Forms.ToolStripStatusLabel StatusTotalCount;
        private System.Windows.Forms.ToolStripStatusLabel StatusFilterCountStatic;
        private System.Windows.Forms.ToolStripStatusLabel StatusFilterCount;
        private System.Windows.Forms.ToolStripStatusLabel StatusTotalSumStatic;
        private System.Windows.Forms.ToolStripStatusLabel StatusTotalSum;
        private System.Windows.Forms.ToolStripStatusLabel StatusFilterSumStatic;
        private System.Windows.Forms.ToolStripStatusLabel StatusFilterSum;
        private System.Windows.Forms.Panel FilterPanel;
        private System.Windows.Forms.DataGridView MainGrid;
        private System.Windows.Forms.ToolStripMenuItem �������ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem ��������ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem ��������ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem �������ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem EditorsMenu;
        private System.Windows.Forms.ToolStripMenuItem �����������������ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem ProvidersMenuItem;
        private System.Windows.Forms.ToolStripMenuItem ���������������ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem ���������������ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem ������ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem ���������ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem ���ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem ������������ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem ��������������ToolStripMenuItem;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnRegion;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnId;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnRegNum;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnConNum;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnRecDate;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnRegDate;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnConDate;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnExpDate;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnProvider;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column10;
    }
}

