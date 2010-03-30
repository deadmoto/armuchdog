using System;
using System.Windows.Forms;
using System.Threading;

namespace Contracts.NET
{
    public partial class SupplierForm : Form
    {
        public SupplierForm()
        {
            InitializeComponent();
            Load += new EventHandler(delegate { SupplierFromFill(); });
        }

        private void SupplierFromFill()
        {
            SupplierGrid.Rows.Clear();
            foreach (SupplierData supplier in Supplier.SupplierList)
            {
                object[] Row = new object[2];
                Row[0] = supplier.Id.ToString();
                Row[1] = supplier.Name.ToString();
                SupplierGrid.Rows.Add(Row);
            }
        }

        private void InsertMenuItem_Click(object sender, EventArgs e)
        {
            string Name = InputBox.Show(Text, "Введите наименование", string.Empty);
            if (!(Name == string.Empty))
            {
                SupplierFromFill();
            }
        }

        private void CloseMenuItemClick(object sender, EventArgs e)
        {
            Close();
        }
    }
}