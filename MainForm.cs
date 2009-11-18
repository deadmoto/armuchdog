using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Data.OleDb;
using System.Windows.Forms;

namespace Contracts.NET
{
    public partial class MainForm : Form
    {
        private SQLTables Tables;

        private void FillMainGrid()
        {
            foreach (SQLContract Contract in Tables.Contracts)
            {
                object[] Row = new object[8];
                Row[0] = Contract.REGN;
                Row[1] = Contract.registration;
                Row[2] = Contract.N_DOG;
                Row[3] = Contract.DATA_REG.ToShortDateString();
                Row[4] = Contract.DATA_DOG.ToShortDateString();
                Row[7] = Contract.Region.Name;
                MainGrid.Rows.Add(Row);
            }
        }


        public MainForm()
        {
            InitializeComponent();
            Tables = new SQLTables();
        }

        private void ExitMenuItemClick(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void MainFormLoad(object sender, EventArgs e)
        {
            FillMainGrid();
        }
    }
}