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
            this.NCEAGrid = new System.Windows.Forms.DataGridView();
            this.ColumnId = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColumnName = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.NCEAMenu = new System.Windows.Forms.MenuStrip();
            this.FileMenu = new System.Windows.Forms.ToolStripMenuItem();
            this.CloseMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            ((System.ComponentModel.ISupportInitialize)(this.NCEAGrid)).BeginInit();
            this.NCEAMenu.SuspendLayout();
            this.SuspendLayout();
            // 
            // NCEAGrid
            // 
            this.NCEAGrid.AllowUserToAddRows = false;
            this.NCEAGrid.AllowUserToDeleteRows = false;
            this.NCEAGrid.AllowUserToResizeColumns = false;
            this.NCEAGrid.AllowUserToResizeRows = false;
            this.NCEAGrid.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.NCEAGrid.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.ColumnId,
            this.ColumnName});
            this.NCEAGrid.Dock = System.Windows.Forms.DockStyle.Fill;
            this.NCEAGrid.Location = new System.Drawing.Point(0, 24);
            this.NCEAGrid.MultiSelect = false;
            this.NCEAGrid.Name = "NCEAGrid";
            this.NCEAGrid.ReadOnly = true;
            this.NCEAGrid.RowHeadersVisible = false;
            this.NCEAGrid.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.NCEAGrid.Size = new System.Drawing.Size(634, 431);
            this.NCEAGrid.TabIndex = 0;
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
            // NCEAMenu
            // 
            this.NCEAMenu.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.FileMenu});
            this.NCEAMenu.Location = new System.Drawing.Point(0, 0);
            this.NCEAMenu.Name = "NCEAMenu";
            this.NCEAMenu.Size = new System.Drawing.Size(634, 24);
            this.NCEAMenu.TabIndex = 1;
            this.NCEAMenu.Text = "menuStrip1";
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
            // ClassifierForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(634, 455);
            this.Controls.Add(this.NCEAGrid);
            this.Controls.Add(this.NCEAMenu);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.MainMenuStrip = this.NCEAMenu;
            this.MinimumSize = new System.Drawing.Size(640, 480);
            this.Name = "ClassifierForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Справочник ОКВЭД";
            ((System.ComponentModel.ISupportInitialize)(this.NCEAGrid)).EndInit();
            this.NCEAMenu.ResumeLayout(false);
            this.NCEAMenu.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView NCEAGrid;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnId;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnName;
        private System.Windows.Forms.MenuStrip NCEAMenu;
        private System.Windows.Forms.ToolStripMenuItem FileMenu;
        private System.Windows.Forms.ToolStripMenuItem CloseMenuItem;
    }
}