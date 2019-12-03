using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class novice_registration_landing : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }

   
    protected void btn_Novice_Registration(object sender, EventArgs e)
    {
        string userName = noviceUsername.Text;
        string password = novicePassword.Text;
        string email = noviceEmail.Text;
        string phone = novicePhoneNumber.Text;
        string firstName = noviceFirstName.Text;
        string lastName = noviceLastName.Text;

        Users myUser = new Users(); // create instance of class

        int rows = myUser.insertUser(userName, password, email, phone, firstName, lastName);


        
        System.Diagnostics.Debug.WriteLine(rows);

        //Server.Transfer("/novice-registration-first-step.aspx");
    }

}