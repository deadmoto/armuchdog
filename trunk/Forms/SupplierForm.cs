using System;
using System.Windows.Forms;

namespace Contracts.NET
{
    public partial class SupplierForm : Form
    {
        private SupplierData DefaultSupplier;

        public SupplierForm(SupplierData DefaultSupplier = new SupplierData())
        {
            InitializeComponent();
            this.DefaultSupplier = DefaultSupplier;
        }

        public SupplierData SelectSupplier()
        {
            SelectMenuItem.Visible = true;
            SupplierGrid.DoubleClick += new EventHandler(SelectMenuItemClick);
            if (ShowDialog() == DialogResult.OK) { return Supplier.SupplierList[SupplierGrid.SelectedRows[0].Index]; } else { return DefaultSupplier; }
        }

        private void SupplierFormLoad(object sender, EventArgs e)
        {
            foreach (SupplierData Item in Supplier.SupplierList)
            {
                int Index = SupplierGrid.Rows.Add(Item.ToArray());
                if (DefaultSupplier.Id == Item.Id) { SupplierGrid.Rows[Index].Selected = true; }
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