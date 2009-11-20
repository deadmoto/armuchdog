using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace Contracts.NET
{
    public partial class ProvidersForm : Form
    {
        private void FillProvidersForm()
        {
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

        private void CloseMenuItemClick(object sender, EventArgs e)
        {
            Close();
        }

        private void ProvidersFormLoad(object sender, EventArgs e)
        {
            FillProvidersForm();
        }
    }
}