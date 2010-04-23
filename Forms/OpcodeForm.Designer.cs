namespace Contracts.NET
{
    partial class OpcodeForm
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
            this.OpcodeMenu = new System.Windows.Forms.MenuStrip();
            this.FileMenu = new System.Windows.Forms.ToolStripMenuItem();
            this.SelectMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.CloseMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.OpcodeGrid = new System.Windows.Forms.DataGridView();
            this.ColumnId = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColumnName = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.OpcodeMenu.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.OpcodeGrid)).BeginInit();
            this.SuspendLayout();
            // 
            // OpcodeMenu
            // 
            this.OpcodeMenu.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.FileMenu});
            this.OpcodeMenu.Location = new System.Drawing.Point(0, 0);
            this.OpcodeMenu.Name = "OpcodeMenu";
            this.OpcodeMenu.Size = new System.Drawing.Size(634, 24);
            this.OpcodeMenu.TabIndex = 1;
            this.OpcodeMenu.Text = "menuStrip1";
            // 
            // FileMenu
            // 
            this.FileMenu.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.SelectMenuItem,
            this.CloseMenuItem});
            this.FileMenu.Name = "FileMenu";
            this.FileMenu.Size = new System.Drawing.Size(48, 20);
            this.FileMenu.Text = "Файл";
            // 
            // SelectMenuItem
            // 
            this.SelectMenuItem.Name = "SelectMenuItem";
            this.SelectMenuItem.Size = new System.Drawing.Size(121, 22);
            this.SelectMenuItem.Text = "Выбрать";
            this.SelectMenuItem.Visible = false;
            this.SelectMenuItem.Click += new System.EventHandler(this.SelectMenuItemClick);
            // 
            // CloseMenuItem
            // 
            this.CloseMenuItem.Name = "CloseMenuItem";
            this.CloseMenuItem.Size = new System.Drawing.Size(121, 22);
            this.CloseMenuItem.Text = "Закрыть";
            this.CloseMenuItem.Click += new System.EventHandler(this.CloseMenuItemClick);
            // 
            // OpcodeGrid
            // 
            this.OpcodeGrid.AllowUserToAddRows = false;
            this.OpcodeGrid.AllowUserToDeleteRows = false;
            this.OpcodeGrid.AllowUserToResizeColumns = false;
            this.OpcodeGrid.AllowUserToResizeRows = false;
            this.OpcodeGrid.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            this.OpcodeGrid.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCells;
            this.OpcodeGrid.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.OpcodeGrid.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.ColumnId,
            this.ColumnName});
            this.OpcodeGrid.Dock = System.Windows.Forms.DockStyle.Fill;
            this.OpcodeGrid.Location = new System.Drawing.Point(0, 24);
            this.OpcodeGrid.MultiSelect = false;
            this.OpcodeGrid.Name = "OpcodeGrid";
            this.OpcodeGrid.ReadOnly = true;
            this.OpcodeGrid.RowHeadersVisible = false;
            this.OpcodeGrid.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.OpcodeGrid.Size = new System.Drawing.Size(634, 431);
            this.OpcodeGrid.TabIndex = 3;
            // 
            // ColumnId
            // 
            this.ColumnId.HeaderText = "Код";
            this.ColumnId.Name = "ColumnId";
            this.ColumnId.ReadOnly = true;
            this.ColumnId.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            this.ColumnId.Width = 32;
            // 
            // ColumnName
            // 
            this.ColumnName.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.ColumnName.HeaderText = "Наименование";
            this.ColumnName.Name = "ColumnName";
            this.ColumnName.ReadOnly = true;
            this.ColumnName.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            // 
            // OpcodeForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(634, 455);
            this.Controls.Add(this.OpcodeGrid);
            this.Controls.Add(this.OpcodeMenu);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.MainMenuStrip = this.OpcodeMenu;
            this.MinimumSize = new System.Drawing.Size(640, 480);
            this.Name = "OpcodeForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Справочник КОСГУ";
            this.Load += new System.EventHandler(this.OpcodeFormLoad);
            this.OpcodeMenu.ResumeLayout(false);
            this.OpcodeMenu.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.OpcodeGrid)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip OpcodeMenu;
        private System.Windows.Forms.ToolStripMenuItem FileMenu;
        private System.Windows.Forms.ToolStripMenuItem SelectMenuItem;
        private System.Windows.Forms.ToolStripMenuItem CloseMenuItem;
        private System.Windows.Forms.DataGridView OpcodeGrid;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnId;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnName;
    }
}