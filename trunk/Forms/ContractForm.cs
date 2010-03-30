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
            linkLabel1.Text = Contract.Branch.Name;
            linkLabel2.Text = Contract.Supplier.Name;
            ShowDialog();
        }

        private void linkLabel2_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            new SupplierForm().ShowDialog();
        }
    }
}
