using System;
using System.Windows.Forms;

namespace Contracts.NET
{
    public partial class DetailForm : Form
    {
        private DetailData DefaultDetail;

        public DetailForm(DetailData DefaultDetail = new DetailData())
        {
            InitializeComponent();
            this.DefaultDetail = DefaultDetail;
        }

        public DetailData UpdateDetail()
        {
            if (ShowDialog() == DialogResult.OK)
            {
                DefaultDetail.Classifier = Classifier.Find(ClassifierId.Text);
                DefaultDetail.Opcode = Opcode.Find(OpcodeId.Text);
                DefaultDetail.DetailDate = DateTime.Parse(DetailDate.Text);
                DefaultDetail.Price = double.Parse(Price.Text);
                DefaultDetail.Report = Report.Checked;
                DefaultDetail.Comment = Comment.Text;
                return DefaultDetail;
            }
            else
            {
                return DefaultDetail;
            }
        }

        private void DetailFormLoad(object sender, EventArgs e)
        {
            ClassifierId.Text = DefaultDetail.Classifier.Id;
            ClassifierName.Text = DefaultDetail.Classifier.Name;
            OpcodeId.Text = DefaultDetail.Opcode.Id;
            OpcodeName.Text = DefaultDetail.Opcode.Name;
            if (DefaultDetail.DetailDate != DateTime.MinValue) { DetailDate.Text = DefaultDetail.DetailDate.ToShortDateString(); }
            Price.Text = DefaultDetail.Price.ToString();
            Report.Checked = DefaultDetail.Report;
            Comment.Text = DefaultDetail.Comment;
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
