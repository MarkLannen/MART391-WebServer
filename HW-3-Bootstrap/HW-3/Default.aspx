<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Homework-3</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymou"/>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
</head>
<body>
    


         <div class="container">
        <h1>Player Info</h1>
   
        <form runat="server">
            
        
            <h2>Login</h2>
                <%--<asp:Login ID="Login1" runat="server" CssClass=""></asp:Login>--%>
            <div class="form-row">
                 <div class="form-group col-md-6">
                    <asp:label runat="server" text="Username" ID="UsernameLabel" ></asp:label>
                    <asp:textbox runat="server" ID="Username" CssClass="form-control"></asp:textbox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="* required" ControlToValidate="Username"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group col-md-6">
                    <asp:label runat="server" text="Password" ID="PasswordLabel"></asp:label>
                    <asp:textbox runat="server" ID="Password" CssClass="form-control"></asp:textbox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="* required" ControlToValidate="Password"></asp:RequiredFieldValidator>
                </div>
             </div>



            <h2>Name</h2>
            <div class="form-row">
                 <div class="form-group col-md-6">
                    <asp:label runat="server" text="First Name" ID="firstNameLabel" ></asp:label>
                    <asp:textbox runat="server" ID="firstNameText" CssClass="form-control"></asp:textbox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* required" ControlToValidate="firstNameText"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group col-md-6">
                    <asp:label runat="server" text="Last Name" Class="col-md"></asp:label>
                    <asp:textbox runat="server" ID="lastNameText" CssClass="form-control"></asp:textbox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* required" ControlToValidate="lastNameText"></asp:RequiredFieldValidator>
                </div>
             </div>
            <hr />
            <h2>Contact Details</h2>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <asp:label runat="server" text="Address1" ID="Address1"></asp:label>
                    <asp:textbox runat="server" ID="Address1TextBox" CssClass="form-control"></asp:textbox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*required" ControlToValidate="Address1TextBox"></asp:RequiredFieldValidator>
                  </div>  
                  <div class="form-group col-md-6">
                    <asp:label runat="server" text="Address2" ID="Label2"></asp:label>
                    <asp:textbox runat="server" ID="Address2TextBox" CssClass="form-control"></asp:textbox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*required" ControlToValidate="Address2TextBox"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <asp:label runat="server" text="City" ID="CityLabel"></asp:label>
                    <asp:textbox runat="server" ID="CityTextBox" CssClass="form-control"></asp:textbox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*required" ControlToValidate="CityTextBox"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group col-md-4">
                    <asp:label runat="server" text="State" ID="StateTextBox"></asp:label>
                    <asp:textbox runat="server" ID="StateLabel" CssClass="form-control"></asp:textbox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*required" ControlToValidate="StateLabel"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group col-md-2">
                    <asp:label runat="server" text="Postal Code"></asp:label>
                    <asp:textbox runat="server" ID="PostalCodeTextBox" CssClass="form-control"></asp:textbox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="RegularExpressionValidator" ValidationExpression="\d{5}(-\d{4})?" ControlToValidate="PostalCodeTextBox"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*required" ControlToValidate="PostalCodeTextBox"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <asp:label runat="server" text="Phone" ID="PhoneLabel"></asp:label>
                    <asp:textbox runat="server" ID="PhoneTextBox" CssClass="form-control"></asp:textbox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*required" ControlToValidate="PhoneTextBox"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="PhoneTextBox" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
                </div>
               
                <div class="form-group col-md-6">
                    <asp:label runat="server" text="Phone" ID="EmailLabel">Email</asp:label>
                    <asp:TextBox ID="Email" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="* invalid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="Email"></asp:RegularExpressionValidator>
                </div>
            </div>
                    
                    
                    <hr>
                <h2>Payment Info</h2>
                 <div class="form-row">
                    <div class="form-group col-md-6">
                        <asp:Label ID="CreditCardLabel" runat="server" Text="Card No."></asp:Label>
                        <asp:textbox runat="server" ID="CreditCardTextBox" CssClass="form-control"></asp:textbox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="CreditCardTextBox"></asp:RequiredFieldValidator>
                    </div>

                    <div class="form-group col-md-4">    
                        <asp:Label ID="ExpiryLabel" runat="server" Text="Expiry Date"></asp:Label>
                        <asp:textbox runat="server" ID="ExpiryTextBox" CssClass="form-control"></asp:textbox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="ExpiryTextBox"></asp:RequiredFieldValidator>
                    </div>

                     <div class="form-group col-md-2">    
                        <asp:Label ID="Label3" runat="server" Text="Security Code"></asp:Label>
                        <asp:textbox runat="server" ID="SecurityCode" CssClass="form-control"></asp:textbox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="SecurityCode"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <br />
       
       
            <h2>Communications Preferences</h2>
            <div class="form-check">   
                <asp:RadioButton ID="YesRadioButton" class="form-check-input" runat="server" name="CorrespondencePreference" Text="" />
                <asp:Label class="form-check-label" ID="Label4" runat="server" Text="">Yes, I would like to receive correspondence</asp:Label>
            </div>
            <div class="form-check">  
                <asp:RadioButton ID="NoRadioButton" class="form-check-input" runat="server" Text=""  name="CorrespondencePreference"/>
                <asp:Label class="form-check-label" ID="Label5" runat="server" Text="">No, please unsubscribe me from all correspondence</asp:Label>
            </div>
            <hr />
          
            <h2>Games</h2>
                
            <div class="form-row">
                <div class="form-group col-md-6">
                    <asp:Label ID="Label1" runat="server" Text="Games played"></asp:Label>
                    <asp:TextBox ID="GamesPlayed" runat="server" CssClass="form-control"></asp:TextBox>                  
                </div>
                <div class="form-group col-md-3">               
                    <asp:Label ID="Label6" runat="server" Text="Rank"></asp:Label>
                    <asp:TextBox ID="PlayerRank" runat="server" Text="" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group col-md-3">               
                    <asp:Label ID="Label8" runat="server" Text="Tag"></asp:Label>
                    <asp:TextBox ID="GamerTag" runat="server" Text="" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
               
            <div class="form-row">
                    <asp:Label ID="CurrencyLabel" runat="server" Text="">Currency</asp:Label>
                    <asp:TextBox ID="Currency" runat="server" CssClass="form-control"></asp:TextBox>
                </div>

               
            <div class="mt-3">
                <asp:Button ID="SubmitButton" class="btn btn-primary btn-lg" runat="server" Text="Submit" />
            </div>
       </form>  

</div>

    <div><br /><br /><br /><br /></div>


    
</body>
    
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>




</html>
