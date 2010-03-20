using System;
using System.Windows.Forms;

namespace Contracts.NET
{
    public partial class SupplierForm : Form
    {
        private void FillProvidersForm()
        {
            SupplierGrid.Rows.Clear();
            foreach (Provider Provider in Program.Tables.Providers)
            {
                object[] Row = new object[2];
                Row[0] = Provider.Id.ToString();
                Row[1] = Provider.Name.ToString();
                SupplierGrid.Rows.Add(Row);
            }
        }

        public SupplierForm()
        {
            InitializeComponent();
        }

        private void ProvidersFormLoad(object sender, EventArgs e)
        {
            FillProvidersForm();
        }

        private void InsertMenuItem_Click(object sender, EventArgs e)
        {
            string Name = InputBox.Show(Text, "Введите наименование", string.Empty);
            if (!(Name == string.Empty))
            {
                Program.Tables.AddProvider(Name);
                FillProvidersForm();
            }
        }

        private void CloseMenuItemClick(object sender, EventArgs e)
        {
            Close();
        }
    }
}