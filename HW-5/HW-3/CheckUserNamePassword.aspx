﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CheckUserNamePassword.aspx.cs" Inherits="CheckUserNamePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Check Username and Password</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
</head>
<body>


    <form id="form1" runat="server">
        <div class="container">
            <h1 class="mb-5 mt-3">Check Username and Password</h1>

            <div class="form-row">
                <div class="form-group col-md-6">
                    <asp:Label runat="server" Text="Username" ID="UsernameLabel"></asp:Label>
                    <asp:TextBox runat="server" ID="txtUserName" CssClass="form-control"></asp:TextBox>

                </div>
                <div class="form-group col-md-3">
                    <asp:Label runat="server" Text="Password" ID="PasswordLabel"></asp:Label>
                    <asp:TextBox runat="server" ID="Password" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="mt-3">
                <asp:Button ID="btnSubmit" runat="server" class="btn btn-primary btn-lg mb-3" Text="Submit" OnClick="btnSubmit_Click" />
            </div>

            <asp:Label class="" runat="server" Text="" ID="validUsernamePasswordCheck"></asp:Label>
        </div>
    </form>



    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
