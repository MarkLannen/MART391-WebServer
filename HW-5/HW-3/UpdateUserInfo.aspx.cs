using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UpdateUserInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string userName = txtUserName.Text;
        string userID = txtUserID.Text;
        string firstName = txtFirstName.Text;
        string lastName = txtLastName.Text;
        string phone = txtPhone.Text;
        string email = txtEmail.Text;


        Users myUser = new Users(); // create instance of class

        myUser.updateUser(userName, userID, firstName, lastName, phone, email);

        //String finalResult = myUser.GetUserData(UserID); // calling the method

        //lblMessage.Text = finalResult;

        //int rows = myUser.updateUser(UserID, firstName, lastName);

        //lblMessage.Text = "Rows affected: " + rows;

    }
}