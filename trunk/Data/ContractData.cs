using System;
using System.Collections.Generic;

namespace Contracts.NET.Data
{
    public class ContractData
    {
        public long Id;
        public string RegistrationNumber;
        public string ContractNumber;
        public DateTime Registered;
        public DateTime Recieved;
        public DepartmentData Department;
        public DateTime ValidFrom;
        public DateTime ValidTo;
        public SupplierData Supplier = new SupplierData();
        public List<DetailData> Items = new List<DetailData>();

        public double Price()
        {
            double Result = new double();

            foreach (DetailData Detail in Items)
            {
                Result += Detail.Price;
            }

            return Result;
        }

        public object[] ToArray()
        {
            object[] Result = new object[10];
            Result[0] = Department.Name;
            Result[1] = Id;
            Result[2] = RegistrationNumber;
            Result[3] = ContractNumber;
            if (!(Recieved == DateTime.MinValue)) { Result[4] = Recieved.ToShortDateString(); }
            if (!(Registered == DateTime.MinValue)) { Result[5] = Registered.ToShortDateString(); }
            if (!(ValidFrom == DateTime.MinValue)) { Result[6] = ValidFrom.ToShortDateString(); }
            if (!(ValidTo == DateTime.MinValue)) { Result[7] = ValidTo.ToShortDateString(); }
            Result[8] = Supplier.Name;
            Result[9] = Price();
            return Result;
        }
    }
}
