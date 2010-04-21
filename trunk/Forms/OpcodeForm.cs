using System;
using System.Windows.Forms;

namespace Contracts.NET
{
    public partial class OpcodeForm : Form
    {
        private OpcodeData DefaultOpcode;

        public OpcodeForm(OpcodeData DefaultOpcode = new OpcodeData())
        {
            InitializeComponent();
            this.DefaultOpcode = DefaultOpcode;
        }

        public OpcodeData SelectOpcode()
        {
            SelectMenuItem.Visible = true;
            OpcodeGrid.DoubleClick += new EventHandler(SelectMenuItemClick);
            if (ShowDialog() == DialogResult.OK)
            {
                return Opcode.OpcodeList[OpcodeGrid.SelectedRows[0].Index];
            }
            else
            {
                return DefaultOpcode;
            }
        }

        private void OpcodeFormLoad(object sender, EventArgs e)
        {
            foreach (OpcodeData Item in Opcode.OpcodeList)
            {
                int Index = OpcodeGrid.Rows.Add(Item.ToArray());
                if (DefaultOpcode.Id == Item.Id) { OpcodeGrid.Rows[Index].Selected = true; }
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
