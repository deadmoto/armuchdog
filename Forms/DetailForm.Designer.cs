namespace Contracts.NET
{
    partial class DetailForm
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
            this.Classifier = new System.Windows.Forms.TextBox();
            this.ClassifierSelect = new System.Windows.Forms.Button();
            this.ClassifierBox = new System.Windows.Forms.GroupBox();
            this.OpcodeBox = new System.Windows.Forms.GroupBox();
            this.OpcodeSelect = new System.Windows.Forms.Button();
            this.OpcodeId = new System.Windows.Forms.TextBox();
            this.FileMenu = new System.Windows.Forms.ToolStripMenuItem();
            this.SaveMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.CloseMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.DetailMenu = new System.Windows.Forms.MenuStrip();
            this.CommentBox = new System.Windows.Forms.GroupBox();
            this.Comment = new System.Windows.Forms.TextBox();
            this.DetailDate = new System.Windows.Forms.MaskedTextBox();
            this.DetailDateBox = new System.Windows.Forms.GroupBox();
            this.Balance = new System.Windows.Forms.TextBox();
            this.BalanceBox = new System.Windows.Forms.GroupBox();
            this.PriceBox = new System.Windows.Forms.GroupBox();
            this.Report = new System.Windows.Forms.CheckBox();
            this.Price = new System.Windows.Forms.TextBox();
            this.ClassifierName = new System.Windows.Forms.TextBox();
            this.OpcodeName = new System.Windows.Forms.TextBox();
            this.ClassifierBox.SuspendLayout();
            this.OpcodeBox.SuspendLayout();
            this.DetailMenu.SuspendLayout();
            this.CommentBox.SuspendLayout();
            this.DetailDateBox.SuspendLayout();
            this.BalanceBox.SuspendLayout();
            this.PriceBox.SuspendLayout();
            this.SuspendLayout();
            // 
            // Classifier
            // 
            this.Classifier.Dock = System.Windows.Forms.DockStyle.Left;
            this.Classifier.Location = new System.Drawing.Point(3, 16);
            this.Classifier.Name = "Classifier";
            this.Classifier.ReadOnly = true;
            this.Classifier.Size = new System.Drawing.Size(46, 20);
            this.Classifier.TabIndex = 0;
            // 
            // ClassifierSelect
            // 
            this.ClassifierSelect.Location = new System.Drawing.Point(444, 12);
            this.ClassifierSelect.Name = "ClassifierSelect";
            this.ClassifierSelect.Size = new System.Drawing.Size(24, 24);
            this.ClassifierSelect.TabIndex = 1;
            this.ClassifierSelect.Text = "...";
            this.ClassifierSelect.UseVisualStyleBackColor = true;
            // 
            // ClassifierBox
            // 
            this.ClassifierBox.Controls.Add(this.ClassifierName);
            this.ClassifierBox.Controls.Add(this.ClassifierSelect);
            this.ClassifierBox.Controls.Add(this.Classifier);
            this.ClassifierBox.Dock = System.Windows.Forms.DockStyle.Top;
            this.ClassifierBox.Location = new System.Drawing.Point(0, 24);
            this.ClassifierBox.Name = "ClassifierBox";
            this.ClassifierBox.Size = new System.Drawing.Size(474, 42);
            this.ClassifierBox.TabIndex = 13;
            this.ClassifierBox.TabStop = false;
            this.ClassifierBox.Text = "ОКВЭД:";
            // 
            // OpcodeBox
            // 
            this.OpcodeBox.Controls.Add(this.OpcodeName);
            this.OpcodeBox.Controls.Add(this.OpcodeSelect);
            this.OpcodeBox.Controls.Add(this.OpcodeId);
            this.OpcodeBox.Dock = System.Windows.Forms.DockStyle.Top;
            this.OpcodeBox.Location = new System.Drawing.Point(0, 66);
            this.OpcodeBox.Name = "OpcodeBox";
            this.OpcodeBox.Size = new System.Drawing.Size(474, 43);
            this.OpcodeBox.TabIndex = 14;
            this.OpcodeBox.TabStop = false;
            this.OpcodeBox.Text = "КОСГУ:";
            // 
            // OpcodeSelect
            // 
            this.OpcodeSelect.Location = new System.Drawing.Point(444, 12);
            this.OpcodeSelect.Name = "OpcodeSelect";
            this.OpcodeSelect.Size = new System.Drawing.Size(24, 24);
            this.OpcodeSelect.TabIndex = 2;
            this.OpcodeSelect.Text = "...";
            this.OpcodeSelect.UseVisualStyleBackColor = true;
            // 
            // OpcodeId
            // 
            this.OpcodeId.Dock = System.Windows.Forms.DockStyle.Left;
            this.OpcodeId.Location = new System.Drawing.Point(3, 16);
            this.OpcodeId.Name = "OpcodeId";
            this.OpcodeId.ReadOnly = true;
            this.OpcodeId.Size = new System.Drawing.Size(46, 20);
            this.OpcodeId.TabIndex = 0;
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
            this.SaveMenuItem.Click += new System.EventHandler(this.SaveMenuItemClick);
            // 
            // CloseMenuItem
            // 
            this.CloseMenuItem.Name = "CloseMenuItem";
            this.CloseMenuItem.Size = new System.Drawing.Size(132, 22);
            this.CloseMenuItem.Text = "Закрыть";
            this.CloseMenuItem.Click += new System.EventHandler(this.CloseMenuItemClick);
            // 
            // DetailMenu
            // 
            this.DetailMenu.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.FileMenu});
            this.DetailMenu.Location = new System.Drawing.Point(0, 0);
            this.DetailMenu.Name = "DetailMenu";
            this.DetailMenu.Size = new System.Drawing.Size(474, 24);
            this.DetailMenu.TabIndex = 0;
            // 
            // CommentBox
            // 
            this.CommentBox.Controls.Add(this.Comment);
            this.CommentBox.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.CommentBox.Location = new System.Drawing.Point(0, 151);
            this.CommentBox.Name = "CommentBox";
            this.CommentBox.Size = new System.Drawing.Size(474, 141);
            this.CommentBox.TabIndex = 21;
            this.CommentBox.TabStop = false;
            this.CommentBox.Text = "Комментарий:";
            // 
            // Comment
            // 
            this.Comment.Dock = System.Windows.Forms.DockStyle.Fill;
            this.Comment.Location = new System.Drawing.Point(3, 16);
            this.Comment.MaxLength = 4096;
            this.Comment.Multiline = true;
            this.Comment.Name = "Comment";
            this.Comment.Size = new System.Drawing.Size(468, 122);
            this.Comment.TabIndex = 0;
            // 
            // DetailDate
            // 
            this.DetailDate.Dock = System.Windows.Forms.DockStyle.Fill;
            this.DetailDate.Location = new System.Drawing.Point(3, 16);
            this.DetailDate.Mask = "00/00/0000";
            this.DetailDate.Name = "DetailDate";
            this.DetailDate.Size = new System.Drawing.Size(61, 20);
            this.DetailDate.TabIndex = 0;
            this.DetailDate.ValidatingType = typeof(System.DateTime);
            // 
            // DetailDateBox
            // 
            this.DetailDateBox.Controls.Add(this.DetailDate);
            this.DetailDateBox.Dock = System.Windows.Forms.DockStyle.Left;
            this.DetailDateBox.Location = new System.Drawing.Point(0, 109);
            this.DetailDateBox.Name = "DetailDateBox";
            this.DetailDateBox.Size = new System.Drawing.Size(67, 42);
            this.DetailDateBox.TabIndex = 29;
            this.DetailDateBox.TabStop = false;
            this.DetailDateBox.Text = "Дата:";
            // 
            // Balance
            // 
            this.Balance.Dock = System.Windows.Forms.DockStyle.Fill;
            this.Balance.Location = new System.Drawing.Point(3, 16);
            this.Balance.Name = "Balance";
            this.Balance.ReadOnly = true;
            this.Balance.Size = new System.Drawing.Size(122, 20);
            this.Balance.TabIndex = 1;
            this.Balance.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // BalanceBox
            // 
            this.BalanceBox.Controls.Add(this.Balance);
            this.BalanceBox.Dock = System.Windows.Forms.DockStyle.Right;
            this.BalanceBox.Location = new System.Drawing.Point(346, 109);
            this.BalanceBox.Name = "BalanceBox";
            this.BalanceBox.Size = new System.Drawing.Size(128, 42);
            this.BalanceBox.TabIndex = 30;
            this.BalanceBox.TabStop = false;
            this.BalanceBox.Text = "Остаток:";
            // 
            // PriceBox
            // 
            this.PriceBox.Controls.Add(this.Report);
            this.PriceBox.Controls.Add(this.Price);
            this.PriceBox.Dock = System.Windows.Forms.DockStyle.Top;
            this.PriceBox.Location = new System.Drawing.Point(67, 109);
            this.PriceBox.Name = "PriceBox";
            this.PriceBox.Size = new System.Drawing.Size(279, 42);
            this.PriceBox.TabIndex = 31;
            this.PriceBox.TabStop = false;
            this.PriceBox.Text = "Сумма:";
            // 
            // Report
            // 
            this.Report.AutoSize = true;
            this.Report.Dock = System.Windows.Forms.DockStyle.Fill;
            this.Report.Location = new System.Drawing.Point(3, 16);
            this.Report.Name = "Report";
            this.Report.Size = new System.Drawing.Size(151, 23);
            this.Report.TabIndex = 13;
            this.Report.Text = "Скрывать в отчётах:";
            this.Report.UseVisualStyleBackColor = true;
            // 
            // Price
            // 
            this.Price.Dock = System.Windows.Forms.DockStyle.Right;
            this.Price.Location = new System.Drawing.Point(154, 16);
            this.Price.Name = "Price";
            this.Price.Size = new System.Drawing.Size(122, 20);
            this.Price.TabIndex = 0;
            this.Price.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // ClassifierName
            // 
            this.ClassifierName.Dock = System.Windows.Forms.DockStyle.Left;
            this.ClassifierName.Location = new System.Drawing.Point(49, 16);
            this.ClassifierName.Name = "ClassifierName";
            this.ClassifierName.ReadOnly = true;
            this.ClassifierName.Size = new System.Drawing.Size(389, 20);
            this.ClassifierName.TabIndex = 2;
            // 
            // OpcodeName
            // 
            this.OpcodeName.Dock = System.Windows.Forms.DockStyle.Left;
            this.OpcodeName.Location = new System.Drawing.Point(49, 16);
            this.OpcodeName.Name = "OpcodeName";
            this.OpcodeName.ReadOnly = true;
            this.OpcodeName.Size = new System.Drawing.Size(389, 20);
            this.OpcodeName.TabIndex = 3;
            // 
            // DetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(474, 292);
            this.Controls.Add(this.PriceBox);
            this.Controls.Add(this.BalanceBox);
            this.Controls.Add(this.DetailDateBox);
            this.Controls.Add(this.CommentBox);
            this.Controls.Add(this.OpcodeBox);
            this.Controls.Add(this.ClassifierBox);
            this.Controls.Add(this.DetailMenu);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.MainMenuStrip = this.DetailMenu;
            this.MaximizeBox = false;
            this.Name = "DetailForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Позиция договора";
            this.Load += new System.EventHandler(this.DetailFormLoad);
            this.ClassifierBox.ResumeLayout(false);
            this.ClassifierBox.PerformLayout();
            this.OpcodeBox.ResumeLayout(false);
            this.OpcodeBox.PerformLayout();
            this.DetailMenu.ResumeLayout(false);
            this.DetailMenu.PerformLayout();
            this.CommentBox.ResumeLayout(false);
            this.CommentBox.PerformLayout();
            this.DetailDateBox.ResumeLayout(false);
            this.DetailDateBox.PerformLayout();
            this.BalanceBox.ResumeLayout(false);
            this.BalanceBox.PerformLayout();
            this.PriceBox.ResumeLayout(false);
            this.PriceBox.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox Classifier;
        private System.Windows.Forms.Button ClassifierSelect;
        private System.Windows.Forms.GroupBox ClassifierBox;
        private System.Windows.Forms.GroupBox OpcodeBox;
        private System.Windows.Forms.Button OpcodeSelect;
        private System.Windows.Forms.TextBox OpcodeId;
        private System.Windows.Forms.ToolStripMenuItem FileMenu;
        private System.Windows.Forms.ToolStripMenuItem SaveMenuItem;
        private System.Windows.Forms.ToolStripMenuItem CloseMenuItem;
        private System.Windows.Forms.MenuStrip DetailMenu;
        private System.Windows.Forms.GroupBox CommentBox;
        private System.Windows.Forms.TextBox Comment;
        private System.Windows.Forms.MaskedTextBox DetailDate;
        private System.Windows.Forms.GroupBox DetailDateBox;
        private System.Windows.Forms.TextBox Balance;
        private System.Windows.Forms.GroupBox BalanceBox;
        private System.Windows.Forms.GroupBox PriceBox;
        private System.Windows.Forms.CheckBox Report;
        private System.Windows.Forms.TextBox Price;
        private System.Windows.Forms.TextBox ClassifierName;
        private System.Windows.Forms.TextBox OpcodeName;


    }
}