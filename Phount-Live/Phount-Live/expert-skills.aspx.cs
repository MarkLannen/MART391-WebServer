using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class expert_skills : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Server.Transfer("/expert-experience.aspx");
    }

    protected void btn_Expert_Experience(object sender, EventArgs e)
    {
        Server.Transfer("/expert-experience.aspx");
    }
}