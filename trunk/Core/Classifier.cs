using System.Collections.Generic;
using System.Data.SqlClient;
using Contracts.NET.Core;

namespace Contracts.NET
{
    /// <summary>
    /// Represents classifier data
    /// </summary>
    public struct ClassifierData
    {
        public string Id;
        public string Name;

        /// <summary>
        /// Returns array of fields
        /// </summary>
        public object[] ToArray()
        {
            object[] Result = new object[2];
            Result[0] = Id;
            Result[1] = Name;
            return Result;
        }
    }

    /// <summary>
    /// Provides classifier list
    /// </summary>
    static class Classifier
    {
        public static List<ClassifierData> ClassifierList = new List<ClassifierData>();

        /// <summary>
        /// Returns classifier by Id
        /// </summary>
        public static ClassifierData Find(string Id)
        {
            return ClassifierList.Find(delegate(ClassifierData Item) { return Item.Id == Id; });
        }

        /// <summary>
        /// Retrieves classifier list from database
        /// </summary>
        public static void Fetch()
        {
            ClassifierList.Clear();
            SqlCommand Command = Client.GetCommand("SELECT * FROM NomenclDog");
            SqlDataReader Reader = Command.ExecuteReader();
            while (Reader.Read())
            {
                ClassifierData Item = new ClassifierData();
                Item.Id = Reader.GetString(Reader.GetOrdinal("id_nomencl")).Trim();
                Item.Name = Reader.GetString(Reader.GetOrdinal("NAME")).Trim();
                ClassifierList.Add(Item);
            }
        }
    }
}
