using System.Windows.Forms;

namespace Contracts.NET
{
    public partial class DepartmentForm : Form
    {
        public DepartmentForm()
        {
            InitializeComponent();
        }

        public DepartmentData SelectDepartment()
        {
            if (ShowDialog() == DialogResult.OK) { return Department.DepartmentList[Grid.SelectedRows[0].Index]; }
            else { return new DepartmentData(); }
        }

        private void DepartmentFormLoad(object sender, System.EventArgs e)
        {
            foreach (DepartmentData Item in Department.DepartmentList) { Grid.Rows.Add(Item.ToArray()); }
        }

        private void SelectMenuItemClick(object sender, System.EventArgs e)
        {
            DialogResult = DialogResult.OK;
            Close();
        }

        private void CloseMenuItemClick(object sender, System.EventArgs e)
        {
            Close();
        }
    }
}
