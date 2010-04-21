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
            Department.Retrieve();
            Classifier.Retrieve();
            Opcode.Retrieve();
            Supplier.Retrieve();
            Detail.Retrieve();
            Contract.Retrieve();
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new MainForm());
        }
    }
}