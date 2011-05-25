namespace Contracts.NET.Data
{
    public struct DepartmentData
    {
        public int Id;
        public string Name;

        public object[] ToArray()
        {
            object[] Result = new object[2];
            Result[0] = Id;
            Result[1] = Name;
            return Result;
        }
    }
}
