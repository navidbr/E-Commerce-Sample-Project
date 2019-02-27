using System;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for SQLConnection_Class
/// </summary>
public class SQLConnection_Class
{
    public static SqlConnection sqlconn=new SqlConnection();

    public static void Connect()
    {
        if (sqlconn.State == ConnectionState.Open)
        {
            //Noting
        }
        else
        {
            try
            {
                sqlconn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["first_project"].ConnectionString.ToString();
                sqlconn.Open();
            }
            catch (Exception e)
            {
                //TODO ERROR
            }
        }
    }
    public static void disconnect()
    {
        sqlconn.Close();
    }
    public SQLConnection_Class()
    {
        //
        // TODO: Add constructor logic here
        //
    }
}
