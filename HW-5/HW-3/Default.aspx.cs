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

        string userName = txtUserName.Text;        
        string password = txtPassword.Text;
        string firstName = txtFirstName.Text;
        string lastName = txtLastName.Text;
        string phone = txtPhone.Text;
        string email = txtEmail.Text;

        Users myUser = new Users(); // create instance of class

        int rows = myUser.insertUser(userName, password, firstName, lastName, phone, email);

        if (rows == 0)
        {
            lblMessage.Text = "Registration failed";
        } else
        {
            lblMessage.Text = "Registration successful!";
        }   
    }
}
