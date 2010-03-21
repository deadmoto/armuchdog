using System;
using System.Windows.Forms;
using System.Threading;

namespace Contracts.NET
{
    static class Program
    {
        [STAThread]
        static void Main()
        {
            Branch.Retrieve();
            Supplier.Retrieve();
            Contract.Retrieve();
            Detail.Retrieve();
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new MainForm());
        }
    }
}