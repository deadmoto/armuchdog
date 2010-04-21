using System;
using System.Windows.Forms;

namespace Contracts.NET
{
    public partial class ContractForm : Form
    {
        ContractData DefaultContract;

        public ContractForm(ContractData DefaultContract = new ContractData())
        {
            InitializeComponent();
            this.DefaultContract = DefaultContract;
        }

        private void ContractFormLoad(object sender, EventArgs e)
        {
            UpdateContractForm();
            UpdateDetailGrid();
        }

        private void UpdateContractForm()
        {
            if (DefaultContract.ContractNumber != string.Empty) { Text += " №" + DefaultContract.ContractNumber; }
            if (DefaultContract.RegistrationNumber != string.Empty) { Text += " (" + DefaultContract.RegistrationNumber + ')'; }
            if (DefaultContract.ValidFrom != DateTime.MinValue) { Text += " от " + DefaultContract.ValidFrom.ToShortDateString(); }
            Department.Text = DefaultContract.Department.Name;
            Supplier.Text = DefaultContract.Supplier.Name;
            RegistrationNumber.Text = DefaultContract.RegistrationNumber;
            ContractNumber.Text = DefaultContract.ContractNumber;
            if (DefaultContract.Recieved != DateTime.MinValue) { Recieved.Text = DefaultContract.Recieved.ToShortDateString(); }
            if (DefaultContract.Registered != DateTime.MinValue) { Registered.Text = DefaultContract.Registered.ToShortDateString(); }
            if (DefaultContract.ValidFrom != DateTime.MinValue) { ValidFrom.Text = DefaultContract.ValidFrom.ToShortDateString(); }
            if (DefaultContract.ValidTo != DateTime.MinValue) { ValidTo.Text = DefaultContract.ValidTo.ToShortDateString(); }
        }

        private void UpdateDetailGrid()
        {
            DetailGrid.Rows.Clear();
            foreach (DetailData Detail in DefaultContract.DetailList)
            {
                DetailGrid.Rows.Add(Detail.ToArray());
            }
        }

        private void DepartmentSelectClick(object sender, EventArgs e)
        {
            DefaultContract.Department = new DepartmentForm(DefaultContract.Department).SelectDepartment();
            Department.Text = DefaultContract.Department.Name;
        }

        private void SupplierSelectClick(object sender, EventArgs e)
        {
            DefaultContract.Supplier = new SupplierForm(DefaultContract.Supplier).SelectSupplier();
            Supplier.Text = DefaultContract.Supplier.Name;
        }

        private void UpdateMenuItemClick(object sender, EventArgs e)
        {
            DefaultContract.DetailList[DetailGrid.SelectedRows[0].Index] = new DetailForm(DefaultContract.DetailList[DetailGrid.SelectedRows[0].Index]).UpdateDetail();
            UpdateDetailGrid();
        }

        private void CloseMenuItemClick(object sender, EventArgs e)
        {
            Close();
        }
    }
}
