using System;
using System.Windows.Forms;
using System.Threading;
using Contracts.NET.Data;

namespace Contracts.NET
{
    static class Program
    {
        [STAThread]
        static void Main()
        {
            Department.Fetch();
            Classifier.Fetch();
            Opcode.Fetch();
            Supplier.Fetch();
            Detail.Fetch();
            Contract.Fetch();
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new MainForm());
        }
    }
}