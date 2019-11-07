<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Homework-3</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />

    
</head>
<body>

<div class="container">

    <form ID="form1" runat="server" class="mt-5">
  
    <h1 id="header1">Player Info</h1>
       
    <h2 class="mt-3">Login</h2>
                   
            <div class="form-row">
                 <div class="form-group col-md-6">
                    <asp:label runat="server" text="Username" ID="UsernameLabel" ></asp:label>
                    <asp:textbox runat="server" ID="txtUserName" CssClass="form-control"></asp:textbox>
                    
                 </div>
                 <div class="form-group col-md-3">
                    <asp:label runat="server" text="Password" ID="PasswordLabel"></asp:label>
                    <asp:textbox runat="server" ID="txtPassword" CssClass="form-control"></asp:textbox>
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="* required" ControlToValidate="Password"></asp:RequiredFieldValidator>--%>
                 </div>
              
            </div>



                <h2 class="mt-3">Name</h2>
                <div class="form-row">
                     <div class="form-group col-md-6">
                        <asp:label runat="server" text="First Name" ID="firstNameLabel" ></asp:label>
                        <asp:textbox runat="server" ID="txtFirstName"  CssClass="form-control"> </asp:textbox>
                        
                    </div>
                    <div class="form-group col-md-6">
                        <asp:label runat="server" text="Last Name" Class="col-md"></asp:label>
                        <asp:textbox runat="server" ID="txtLastName" CssClass="form-control"></asp:textbox>
                        
                    </div>
                 </div>
                
                <h2 class="mt-3">Contact Details</h2>
                
                
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <asp:label runat="server" text="Phone" ID="PhoneLabel"></asp:label>
                        <asp:textbox runat="server" ID="txtPhone" CssClass="form-control"></asp:textbox>
                        
                    </div>
                   
                    <div class="form-group col-md-6">
                        <asp:label runat="server" text="Email" ID="EmailLabel">Email</asp:label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                       
                    </div>
                </div>
                        
                        
                     
                    
                   
       
              
                

                   
                <div class="mt-3">
                    <asp:Button ID="btnSubmit" runat="server" class="btn btn-primary btn-lg" Text="Submit" OnClick="btnSubmit_Click" />
                </div>
                <%--<asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"/>--%>
    </form> 
    <asp:Label ID="lblMessage" runat="server" ></asp:Label>
</div>
    
    
</body>
    
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</html>
