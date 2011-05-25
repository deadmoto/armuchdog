using System;
using System.Windows.Forms;
using Contracts.NET.Data;

namespace Contracts.NET
{
    public partial class SupplierForm : Form
    {
        public SupplierForm()
        {
            InitializeComponent();
            Grid.CellDoubleClick += SelectMenuItemClick;
        }

        public SupplierData SelectSupplier()
        {
            SelectMenuItem.Visible = true;

            if (ShowDialog() == DialogResult.OK)
            {
                return Supplier.Items[Grid.SelectedRows[0].Index];
            }
            else
            {
                return null;
            }
        }

        private void SupplierFormLoad(object sender, EventArgs e)
        {
            foreach (SupplierData Item in Supplier.Items)
            {
                Grid.Rows.Add(Item.ToArray());
            }
        }

        private void SelectMenuItemClick(object sender, EventArgs e)
        {
            DialogResult = DialogResult.OK;
            Close();
        }

        private void CloseMenuItemClick(object sender, EventArgs e)
        {
            Close();
        }
    }
}