﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DisplayUser_Attributes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Users myUsers = new Users();
        int userId = Int32.Parse(txtUserID.Text);
        string result = myUsers.DisplayUserAndAttributes(userId);

        userTable.Text = result;

    }

}