namespace Contracts.NET
{
    partial class ClassifierForm
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
            this.ClassifierMenu = new System.Windows.Forms.MenuStrip();
            this.FileMenu = new System.Windows.Forms.ToolStripMenuItem();
            this.SelectMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.CloseMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.ClassifierGrid = new System.Windows.Forms.DataGridView();
            this.ColumnId = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColumnName = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ClassifierMenu.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.ClassifierGrid)).BeginInit();
            this.SuspendLayout();
            // 
            // ClassifierMenu
            // 
            this.ClassifierMenu.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.FileMenu});
            this.ClassifierMenu.Location = new System.Drawing.Point(0, 0);
            this.ClassifierMenu.Name = "ClassifierMenu";
            this.ClassifierMenu.Size = new System.Drawing.Size(634, 24);
            this.ClassifierMenu.TabIndex = 1;
            this.ClassifierMenu.Text = "menuStrip1";
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
            // ClassifierGrid
            // 
            this.ClassifierGrid.AllowUserToAddRows = false;
            this.ClassifierGrid.AllowUserToDeleteRows = false;
            this.ClassifierGrid.AllowUserToResizeColumns = false;
            this.ClassifierGrid.AllowUserToResizeRows = false;
            this.ClassifierGrid.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.ClassifierGrid.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.ColumnId,
            this.ColumnName});
            this.ClassifierGrid.Dock = System.Windows.Forms.DockStyle.Fill;
            this.ClassifierGrid.Location = new System.Drawing.Point(0, 24);
            this.ClassifierGrid.MultiSelect = false;
            this.ClassifierGrid.Name = "ClassifierGrid";
            this.ClassifierGrid.ReadOnly = true;
            this.ClassifierGrid.RowHeadersVisible = false;
            this.ClassifierGrid.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.ClassifierGrid.Size = new System.Drawing.Size(634, 431);
            this.ClassifierGrid.TabIndex = 2;
            // 
            // ColumnId
            // 
            this.ColumnId.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.AllCells;
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
            // ClassifierForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(634, 455);
            this.Controls.Add(this.ClassifierGrid);
            this.Controls.Add(this.ClassifierMenu);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.MainMenuStrip = this.ClassifierMenu;
            this.MinimumSize = new System.Drawing.Size(640, 480);
            this.Name = "ClassifierForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Справочник ОКВЭД";
            this.Load += new System.EventHandler(this.ClassifierFormLoad);
            this.ClassifierMenu.ResumeLayout(false);
            this.ClassifierMenu.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.ClassifierGrid)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip ClassifierMenu;
        private System.Windows.Forms.ToolStripMenuItem FileMenu;
        private System.Windows.Forms.ToolStripMenuItem SelectMenuItem;
        private System.Windows.Forms.ToolStripMenuItem CloseMenuItem;
        private System.Windows.Forms.DataGridView ClassifierGrid;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnId;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnName;
    }
}