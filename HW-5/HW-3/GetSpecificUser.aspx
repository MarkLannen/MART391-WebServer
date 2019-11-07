<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GetSpecificUser.aspx.cs" Inherits="GetSpecificUser" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Get Specific User</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />

    
</head>
<body>

<div class="container">
    
        <form runat="server">
            
            <h2 class="mt-3">Enter User ID to display specific user</h2>
                   
           <div class="form-row">
                 <div class="form-group col-md-6">
                    <asp:label runat="server" text="Enter User ID" ID="UserIDLabel" ></asp:label>
                    <asp:textbox runat="server" ID="txtUserID" CssClass="form-control"></asp:textbox>
                    
                 </div>          
              
            </div>
            
              <asp:Button class="btn btn-primary" Text="Submit" runat="server" OnClick="btnSubmit_Click"/>
          
        </form>
       <asp:label runat="server" text="" ID="userTable"></asp:label>
    
</div>  
</body>
    
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</html>




