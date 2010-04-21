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
            ñïğàâî÷íèêÎÊÂİÄToolStripMenuItem.Click += new EventHandler(delegate { new ClassifierForm().ShowDialog(); });
            ñïğàâî÷íèêÊÎÑÃÓToolStripMenuItem.Click += new EventHandler(delegate { new OpcodeForm().ShowDialog(); });
            èçìåíèòüToolStripMenuItem.Click += new EventHandler(delegate { new ContractForm(Contract.ContractList[MainGrid.SelectedRows[0].Index]).ShowDialog(); });
            ExitMenuItem.Click += new EventHandler(delegate { Application.Exit(); });
        }

        private void FillMainGrid()
        {
            Refresh();
            foreach (ContractData Item in Contract.ContractList) { MainGrid.Rows.Add(Item.ToArray()); }
            StatusTotalCount.Text = Contract.ContractList.Count.ToString();
        }

        private void èçìåíèòüToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void ñïğàâî÷íèêĞàéîíîâToolStripMenuItem_Click(object sender, EventArgs e)
        {
            new DepartmentForm().ShowDialog();
        }
    }
}