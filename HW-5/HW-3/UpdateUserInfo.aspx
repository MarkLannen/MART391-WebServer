<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdateUserInfo.aspx.cs" Inherits="UpdateUserInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />

    
</head>
<body>

<div class="container">

    <form ID="form1" runat="server" class="mt-5">
    <%--<div class="form-group"> 
        <div>
            <p>User ID</p>
            <%--<asp:TextBox ID="txtUserID" runat="server"> </asp:TextBox>--%>
            <%--<p>First Name</p>--%>
            <%--<asp:TextBox ID="txtFirstName" runat="server"> </asp:TextBox>--%>
            <%--<p>Last Name</p>--%>
            <%--<asp:TextBox ID="txtLastName" runat="server"> </asp:TextBox>--%>

            <%--<asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"/>--%>
            <%--<p></p>--%>
            
        <%--</div>--%>
<%--    </div>--%>

    <h1 id="header1">Update Player Info</h1>
       
   
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
                        <asp:textbox runat="server" ID="PhoneTextBox" CssClass="form-control"></asp:textbox>
                        
                    </div>
                   
                    <div class="form-group col-md-6">
                        <asp:label runat="server" text="Phone" ID="EmailLabel">Email</asp:label>
                        <asp:TextBox ID="Email" runat="server" CssClass="form-control"></asp:TextBox>
                       
                    </div>
                </div>
                        
                        
                     
                    <h2 class="mt-3">Payment Info</h2>
                     <div class="form-row">
                        <div class="form-group col-md-6">
                            <asp:Label ID="CreditCardLabel" runat="server" Text="Card No."></asp:Label>
                            <asp:textbox runat="server" ID="CreditCardTextBox" CssClass="form-control"></asp:textbox>
                           
                        </div>

                        <div class="form-group col-md-4">    
                            <asp:Label ID="ExpiryLabel" runat="server" Text="Expiry Date"></asp:Label>
                            <asp:textbox runat="server" ID="ExpiryTextBox" CssClass="form-control"></asp:textbox>
                            
                        </div>

                         <div class="form-group col-md-2">    
                            <asp:Label ID="Label3" runat="server" Text="Security Code"></asp:Label>
                            <asp:textbox runat="server" ID="SecurityCode" CssClass="form-control"></asp:textbox>
                           
                        </div>
                    </div>
                   
       
              
                <h2 class="mt-3">Skins</h2>
                <div class="form-row">
                    <div class="form-group col-md-9">
                        <asp:Label ID="Label1" runat="server" Text="Skin Name"></asp:Label>
                        <asp:TextBox ID="SkinName" runat="server" CssClass="form-control"></asp:TextBox>                  
                    </div>
                    <div class="form-group col-md-3">               
                        <asp:Label ID="Label6" runat="server" Text="Cost"></asp:Label>
                        <asp:TextBox ID="Cost" runat="server" Text="" CssClass="form-control"></asp:TextBox>
                    </div>
                  
                </div>
                <h2 class="mt-3">Loot</h2>
                <div class="form-row">
                <div class="form-group col-md-3"> 
                        <asp:Label ID="CurrencyLabel" runat="server" Text="">Total Loot</asp:Label>
                        <asp:TextBox ID="TotalLoot" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>    
                    </div>
                           
                <div class="mt-3">
                    <asp:Button ID="btnSubmit" runat="server" class="btn btn-primary btn-lg" Text="Submit" OnClick="btnSubmit_Click"/>
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
