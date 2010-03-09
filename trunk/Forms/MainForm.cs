using System;
using System.Windows.Forms;

namespace Contracts.NET
{
    public partial class MainForm : Form
    {
        private void FillMainGrid()
        {
            foreach (SQLContract Contract in Core.Tables.Contracts)
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
                Row[MainGrid.Columns["ColumnRegion"].DisplayIndex] = Contract.Region.Name;
                Row[MainGrid.Columns["ColumnProvider"].DisplayIndex] = Contract.Provider.Name;
                MainGrid.Rows.Add(Row);
            }
            Core.Tables.GetStatistics();
            StatusTotalCount.Text = Core.Tables.ContractsTotalCount.ToString();
            StatusTotalSum.Text = Core.Tables.ContractsTotalSum.ToString();
            StatusFilterCount.Text = Core.Tables.ContractsFilterCount.ToString();
            StatusFilterSum.Text = Core.Tables.ContractsFilterSum.ToString();
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
            ProvidersForm Form = new ProvidersForm();
            Form.ShowDialog();
        }

        private void MainGrid_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}