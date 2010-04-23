using System;
using System.Windows.Forms;

namespace Contracts.NET
{
    public partial class ClassifierForm : Form
    {
        private ClassifierData DefaultClassifier;

        public ClassifierForm(ClassifierData DefaultClassifier = new ClassifierData())
        {
            InitializeComponent();
            this.DefaultClassifier = DefaultClassifier;
        }

        public ClassifierData SelectClassifier()
        {
            SelectMenuItem.Visible = true;
            ClassifierGrid.DoubleClick += new EventHandler(SelectMenuItemClick);
            if (ShowDialog() == DialogResult.OK) { return Classifier.ClassifierList[ClassifierGrid.SelectedRows[0].Index]; } else { return DefaultClassifier; }
        }

        private void ClassifierFormLoad(object sender, EventArgs e)
        {
            foreach (ClassifierData Item in Classifier.ClassifierList)
            {
                int Index = ClassifierGrid.Rows.Add(Item.ToArray());
                if (DefaultClassifier.Id == Item.Id) { ClassifierGrid.Rows[Index].Selected = true; }
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
