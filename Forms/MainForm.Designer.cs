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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle4 = new System.Windows.Forms.DataGridViewCellStyle();
            this.MainMenu = new System.Windows.Forms.MenuStrip();
            this.FileMenu = new System.Windows.Forms.ToolStripMenuItem();
            this.ExitMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.EditMenu = new System.Windows.Forms.ToolStripMenuItem();
            this.InsertMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.EditMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.DeleteMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.EditorsMenu = new System.Windows.Forms.ToolStripMenuItem();
            this.ñïğàâî÷íèêĞàéîíîâToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.SupplierMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.ClassifierMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.OpcodeMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.îò÷¸òûToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.ñóììàğíûéToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.îò÷ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.îò÷¸òÏîÊÎÑÃÓToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.îò÷¸òÇàÊâàğòàëToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.label1 = new System.Windows.Forms.Label();
            this.YearBox = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.SearchButton = new System.Windows.Forms.Button();
            this.QuarterBox = new System.Windows.Forms.ComboBox();
            this.Grid = new System.Windows.Forms.DataGridView();
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
            this.MainStatus = new System.Windows.Forms.StatusStrip();
            this.StatusTotalCountStatic = new System.Windows.Forms.ToolStripStatusLabel();
            this.StatusTotalCount = new System.Windows.Forms.ToolStripStatusLabel();
            this.StatusFilterCountStatic = new System.Windows.Forms.ToolStripStatusLabel();
            this.StatusFilterCount = new System.Windows.Forms.ToolStripStatusLabel();
            this.StatusTotalSumStatic = new System.Windows.Forms.ToolStripStatusLabel();
            this.StatusTotalSum = new System.Windows.Forms.ToolStripStatusLabel();
            this.StatusFilterSumStatic = new System.Windows.Forms.ToolStripStatusLabel();
            this.StatusFilterSum = new System.Windows.Forms.ToolStripStatusLabel();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.button3 = new System.Windows.Forms.Button();
            this.MainMenu.SuspendLayout();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.Grid)).BeginInit();
            this.MainStatus.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.SuspendLayout();
            // 
            // MainMenu
            // 
            this.MainMenu.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.FileMenu,
            this.EditMenu,
            this.EditorsMenu,
            this.îò÷¸òûToolStripMenuItem});
            this.MainMenu.Location = new System.Drawing.Point(0, 0);
            this.MainMenu.Name = "MainMenu";
            this.MainMenu.Size = new System.Drawing.Size(1008, 24);
            this.MainMenu.TabIndex = 1;
            this.MainMenu.Text = "ProvidersMenu";
            // 
            // FileMenu
            // 
            this.FileMenu.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.ExitMenuItem});
            this.FileMenu.Name = "FileMenu";
            this.FileMenu.Size = new System.Drawing.Size(48, 20);
            this.FileMenu.Text = "Ôàéë";
            // 
            // ExitMenuItem
            // 
            this.ExitMenuItem.Name = "ExitMenuItem";
            this.ExitMenuItem.Size = new System.Drawing.Size(152, 22);
            this.ExitMenuItem.Text = "Âûõîä";
            this.ExitMenuItem.Click += new System.EventHandler(this.ExitClick);
            // 
            // EditMenu
            // 
            this.EditMenu.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.InsertMenuItem,
            this.EditMenuItem,
            this.DeleteMenuItem});
            this.EditMenu.Name = "EditMenu";
            this.EditMenu.Size = new System.Drawing.Size(59, 20);
            this.EditMenu.Text = "Ïğàâêà";
            // 
            // InsertMenuItem
            // 
            this.InsertMenuItem.Name = "InsertMenuItem";
            this.InsertMenuItem.Size = new System.Drawing.Size(152, 22);
            this.InsertMenuItem.Text = "Äîáàâèòü";
            this.InsertMenuItem.Click += new System.EventHandler(this.InsertContractClick);
            // 
            // EditMenuItem
            // 
            this.EditMenuItem.Name = "EditMenuItem";
            this.EditMenuItem.Size = new System.Drawing.Size(152, 22);
            this.EditMenuItem.Text = "Èçìåíèòü";
            this.EditMenuItem.Click += new System.EventHandler(this.EditContractClick);
            // 
            // DeleteMenuItem
            // 
            this.DeleteMenuItem.Name = "DeleteMenuItem";
            this.DeleteMenuItem.Size = new System.Drawing.Size(152, 22);
            this.DeleteMenuItem.Text = "Óäàëèòü";
            this.DeleteMenuItem.Click += new System.EventHandler(this.DeleteContractClick);
            // 
            // EditorsMenu
            // 
            this.EditorsMenu.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.ñïğàâî÷íèêĞàéîíîâToolStripMenuItem,
            this.SupplierMenuItem,
            this.ClassifierMenuItem,
            this.OpcodeMenuItem});
            this.EditorsMenu.Name = "EditorsMenu";
            this.EditorsMenu.Size = new System.Drawing.Size(94, 20);
            this.EditorsMenu.Text = "Ñïğàâî÷íèêè";
            // 
            // ñïğàâî÷íèêĞàéîíîâToolStripMenuItem
            // 
            this.ñïğàâî÷íèêĞàéîíîâToolStripMenuItem.Name = "ñïğàâî÷íèêĞàéîíîâToolStripMenuItem";
            this.ñïğàâî÷íèêĞàéîíîâToolStripMenuItem.Size = new System.Drawing.Size(219, 22);
            this.ñïğàâî÷íèêĞàéîíîâToolStripMenuItem.Text = "Ñïğàâî÷íèê ğàéîíîâ";
            this.ñïğàâî÷íèêĞàéîíîâToolStripMenuItem.Click += new System.EventHandler(this.DepartmentMenuItemClick);
            // 
            // SupplierMenuItem
            // 
            this.SupplierMenuItem.Name = "SupplierMenuItem";
            this.SupplierMenuItem.Size = new System.Drawing.Size(219, 22);
            this.SupplierMenuItem.Text = "Ñïğàâî÷íèê ïîñòàâùèêîâ";
            this.SupplierMenuItem.Click += new System.EventHandler(this.SupplierMenuItemClick);
            // 
            // ClassifierMenuItem
            // 
            this.ClassifierMenuItem.Name = "ClassifierMenuItem";
            this.ClassifierMenuItem.Size = new System.Drawing.Size(219, 22);
            this.ClassifierMenuItem.Text = "Ñïğàâî÷íèê ÎÊÂİÄ";
            this.ClassifierMenuItem.Click += new System.EventHandler(this.ClassifierMenuItemClick);
            // 
            // OpcodeMenuItem
            // 
            this.OpcodeMenuItem.Name = "OpcodeMenuItem";
            this.OpcodeMenuItem.Size = new System.Drawing.Size(219, 22);
            this.OpcodeMenuItem.Text = "Ñïğàâî÷íèê ÊÎÑÃÓ";
            this.OpcodeMenuItem.Click += new System.EventHandler(this.OpcodeMenuItemClick);
            // 
            // îò÷¸òûToolStripMenuItem
            // 
            this.îò÷¸òûToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.ñóììàğíûéToolStripMenuItem,
            this.îò÷ToolStripMenuItem,
            this.îò÷¸òÏîÊÎÑÃÓToolStripMenuItem,
            this.îò÷¸òÇàÊâàğòàëToolStripMenuItem});
            this.îò÷¸òûToolStripMenuItem.Name = "îò÷¸òûToolStripMenuItem";
            this.îò÷¸òûToolStripMenuItem.Size = new System.Drawing.Size(60, 20);
            this.îò÷¸òûToolStripMenuItem.Text = "Îò÷¸òû";
            // 
            // ñóììàğíûéToolStripMenuItem
            // 
            this.ñóììàğíûéToolStripMenuItem.Name = "ñóììàğíûéToolStripMenuItem";
            this.ñóììàğíûéToolStripMenuItem.Size = new System.Drawing.Size(175, 22);
            this.ñóììàğíûéToolStripMenuItem.Text = "Ñóììàğíûé îò÷¸ò";
            this.ñóììàğíûéToolStripMenuItem.Click += new System.EventHandler(this.ñóììàğíûéToolStripMenuItem_Click);
            // 
            // îò÷ToolStripMenuItem
            // 
            this.îò÷ToolStripMenuItem.Name = "îò÷ToolStripMenuItem";
            this.îò÷ToolStripMenuItem.Size = new System.Drawing.Size(175, 22);
            this.îò÷ToolStripMenuItem.Text = "Îò÷¸ò ïî ÎÊÂİÄ";
            this.îò÷ToolStripMenuItem.Click += new System.EventHandler(this.îò÷ToolStripMenuItem_Click);
            // 
            // îò÷¸òÏîÊÎÑÃÓToolStripMenuItem
            // 
            this.îò÷¸òÏîÊÎÑÃÓToolStripMenuItem.Name = "îò÷¸òÏîÊÎÑÃÓToolStripMenuItem";
            this.îò÷¸òÏîÊÎÑÃÓToolStripMenuItem.Size = new System.Drawing.Size(175, 22);
            this.îò÷¸òÏîÊÎÑÃÓToolStripMenuItem.Text = "Îò÷¸ò ïî ÊÎÑÃÓ";
            this.îò÷¸òÏîÊÎÑÃÓToolStripMenuItem.Click += new System.EventHandler(this.îò÷¸òÏîÊÎÑÃÓToolStripMenuItem_Click);
            // 
            // îò÷¸òÇàÊâàğòàëToolStripMenuItem
            // 
            this.îò÷¸òÇàÊâàğòàëToolStripMenuItem.Name = "îò÷¸òÇàÊâàğòàëToolStripMenuItem";
            this.îò÷¸òÇàÊâàğòàëToolStripMenuItem.Size = new System.Drawing.Size(175, 22);
            this.îò÷¸òÇàÊâàğòàëToolStripMenuItem.Text = "Îò÷¸ò çà êâàğòàë";
            this.îò÷¸òÇàÊâàğòàëToolStripMenuItem.Click += new System.EventHandler(this.îò÷¸òÇàÊâàğòàëToolStripMenuItem_Click);
            // 
            // groupBox1
            // 
            this.groupBox1.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.YearBox);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.SearchButton);
            this.groupBox1.Controls.Add(this.QuarterBox);
            this.groupBox1.Location = new System.Drawing.Point(267, 24);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(729, 48);
            this.groupBox1.TabIndex = 1;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Ôèëüòğ";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(100, 24);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(49, 13);
            this.label1.TabIndex = 2;
            this.label1.Text = "Êâàğòàë";
            // 
            // YearBox
            // 
            this.YearBox.FormattingEnabled = true;
            this.YearBox.Location = new System.Drawing.Point(46, 21);
            this.YearBox.Name = "YearBox";
            this.YearBox.Size = new System.Drawing.Size(48, 21);
            this.YearBox.TabIndex = 1;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(12, 24);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(28, 13);
            this.label2.TabIndex = 0;
            this.label2.Text = "Ãîä:";
            // 
            // SearchButton
            // 
            this.SearchButton.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.SearchButton.Location = new System.Drawing.Point(648, 19);
            this.SearchButton.Name = "SearchButton";
            this.SearchButton.Size = new System.Drawing.Size(75, 23);
            this.SearchButton.TabIndex = 4;
            this.SearchButton.Text = "Ïîèñê";
            this.SearchButton.UseVisualStyleBackColor = true;
            this.SearchButton.Click += new System.EventHandler(this.SearchClick);
            // 
            // QuarterBox
            // 
            this.QuarterBox.FormattingEnabled = true;
            this.QuarterBox.Items.AddRange(new object[] {
            "1 êâàğòàë",
            "2 êâàğòàë",
            "3 êâàğòàë",
            "4 êâàğòàë"});
            this.QuarterBox.Location = new System.Drawing.Point(155, 21);
            this.QuarterBox.MaxDropDownItems = 4;
            this.QuarterBox.Name = "QuarterBox";
            this.QuarterBox.Size = new System.Drawing.Size(72, 21);
            this.QuarterBox.TabIndex = 3;
            // 
            // Grid
            // 
            this.Grid.AllowUserToAddRows = false;
            this.Grid.AllowUserToDeleteRows = false;
            this.Grid.AllowUserToResizeColumns = false;
            this.Grid.AllowUserToResizeRows = false;
            this.Grid.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.Grid.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            this.Grid.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCells;
            this.Grid.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.Grid.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
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
            this.Grid.Location = new System.Drawing.Point(12, 78);
            this.Grid.MultiSelect = false;
            this.Grid.Name = "Grid";
            this.Grid.ReadOnly = true;
            this.Grid.RowHeadersVisible = false;
            this.Grid.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.Grid.Size = new System.Drawing.Size(984, 618);
            this.Grid.TabIndex = 0;
            this.Grid.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.CellClick);
            // 
            // ColumnRegion
            // 
            this.ColumnRegion.HeaderText = "Ğàéîí";
            this.ColumnRegion.Name = "ColumnRegion";
            this.ColumnRegion.ReadOnly = true;
            this.ColumnRegion.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            this.ColumnRegion.Width = 44;
            // 
            // ColumnId
            // 
            this.ColumnId.HeaderText = "Âíóòğåííèé íîìåğ";
            this.ColumnId.Name = "ColumnId";
            this.ColumnId.ReadOnly = true;
            this.ColumnId.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            this.ColumnId.Visible = false;
            this.ColumnId.Width = 107;
            // 
            // ColumnRegNum
            // 
            this.ColumnRegNum.HeaderText = "Ğåãèñòğ. íîìåğ";
            this.ColumnRegNum.Name = "ColumnRegNum";
            this.ColumnRegNum.ReadOnly = true;
            this.ColumnRegNum.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            this.ColumnRegNum.Width = 83;
            // 
            // ColumnConNum
            // 
            this.ColumnConNum.HeaderText = "Íîìåğ äîãîâîğà";
            this.ColumnConNum.Name = "ColumnConNum";
            this.ColumnConNum.ReadOnly = true;
            this.ColumnConNum.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            this.ColumnConNum.Width = 87;
            // 
            // ColumnRecDate
            // 
            this.ColumnRecDate.HeaderText = "Äàòà ïîñòóï.";
            this.ColumnRecDate.Name = "ColumnRecDate";
            this.ColumnRecDate.ReadOnly = true;
            this.ColumnRecDate.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            this.ColumnRecDate.Width = 71;
            // 
            // ColumnRegDate
            // 
            this.ColumnRegDate.HeaderText = "Äàòà ğåãèñò.";
            this.ColumnRegDate.Name = "ColumnRegDate";
            this.ColumnRegDate.ReadOnly = true;
            this.ColumnRegDate.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            this.ColumnRegDate.Width = 71;
            // 
            // ColumnConDate
            // 
            this.ColumnConDate.HeaderText = "Äàòà äîãîâîğà";
            this.ColumnConDate.Name = "ColumnConDate";
            this.ColumnConDate.ReadOnly = true;
            this.ColumnConDate.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            this.ColumnConDate.Width = 80;
            // 
            // ColumnExpDate
            // 
            this.ColumnExpDate.HeaderText = "Ñğîê äîãîâîğà";
            this.ColumnExpDate.Name = "ColumnExpDate";
            this.ColumnExpDate.ReadOnly = true;
            this.ColumnExpDate.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            this.ColumnExpDate.Width = 79;
            // 
            // ColumnProvider
            // 
            this.ColumnProvider.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            dataGridViewCellStyle3.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.ColumnProvider.DefaultCellStyle = dataGridViewCellStyle3;
            this.ColumnProvider.HeaderText = "Ïîñòàâùèê";
            this.ColumnProvider.Name = "ColumnProvider";
            this.ColumnProvider.ReadOnly = true;
            this.ColumnProvider.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            // 
            // Column10
            // 
            dataGridViewCellStyle4.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleRight;
            dataGridViewCellStyle4.Format = "C2";
            dataGridViewCellStyle4.NullValue = null;
            this.Column10.DefaultCellStyle = dataGridViewCellStyle4;
            this.Column10.HeaderText = "Ñóììà";
            this.Column10.Name = "Column10";
            this.Column10.ReadOnly = true;
            this.Column10.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            this.Column10.Width = 47;
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
            this.MainStatus.Location = new System.Drawing.Point(0, 708);
            this.MainStatus.Name = "MainStatus";
            this.MainStatus.Size = new System.Drawing.Size(1008, 22);
            this.MainStatus.TabIndex = 10;
            // 
            // StatusTotalCountStatic
            // 
            this.StatusTotalCountStatic.Name = "StatusTotalCountStatic";
            this.StatusTotalCountStatic.Size = new System.Drawing.Size(102, 17);
            this.StatusTotalCountStatic.Text = "Âñåãî äîãîâîğîâ:";
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
            this.StatusFilterCountStatic.Size = new System.Drawing.Size(67, 17);
            this.StatusFilterCountStatic.Text = "Â ôèëüòğå:";
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
            this.StatusTotalSumStatic.Size = new System.Drawing.Size(88, 17);
            this.StatusTotalSumStatic.Text = "Îáùàÿ ñóììà:";
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
            this.StatusFilterSumStatic.Size = new System.Drawing.Size(67, 17);
            this.StatusFilterSumStatic.Text = "Â ôèëüòğå:";
            // 
            // StatusFilterSum
            // 
            this.StatusFilterSum.Name = "StatusFilterSum";
            this.StatusFilterSum.Size = new System.Drawing.Size(13, 17);
            this.StatusFilterSum.Text = "0";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.button3);
            this.groupBox2.Controls.Add(this.button2);
            this.groupBox2.Controls.Add(this.button1);
            this.groupBox2.Location = new System.Drawing.Point(12, 24);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(249, 48);
            this.groupBox2.TabIndex = 11;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Äîãîâîğ";
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(6, 19);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 0;
            this.button1.Text = "Äîáàâèòü";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.InsertContractClick);
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(87, 19);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(75, 23);
            this.button2.TabIndex = 1;
            this.button2.Text = "Èçìåíèòü";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.EditContractClick);
            // 
            // button3
            // 
            this.button3.Location = new System.Drawing.Point(168, 19);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(75, 23);
            this.button3.TabIndex = 2;
            this.button3.Text = "Óäàëèòü";
            this.button3.UseVisualStyleBackColor = true;
            this.button3.Click += new System.EventHandler(this.DeleteContractClick);
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1008, 730);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.MainStatus);
            this.Controls.Add(this.Grid);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.MainMenu);
            this.MainMenuStrip = this.MainMenu;
            this.Name = "MainForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Contracts.NET";
            this.MainMenu.ResumeLayout(false);
            this.MainMenu.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.Grid)).EndInit();
            this.MainStatus.ResumeLayout(false);
            this.MainStatus.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip MainMenu;
        private System.Windows.Forms.ToolStripMenuItem FileMenu;
        private System.Windows.Forms.ToolStripMenuItem ExitMenuItem;
        private System.Windows.Forms.ToolStripMenuItem EditMenu;
        private System.Windows.Forms.ToolStripMenuItem InsertMenuItem;
        private System.Windows.Forms.ToolStripMenuItem EditMenuItem;
        private System.Windows.Forms.ToolStripMenuItem DeleteMenuItem;
        private System.Windows.Forms.ToolStripMenuItem EditorsMenu;
        private System.Windows.Forms.ToolStripMenuItem ñïğàâî÷íèêĞàéîíîâToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem SupplierMenuItem;
        private System.Windows.Forms.ToolStripMenuItem ClassifierMenuItem;
        private System.Windows.Forms.ToolStripMenuItem OpcodeMenuItem;
        private System.Windows.Forms.ToolStripMenuItem îò÷¸òûToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem ñóììàğíûéToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem îò÷ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem îò÷¸òÏîÊÎÑÃÓToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem îò÷¸òÇàÊâàğòàëToolStripMenuItem;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button SearchButton;
        private System.Windows.Forms.ComboBox QuarterBox;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox YearBox;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.DataGridView Grid;
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
        private System.Windows.Forms.StatusStrip MainStatus;
        private System.Windows.Forms.ToolStripStatusLabel StatusTotalCountStatic;
        private System.Windows.Forms.ToolStripStatusLabel StatusTotalCount;
        private System.Windows.Forms.ToolStripStatusLabel StatusFilterCountStatic;
        private System.Windows.Forms.ToolStripStatusLabel StatusFilterCount;
        private System.Windows.Forms.ToolStripStatusLabel StatusTotalSumStatic;
        private System.Windows.Forms.ToolStripStatusLabel StatusTotalSum;
        private System.Windows.Forms.ToolStripStatusLabel StatusFilterSumStatic;
        private System.Windows.Forms.ToolStripStatusLabel StatusFilterSum;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button button1;
    }
}

