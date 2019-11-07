using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Users
/// </summary>
public class Users
{

    public String GetUserData(int UserID)
    {

        DBManager myDBManager = new DBManager();
        
        string myQuery = "spGetSpecificUser";
        SqlParameter[] myParameters = new SqlParameter[1];
        myParameters[0] = new SqlParameter("userID", UserID);


        DataSet myDataSet = myDBManager.createDataSet(myQuery, myParameters);

        string finalResult = "";

        for (int i = 0; i < myDataSet.Tables[0].Rows.Count; i++)
        {


            finalResult += myDataSet.Tables[0].Rows[i]["firstName"] + " " + myDataSet.Tables[0].Rows[i]["lastName"] + "<br>";
        }

        return finalResult;

    }

    public int updateUser(int UserID, string firstName, string lastName)
    {
        DBManager myDBManager = new DBManager();
        string myQuery = "spUpdateUser";
 
        SqlParameter[] myParameters = new SqlParameter[3];
        myParameters[0] = new SqlParameter("firstName", firstName);
        myParameters[1] = new SqlParameter("lastName", lastName);
        myParameters[2] = new SqlParameter("userID", UserID);

        int rows = myDBManager.executeNonQuery(myQuery, myParameters);
        return rows;
}

public Users()
{



}
}
 