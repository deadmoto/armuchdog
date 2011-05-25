using System;
using System.Windows.Forms;
using Contracts.NET.Data;

namespace Contracts.NET
{
    public partial class ContractForm : Form
    {
        ContractData Data = new ContractData();

        public ContractForm(ContractData Data = null)
        {
            InitializeComponent();

            if (Data != null)
            {
                this.Data = Data;
            }

            UpdateForm();
            UpdateGrid();
        }

        private void UpdateForm()
        {
            if (Data.ContractNumber != string.Empty) { Text += " №" + Data.ContractNumber; }
            if (Data.RegistrationNumber != string.Empty) { Text += " (" + Data.RegistrationNumber + ')'; }
            if (Data.ValidFrom != DateTime.MinValue) { Text += " от " + Data.ValidFrom.ToShortDateString(); }
            Department.Text = Data.Department.Name;
            Supplier.Text = Data.Supplier.Name;
            RegistrationNumber.Text = Data.RegistrationNumber;
            ContractNumber.Text = Data.ContractNumber;
            if (Data.Recieved != DateTime.MinValue) { Recieved.Value = Data.Recieved; } else { Recieved.Checked = false; }
            if (Data.Registered != DateTime.MinValue) { Registered.Value = Data.Registered; } else { Registered.Checked = false; }
            if (Data.ValidFrom != DateTime.MinValue) { ValidFrom.Value = Data.ValidFrom; } else { ValidFrom.Checked = false; }
            if (Data.ValidTo != DateTime.MinValue) { ValidTo.Value = Data.ValidTo; } else { ValidTo.Checked = false; }
        }

        private void UpdateGrid()
        {
            Grid.Rows.Clear();

            foreach (DetailData Detail in Data.Items)
            {
                Grid.Rows.Add(Detail.ToArray());
            }
        }

        private void DepartmentSelectClick(object sender, EventArgs e)
        {
            Data.Department = new DepartmentForm(Data.Department).SelectDepartment();
            Department.Text = Data.Department.Name;
        }

        private void SupplierSelectClick(object sender, EventArgs e)
        {
            SupplierData Data = new SupplierForm().SelectSupplier();

            if (Data != null)
            {
                this.Data.Supplier = Data;
                Supplier.Text = Data.Name;
            }
        }

        private void InsertDetailClick(object sender, EventArgs e)
        {
            DetailData Detail = new DetailForm().GetDetail();
            if (Detail != null)
            {
                Data.Items.Add(Detail);
                UpdateGrid();
            }
        }

        private void UpdateDetailClick(object sender, EventArgs e)
        {
            DetailData Detail = new DetailForm(Data.Items[Grid.SelectedRows[0].Index]).GetDetail();
            if (Detail != null)
            {
                Data.Items[Grid.SelectedRows[0].Index] = Detail;
                UpdateGrid();
            }
        }

        private void DeleteDetailClick(object sender, EventArgs e)
        {
            if (MessageBox.Show("Удалить позицию договора?", Text, MessageBoxButtons.YesNo) == DialogResult.Yes)
            {
                Data.Items.RemoveAt(Grid.SelectedRows[0].Index);
                UpdateGrid();
            }
        }

        private void SaveContractClick(object sender, EventArgs e)
        {
            Data.RegistrationNumber = RegistrationNumber.Text;
            Data.ContractNumber = ContractNumber.Text;
            if (Recieved.Checked) { Data.Recieved = Recieved.Value; } else { Data.Recieved = DateTime.MinValue; }
            if (Registered.Checked) { Data.Registered = Registered.Value; } else { Data.Registered = DateTime.MinValue; }
            if (ValidFrom.Checked) { Data.ValidFrom = ValidFrom.Value; } else { Data.ValidFrom = DateTime.MinValue; }
            if (ValidTo.Checked) { Data.ValidTo = ValidTo.Value; } else { Data.ValidTo = DateTime.MinValue; }

            if (Data.Id == 0)
            {
                Contract.Insert(Data);
            }
            else
            {
                Contract.Update(Data);
            }

            Close();
        }

        private void CloseContractClick(object sender, EventArgs e)
        {
            Close();
        }
    }
}
