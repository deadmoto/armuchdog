using System;
using System.Windows.Forms;

namespace Contracts.NET
{
    public partial class MainForm : Form
    {
        private void FillMainGrid()
        {
            foreach (ContractData contract in Contract.ContractList)
            {
                object[] Row = new object[10];
                Row[0] = contract.Branch.Name;
                Row[1] = contract.Id;
                Row[2] = contract.RegistrationNumber;
                Row[3] = contract.ContractNumber;
                if (!(contract.RecDate == DateTime.MinValue)) { Row[4] = contract.RecDate.ToShortDateString(); }
                if (!(contract.RegDate == DateTime.MinValue)) { Row[5] = contract.RegDate.ToShortDateString(); }
                if (!(contract.ConDate == DateTime.MinValue)) { Row[6] = contract.ConDate.ToShortDateString(); }
                if (!(contract.ExpDate == DateTime.MinValue)) { Row[7] = contract.ExpDate.ToShortDateString(); }
                Row[8] = contract.Supplier.Name;
                Row[9] = contract.Sum;
                MainGrid.Rows.Add(Row);
            }
            //Program.Tables.GetStatistics();
            StatusTotalCount.Text = Contract.ContractList.Count.ToString();
            //StatusTotalSum.Text = Program.Tables.ContractsTotalSum.ToString();
            //StatusFilterCount.Text = Program.Tables.ContractsFilterCount.ToString();
            //StatusFilterSum.Text = Program.Tables.ContractsFilterSum.ToString();
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
    }
}