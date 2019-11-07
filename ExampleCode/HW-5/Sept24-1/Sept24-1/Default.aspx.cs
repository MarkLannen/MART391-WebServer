using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        //string myConnectionString = "Data Source=(local);Initial Catalog=Sept17;User ID=specialuser;Password=test123";
        string myConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();

        SqlConnection myConnection = new SqlConnection(myConnectionString);
        myConnection.Open();

        string myQuery = "spUpdateUser";
        int UserID = Int32.Parse(txtUserID.Text);
        string firstName = txtFirstName.Text;
        string lastName = txtLastName.Text;

        //DataSet myDataSet = new DataSet();
        SqlCommand myCommand = new SqlCommand(myQuery);
        myCommand.Connection = myConnection;
        myCommand.CommandType = CommandType.StoredProcedure;
        SqlParameter[] myParameters = new SqlParameter[3];
        myParameters[0] = new SqlParameter("firstName", firstName);
        myParameters[1] = new SqlParameter("lastName", lastName);
        myParameters[2] = new SqlParameter("userID", UserID);
        myCommand.Parameters.AddRange(myParameters);
        myCommand.ExecuteNonQuery();

        lblMessage.Text = "Update complete.";

        /*SqlParameter[] myParameters = new SqlParameter[1];
        myParameters[0] = new SqlParameter("userID", UserID);
        myCommand.Parameters.AddRange(myParameters);

        SqlDataAdapter myAdapter = new SqlDataAdapter(myCommand);
        myAdapter.Fill(myDataSet);

        string finalResult = "";

        for (int i = 0; i < myDataSet.Tables[0].Rows.Count; i++)
        {

            finalResult += myDataSet.Tables[0].Rows[i]["firstName"] + " " + myDataSet.Tables[0].Rows[i]["lastName"] + "<br>";
        }
        
        lblMessage.Text = finalResult;
        */

        myConnection.Close();
    }
}