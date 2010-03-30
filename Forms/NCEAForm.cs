using System;
using System.Windows.Forms;

namespace Contracts.NET
{
    public partial class NCEAForm : Form
    {
        public NCEAForm()
        {
            InitializeComponent();
            Load += new EventHandler(delegate { NCEAFormFill(); });
            CloseMenuItem.Click += new EventHandler(delegate { Close(); });
        }

        private void NCEAFormFill()
        {
            NCEAGrid.Rows.Clear();
            foreach (NCEAData ncea in NCEA.NCEAList)
            {
                object[] Row = new object[2];
                Row[0] = ncea.Id.ToString();
                Row[1] = ncea.Name.ToString();
                NCEAGrid.Rows.Add(Row);
            }
        }
    }
}
