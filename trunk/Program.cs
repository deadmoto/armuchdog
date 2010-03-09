using System;
using System.Windows.Forms;

namespace Contracts.NET
{
    static class Program
    {
        public static SQLTables Tables;

        [STAThread]
        static void Main()
        {
            Tables = new SQLTables();
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new MainForm());
        }
    }
}