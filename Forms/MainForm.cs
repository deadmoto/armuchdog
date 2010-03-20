using System;
using System.Windows.Forms;

namespace Contracts.NET
{
    public partial class MainForm : Form
    {
        private void FillMainGrid()
        {
            foreach (Contract Contract in Program.Tables.Contracts)
            {
                object[] Row = new object[9];
                Row[MainGrid.Columns["ColumnId"].DisplayIndex] = Contract.Id;
                Row[MainGrid.Columns["ColumnRegNum"].DisplayIndex] = Contract.RegNum;
                Row[MainGrid.Columns["ColumnConNum"].DisplayIndex] = Contract.ConNum;
                if (!(Contract.RecDate == DateTime.MinValue))
                {
                    Row[MainGrid.Columns["ColumnRecDate"].DisplayIndex] = Contract.RecDate.ToShortDateString();
                }
                if (!(Contract.RegDate == DateTime.MinValue))
                {
                    Row[MainGrid.Columns["ColumnRegDate"].DisplayIndex] = Contract.RegDate.ToShortDateString();
                }
                if (!(Contract.ConDate == DateTime.MinValue))
                {
                    Row[MainGrid.Columns["ColumnConDate"].DisplayIndex] = Contract.ConDate.ToShortDateString();
                }
                if (!(Contract.ExpDate == DateTime.MinValue))
                {
                    Row[MainGrid.Columns["ColumnExpDate"].DisplayIndex] = Contract.ExpDate.ToShortDateString();
                }
                Row[MainGrid.Columns["ColumnConDate"].DisplayIndex] = Contract.ConDate.ToShortDateString();
                Row[MainGrid.Columns["ColumnRegion"].DisplayIndex] = Database.RegionList[Contract.Region].Name;
                Row[MainGrid.Columns["ColumnProvider"].DisplayIndex] = Contract.Provider.Name;
                MainGrid.Rows.Add(Row);
            }
            Program.Tables.GetStatistics();
            StatusTotalCount.Text = Program.Tables.ContractsTotalCount.ToString();
            StatusTotalSum.Text = Program.Tables.ContractsTotalSum.ToString();
            StatusFilterCount.Text = Program.Tables.ContractsFilterCount.ToString();
            StatusFilterSum.Text = Program.Tables.ContractsFilterSum.ToString();
        }

        public MainForm()
        {
            InitializeComponent();
        }

        private void ExitMenuItemClick(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void MainFormLoad(object sender, EventArgs e)
        {
            FillMainGrid();
        }

        private void ProvidersMenuItemClick(object sender, EventArgs e)
        {
            SupplierForm Form = new SupplierForm();
            Form.ShowDialog();
        }

        private void FilterPanel_Paint(object sender, PaintEventArgs e)
        {
            Program.Tables = new SQLTables();
        }
    }
}