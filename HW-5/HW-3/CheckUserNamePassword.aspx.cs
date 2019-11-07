using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CheckUserNamePassword : System.Web.UI.Page
{
    private readonly object txtUserID;
    private object txtFirstName;
    private object txtLastName;
    private object lblMessage;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        //int UserID = Int32.Parse(txtUserID.Text);
        string userName = txtUserName.Text;
        string password = Password.Text;


        Users myUser = new Users(); 

        DataSet rows = myUser.ValidUsernamePassword(userName, password);

        if (rows.Tables[0].Rows.Count == 0)
        {
            validUsernamePasswordCheck.Text = "Registration failed";
        }
        else
        {
            validUsernamePasswordCheck.Text = "Registration successful!";
        }
        

    }
}