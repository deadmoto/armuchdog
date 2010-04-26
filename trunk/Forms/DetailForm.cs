using System;
using System.Windows.Forms;

namespace Contracts.NET
{
    public partial class DetailForm : Form
    {
        public DetailForm(DetailData? Detail = null)
        {
            InitializeComponent();
            if (Detail.HasValue)
            {
                LoadDetail(Detail.Value);
            }
        }

        public DetailData? GetDetail()
        {
            if (ShowDialog() == DialogResult.OK)
            {
                DetailData Detail = new DetailData();
                Detail.Classifier = Classifier.Find(ClassifierId.Text);
                Detail.Opcode = Opcode.Find(OpcodeId.Text);
                Detail.DetailDate = DateTime.Parse(DetailDate.Text);
                Detail.Price = double.Parse(Price.Text);
                Detail.Report = Report.Checked;
                Detail.Comment = Comment.Text;
                return Detail;
            }
            else
            {
                return null;
            }
        }

        private void LoadDetail(DetailData Detail)
        {
            ClassifierId.Text = Detail.Classifier.Id;
            ClassifierName.Text = Detail.Classifier.Name;
            OpcodeId.Text = Detail.Opcode.Id;
            OpcodeName.Text = Detail.Opcode.Name;
            if (Detail.DetailDate != DateTime.MinValue) { DetailDate.Text = Detail.DetailDate.ToShortDateString(); }
            Price.Text = Detail.Price.ToString();
            Report.Checked = Detail.Report;
            Comment.Text = Detail.Comment;
        }

        private void ClassifierSelectClick(object sender, EventArgs e)
        {
            ClassifierData NewClassifier = new ClassifierForm(Classifier.Find(ClassifierId.Text)).SelectClassifier();
            ClassifierId.Text = NewClassifier.Id;
            ClassifierName.Text = NewClassifier.Name;
        }

        private void OpcodeSelectClick(object sender, EventArgs e)
        {
            OpcodeData NewOpcode = new OpcodeForm(Opcode.Find(OpcodeId.Text)).SelectOpcode();
            OpcodeId.Text = NewOpcode.Id;
            OpcodeName.Text = NewOpcode.Name;
        }

        private void SaveMenuItemClick(object sender, EventArgs e)
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
