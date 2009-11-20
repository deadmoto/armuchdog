namespace Contracts.NET
{
    partial class ProvidersForm
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
            this.ProvidersMenu = new System.Windows.Forms.MenuStrip();
            this.FileMenu = new System.Windows.Forms.ToolStripMenuItem();
            this.CloseMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.EditMenu = new System.Windows.Forms.ToolStripMenuItem();
            this.InsertMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.UpdateMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.DeleteMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.ProvidersGrid = new System.Windows.Forms.DataGridView();
            this.ColumnId = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColumnName = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ProvidersMenu.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.ProvidersGrid)).BeginInit();
            this.SuspendLayout();
            // 
            // ProvidersMenu
            // 
            this.ProvidersMenu.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.FileMenu,
            this.EditMenu});
            this.ProvidersMenu.Location = new System.Drawing.Point(0, 0);
            this.ProvidersMenu.Name = "ProvidersMenu";
            this.ProvidersMenu.Size = new System.Drawing.Size(632, 24);
            this.ProvidersMenu.TabIndex = 1;
            this.ProvidersMenu.Text = "ProvidersMenu";
            // 
            // FileMenu
            // 
            this.FileMenu.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.CloseMenuItem});
            this.FileMenu.Name = "FileMenu";
            this.FileMenu.Size = new System.Drawing.Size(45, 20);
            this.FileMenu.Text = "Файл";
            // 
            // CloseMenuItem
            // 
            this.CloseMenuItem.Name = "CloseMenuItem";
            this.CloseMenuItem.Size = new System.Drawing.Size(129, 22);
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
            this.EditMenu.Size = new System.Drawing.Size(56, 20);
            this.EditMenu.Text = "Правка";
            // 
            // InsertMenuItem
            // 
            this.InsertMenuItem.Name = "InsertMenuItem";
            this.InsertMenuItem.Size = new System.Drawing.Size(152, 22);
            this.InsertMenuItem.Text = "Создать";
            this.InsertMenuItem.Click += new System.EventHandler(this.InsertMenuItem_Click);
            // 
            // UpdateMenuItem
            // 
            this.UpdateMenuItem.Name = "UpdateMenuItem";
            this.UpdateMenuItem.Size = new System.Drawing.Size(152, 22);
            this.UpdateMenuItem.Text = "Изменить";
            // 
            // DeleteMenuItem
            // 
            this.DeleteMenuItem.Name = "DeleteMenuItem";
            this.DeleteMenuItem.Size = new System.Drawing.Size(152, 22);
            this.DeleteMenuItem.Text = "Удалить";
            // 
            // ProvidersGrid
            // 
            this.ProvidersGrid.AllowUserToAddRows = false;
            this.ProvidersGrid.AllowUserToDeleteRows = false;
            this.ProvidersGrid.AllowUserToResizeColumns = false;
            this.ProvidersGrid.AllowUserToResizeRows = false;
            this.ProvidersGrid.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            this.ProvidersGrid.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.ProvidersGrid.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.ColumnId,
            this.ColumnName});
            this.ProvidersGrid.Dock = System.Windows.Forms.DockStyle.Fill;
            this.ProvidersGrid.Location = new System.Drawing.Point(0, 24);
            this.ProvidersGrid.Name = "ProvidersGrid";
            this.ProvidersGrid.ReadOnly = true;
            this.ProvidersGrid.RowHeadersVisible = false;
            this.ProvidersGrid.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.ProvidersGrid.Size = new System.Drawing.Size(632, 429);
            this.ProvidersGrid.TabIndex = 0;
            // 
            // ColumnId
            // 
            this.ColumnId.HeaderText = "Код";
            this.ColumnId.Name = "ColumnId";
            this.ColumnId.ReadOnly = true;
            this.ColumnId.Width = 51;
            // 
            // ColumnName
            // 
            this.ColumnName.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.ColumnName.HeaderText = "Наименование";
            this.ColumnName.Name = "ColumnName";
            this.ColumnName.ReadOnly = true;
            // 
            // ProvidersForm
            // 
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.None;
            this.ClientSize = new System.Drawing.Size(632, 453);
            this.Controls.Add(this.ProvidersGrid);
            this.Controls.Add(this.ProvidersMenu);
            this.MainMenuStrip = this.ProvidersMenu;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "ProvidersForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Справочник поставщиков";
            this.Load += new System.EventHandler(this.ProvidersFormLoad);
            this.ProvidersMenu.ResumeLayout(false);
            this.ProvidersMenu.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.ProvidersGrid)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip ProvidersMenu;
        private System.Windows.Forms.ToolStripMenuItem FileMenu;
        private System.Windows.Forms.ToolStripMenuItem CloseMenuItem;
        private System.Windows.Forms.ToolStripMenuItem EditMenu;
        private System.Windows.Forms.ToolStripMenuItem InsertMenuItem;
        private System.Windows.Forms.ToolStripMenuItem UpdateMenuItem;
        private System.Windows.Forms.ToolStripMenuItem DeleteMenuItem;
        private System.Windows.Forms.DataGridView ProvidersGrid;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnId;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnName;
    }
}