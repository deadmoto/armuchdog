using System.Drawing;
using System.Windows.Forms;

namespace System
{
    namespace Windows
    {
        namespace Forms
        {
            public static class InputBox
            {
                public static string Show(string Caption, string Promt, string DefaultText)
                {
                    //Creating objects
                    Form InputBoxForm = new Form();
                    GroupBox InputBoxGroupBox = new GroupBox();
                    TextBox InputBoxTextBox = new TextBox();
                    Button InputBoxOk = new Button();
                    Button InputBoxCancel = new Button();
                    //InputBoxOk
                    InputBoxOk.DialogResult = DialogResult.OK;
                    InputBoxOk.Text = "Ok";
                    InputBoxOk.Location = new Point(9, 48);
                    //InputBoxCancel
                    InputBoxCancel.DialogResult = DialogResult.Cancel;
                    InputBoxCancel.Text = "Cancel";
                    InputBoxCancel.Location = new Point(236, 48);
                    //InputBoxTextBox
                    InputBoxTextBox.Text = DefaultText;
                    InputBoxTextBox.Dock = DockStyle.Fill;
                    //InputBoxGroupBox
                    InputBoxGroupBox.Controls.Add(InputBoxTextBox);
                    InputBoxGroupBox.Controls.Add(InputBoxOk);
                    InputBoxGroupBox.Controls.Add(InputBoxCancel);
                    InputBoxGroupBox.Dock = DockStyle.Fill;
                    InputBoxGroupBox.Padding = new Padding(9);
                    InputBoxGroupBox.Text = Promt;
                    //InputBoxForm
                    InputBoxForm.ClientSize = new Size(320, 80);
                    InputBoxForm.Controls.Add(InputBoxGroupBox);
                    InputBoxForm.FormBorderStyle = FormBorderStyle.FixedDialog;
                    InputBoxForm.MaximizeBox = false;
                    InputBoxForm.MinimizeBox = false;
                    InputBoxForm.StartPosition = FormStartPosition.CenterScreen;
                    InputBoxForm.Text = Caption;
                    //Showing InputBoxForm
                    if (InputBoxForm.ShowDialog() == DialogResult.OK)
                    {
                        return InputBoxTextBox.Text;
                    }
                    else
                    {
                        return string.Empty;
                    }
                }
            }
        }
    }
}