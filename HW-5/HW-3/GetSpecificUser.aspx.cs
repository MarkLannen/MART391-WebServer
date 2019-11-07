using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GetSpecificUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        int userID = Int32.Parse(txtUserID.Text);

        Users myUsers = new Users();
        string result = myUsers.getSpecificUser(userID);

        userTable.Text = result;


    }
}