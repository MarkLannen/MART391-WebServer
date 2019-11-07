using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DeleteUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        //int UserID = Int32.Parse(txtUserID.Text);
        string firstName = txtUserName.Text;
        string lastName = Password.Text;


        Users myUser = new Users(); // create instance of class

        //String finalResult = myUser.GetUserData(UserID); // calling the method

        //lblMessage.Text = finalResult;

        //int rows = myUser.updateUser(UserID, firstName, lastName);

        //lblMessage.Text = "Rows affected: " + rows;

    }
}
