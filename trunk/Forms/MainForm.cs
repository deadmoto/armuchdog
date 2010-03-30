using System;
using System.Data;
using System.Threading;
using System.Windows.Forms;

namespace Contracts.NET
{
    public partial class MainForm : Form
    {
        delegate void AddToGrid();

        public MainForm()
        {
            InitializeComponent();
            Load += new EventHandler(delegate { FillMainGrid(); });
            ProvidersMenuItem.Click += new EventHandler(delegate { new SupplierForm().ShowDialog(); });
            ñïðàâî÷íèêÎÊÂÝÄToolStripMenuItem.Click += new EventHandler(delegate { new NCEAForm().ShowDialog();});
            ExitMenuItem.Click += new EventHandler(delegate { Application.Exit(); });
        }

        private void FillMainGrid()
        {
            Refresh();
            foreach (ContractData Item in Contract.ContractList) { MainGrid.Rows.Add(Item.ToArray()); }
            StatusTotalCount.Text = Contract.ContractList.Count.ToString();
        }
    }
}