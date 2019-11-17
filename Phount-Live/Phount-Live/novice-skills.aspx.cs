using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class novice_skills : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_Novice_Skills_Submit(object sender, EventArgs e)
    {
        Server.Transfer("/novice-profile.aspx");
    }
}