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
        }

        public void ShowDialog(ContractData Contract)
        {
            Branch.Text = Contract.Branch.Name;
            textBox3.Text = Contract.Supplier.Name;
            textBox1.Text = Contract.RegistrationNumber;
            textBox2.Text = Contract.ContractNumber;
            if (Contract.Recieved != DateTime.MinValue) { Recieved.Text = Contract.Recieved.ToShortDateString(); }
            if (Contract.Registered != DateTime.MinValue) { Registered.Text = Contract.Registered.ToShortDateString(); }
            if (Contract.ValidFrom != DateTime.MinValue) { ValidFrom.Text = Contract.ValidFrom.ToShortDateString(); }
            if (Contract.ValidTo != DateTime.MinValue) { ValidTo.Text = Contract.ValidTo.ToShortDateString(); }
            ShowDialog();
        }

        private void linkLabel2_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            new SupplierForm().ShowDialog();
        }

        private void groupBox8_Enter(object sender, EventArgs e)
        {

        }
    }
}
