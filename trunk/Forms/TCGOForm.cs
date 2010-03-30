using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace Contracts.NET
{
    public partial class TCGOForm : Form
    {
        public TCGOForm()
        {
            InitializeComponent();
            Load += new EventHandler(delegate { TCGOFormFill(); });
            CloseMenuItem.Click += new EventHandler(delegate { Close(); });
        }

        private void TCGOFormFill()
        {
            TCGOGrid.Rows.Clear();
            foreach (TCGOData Item in TCGO.TCGOList)
            {
                object[] Row = new object[2];
                Row[0] = Item.Id.ToString();
                Row[1] = Item.Name.ToString();
                TCGOGrid.Rows.Add(Row);
            }
        }
    }
}
