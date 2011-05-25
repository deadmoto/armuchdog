using System;
using System.Windows.Forms;
using Contracts.NET.Data;

namespace Contracts.NET
{
    public partial class MainForm : Form
    {
        int Index = 0;

        public MainForm()
        {
            InitializeComponent();
            InitializeFilter();
            UpdateGrid();
        }

        private void InitializeFilter()
        {
            for (int i = 2008; i <= DateTime.Now.Year; i++)
            {
                YearBox.Items.Add(i);
            }

            YearBox.SelectedIndex = YearBox.Items.Count - 1;
            QuarterBox.SelectedIndex = DateTime.Today.Month / 4;
        }

        private void UpdateGrid()
        {
            Grid.Rows.Clear();

            foreach (ContractData Item in Contract.Items)
            {
                Grid.Rows.Add(Item.ToArray());
            }

            if (Grid.Rows.Count > Index)
            {
                Grid.Rows[Index].Selected = true;
            }

            StatusTotalCount.Text = Contract.Items.Count.ToString();
        }

        private void SearchClick(object sender, EventArgs e)
        {
            Contract.Year = int.Parse(YearBox.Text);
            Contract.Quarter = QuarterBox.SelectedIndex + 1;
            Contract.Fetch();

            UpdateGrid();
        }

        private void CellClick(object sender, DataGridViewCellEventArgs e)
        {
            Index = Grid.SelectedRows[0].Index;
        }

        private void InsertContractClick(object sender, EventArgs e)
        {
            new ContractForm().ShowDialog();
            UpdateGrid();
        }

        private void EditContractClick(object sender, EventArgs e)
        {
            new ContractForm(Contract.Items[Index]).ShowDialog();
            UpdateGrid();
        }

        private void DeleteContractClick(object sender, EventArgs e)
        {
            UpdateGrid();
        }

        private void DepartmentMenuItemClick(object sender, EventArgs e)
        {
            new DepartmentForm().ShowDialog();
        }

        private void SupplierMenuItemClick(object sender, EventArgs e)
        {
            new SupplierForm().ShowDialog();
        }

        private void ClassifierMenuItemClick(object sender, EventArgs e)
        {
            new ClassifierForm().ShowDialog();
        }

        private void OpcodeMenuItemClick(object sender, EventArgs e)
        {
            new OpcodeForm().ShowDialog();
        }

        private void ÒÛÏÏ‡Ì˚ÈToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void ÓÚ˜ToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void ÓÚ˜∏ÚœÓ Œ—√”ToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void ÓÚ˜∏Ú«‡ ‚‡Ú‡ÎToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void ExitClick(object sender, EventArgs e)
        {
            Close();
        }
    }
}