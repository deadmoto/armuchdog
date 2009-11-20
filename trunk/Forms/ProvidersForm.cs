using System;
using System.Windows.Forms;

namespace Contracts.NET
{
    public partial class ProvidersForm : Form
    {
        private void FillProvidersForm()
        {
            ProvidersGrid.Rows.Clear();
            foreach (SQLProvider Provider in Core.Tables.Providers)
            {
                object[] Row = new object[2];
                Row[ProvidersGrid.Columns["ColumnId"].DisplayIndex] = Provider.Id.ToString();
                Row[ProvidersGrid.Columns["ColumnName"].DisplayIndex] = Provider.Name.ToString();
                ProvidersGrid.Rows.Add(Row);
            }
        }

        public ProvidersForm()
        {
            InitializeComponent();
        }

        private void ProvidersFormLoad(object sender, EventArgs e)
        {
            FillProvidersForm();
        }

        private void CloseMenuItemClick(object sender, EventArgs e)
        {
            Close();
        }

        private void InsertMenuItem_Click(object sender, EventArgs e)
        {
            string Name = InputBox.Show(Text, "Введите наименование", string.Empty);
            if (!(Name == string.Empty))
            {
                Core.Tables.AddProvider(Name);
                FillProvidersForm();
            }
        }
    }
}