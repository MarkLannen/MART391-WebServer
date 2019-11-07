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
        int UserID = Int32.Parse(txtUserID.Text);
        string firstName = txtFirstName.Text;
        string lastName = txtLastName.Text;

        
        Users myUser = new Users(); // create instance of class

        //String finalResult = myUser.GetUserData(UserID); // calling the method

        //lblMessage.Text = finalResult;

        int rows = myUser.updateUser(UserID, firstName, lastName);

        lblMessage.Text = "Rows affected: " + rows;
        
    }
}