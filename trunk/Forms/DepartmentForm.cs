using System;
using System.Windows.Forms;

namespace Contracts.NET
{
    public partial class DepartmentForm : Form
    {
        private DepartmentData DefaultDepartment;

        public DepartmentForm(DepartmentData DefaultDepartment = new DepartmentData())
        {
            InitializeComponent();
            this.DefaultDepartment = DefaultDepartment;
        }

        public DepartmentData SelectDepartment()
        {
            SelectMenuItem.Visible = true;
            DepartmentGrid.DoubleClick += new EventHandler(SelectMenuItemClick);
            if (ShowDialog() == DialogResult.OK) { return Department.DepartmentList[DepartmentGrid.SelectedRows[0].Index]; } else { return DefaultDepartment; }
        }

        private void DepartmentFormLoad(object sender, EventArgs e)
        {
            foreach (DepartmentData Item in Department.DepartmentList)
            {
                int Index = DepartmentGrid.Rows.Add(Item.ToArray());
                if (DefaultDepartment.Id == Item.Id) { DepartmentGrid.Rows[Index].Selected = true; }
            }
        }

        private void SelectMenuItemClick(object sender, EventArgs e)
        {
            DialogResult = DialogResult.OK;
            Close();
        }

        private void CloseMenuItemClick(object sender, EventArgs e)
        {
            Close();
        }
    }
}
