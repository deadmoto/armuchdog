using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace Contracts.NET
{
    public partial class ContractForm : Form
    {
        public ContractForm()
        {
            InitializeComponent();
            CloseMenuItem.Click += new EventHandler(delegate { Close(); });
        }

        public void ShowDialog(ContractData Contract)
        {
            // Setting form text
            if (Contract.ContractNumber != string.Empty) { Text += " №" + Contract.ContractNumber; }
            if (Contract.RegistrationNumber != string.Empty) { Text += " (" + Contract.RegistrationNumber + ')'; }
            if (Contract.ValidFrom != DateTime.MinValue) { Text += " от " + Contract.ValidFrom.ToShortDateString(); }
            //

            Department.Text = Contract.Department.Name;
            textBox3.Text = Contract.Supplier.Name;
            textBox1.Text = Contract.RegistrationNumber;
            textBox2.Text = Contract.ContractNumber;
            if (Contract.Recieved != DateTime.MinValue) { Recieved.Text = Contract.Recieved.ToShortDateString(); }
            if (Contract.Registered != DateTime.MinValue) { Registered.Text = Contract.Registered.ToShortDateString(); }
            if (Contract.ValidFrom != DateTime.MinValue) { ValidFrom.Text = Contract.ValidFrom.ToShortDateString(); }
            if (Contract.ValidTo != DateTime.MinValue) { ValidTo.Text = Contract.ValidTo.ToShortDateString(); }

            foreach (DetailData Detail in Contract.DetailList) { ContractDetailGridView.Rows.Add(Detail.ToArray()); }

            ShowDialog();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            DepartmentData Test = new DepartmentForm().SelectDepartment();
            Department.Text = Test.Name;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            new SupplierForm().ShowDialog();
        }
    }
}
