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
    private SqlDbType userID;
    private object myDataSet;

    public String getSpecificUser(int UserID)
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

    public DataSet ValidUsernamePassword(string userName, string password)
    {
        DBManager myDBManager = new DBManager();
        string myQuery = "spValidUserNamePassword";

        SqlParameter[] myParameters = new SqlParameter[2];
        myParameters[0] = new SqlParameter("userName", userName);
        myParameters[1] = new SqlParameter("password", password);

        DataSet myDataSet = myDBManager.createDataSet(myQuery, myParameters);

        return myDataSet;
    }


    public int updateUser(string userName, string UserID, string firstName, string lastName, string phoneNumber, string email)
    {
        DBManager myDBManager = new DBManager();
        string myQuery = "spUpdateUser";

        SqlParameter[] myParameters = new SqlParameter[6];
        
        myParameters[0] = new SqlParameter("userName", userName);
        myParameters[1] = new SqlParameter("userID", UserID);
        myParameters[2] = new SqlParameter("firstName", firstName);
        myParameters[3] = new SqlParameter("lastName", lastName);
        myParameters[4] = new SqlParameter("phoneNumber", phoneNumber);
        myParameters[5] = new SqlParameter("email", email);
        
        int rows = myDBManager.executeNonQuery(myQuery, myParameters);
        return rows;
    }


    public int insertUser(string userName, string password, string firstName, string lastName, string phoneNumber, string email )
    {
        DBManager myDBManager = new DBManager();
        string myQuery = "spInsertUser";

        SqlParameter[] myParameters = new SqlParameter[6];
        myParameters[0] = new SqlParameter("userName", userName);
        myParameters[1] = new SqlParameter("password", password);
        myParameters[2] = new SqlParameter("email", email);
        myParameters[3] = new SqlParameter("phoneNumber", phoneNumber);
        myParameters[4] = new SqlParameter("firstName", firstName);
        myParameters[5] = new SqlParameter("lastName", lastName);

        int rows = myDBManager.executeNonQuery(myQuery, myParameters);

        return rows; 
      
    }

    public string getAllUsers()
    {
        DBManager myDBManager = new DBManager();
        
        string myQuery = "spSelectAllUsers";

        SqlParameter[] myParameters = new SqlParameter[0];
       
        DataSet myDataSet = myDBManager.createDataSet(myQuery, myParameters);

        string finalResult = "";

        for (int i = 0; i < myDataSet.Tables[0].Rows.Count; i++)
        {
            finalResult += "<tr><td>" + myDataSet.Tables[0].Rows[i]["firstName"] + "</td> " + "<td>" + myDataSet.Tables[0].Rows[i]["lastName"] + "</td> " +
            "<td> " + myDataSet.Tables[0].Rows[i]["email"] + "</td>" + "<td> " + myDataSet.Tables[0].Rows[i]["phoneNumber"] + "</td>" +
            "<td> " + myDataSet.Tables[0].Rows[i]["userName"] + "</td> " + myDataSet.Tables[0].Rows[i]["password"] + "</td></tr>" + "<br>";
        }
        return finalResult;
    }
}