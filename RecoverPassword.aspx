<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RecoverPassword.aspx.cs" Inherits="RecoverPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reset</title>
    <link href="css/bootstrap.css"  rel="stylesheet"/>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="StyleSheet1.css" rel="stylesheet" />
    
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet"/>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet" integrity="sha256-MfvZlkHCEqatNoGiOXveE8FIwMzZg4W85qfrfIFBfYc= sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ==" crossorigin="anonymous" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    

        <nav class="navbar navbar-default navbar-fixed-top">
  
    <div class="navbar-header">
        <a class="navbar-brand" href="#">QuizUp</a>
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="disabled"><a href="#">Home</a></li>
        <li class="disabled"><a href="#">Contact</a></li>
        <li class="disabled"><a href="#">About</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="Login.aspx"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        
      </ul>
    </div>
  
</nav>

    <div class="container-fluid-signup bg-2 text-center">
        <h3><span class="glyphicon glyphicon-refresh"></span> Reset Password</h3>
    </div>

        
        
        <div class="container-fluid-login bg-1">
            
            <div class="container">
                <h3>Reset Your Password</h3>
                <hr />    
                <div class="form-horizontal">
                    
                    <div class="form-group">
                        <br />
                        <asp:Label ID="lblMsg" runat="server" style="color:#cc0000"></asp:Label>
                        <br />
                    <asp:Label ID="lblPassword" runat="server" class="col-md-2 control-label" Text="New Password:" Font-Bold="False" style="font-size:140%" Visible="False"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="tbNewPass" TextMode="Password" CssClass="form-control" runat="server" Visible="False"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" runat="server" ErrorMessage="Enter Password*" ControlToValidate="tbNewPass" style="color: #FFFF00"></asp:RequiredFieldValidator>
                    </div>
                    </div>


                    <div class="form-group">
                        
                    <asp:Label ID="lblRetypePass" runat="server" class="col-md-2 control-label" Text="Confirm:" Font-Bold="False" style="font-size:140%" Visible="False"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="tbConfirmPass" TextMode="Password" CssClass="form-control" runat="server" Visible="False"></asp:TextBox>
                        
                        <asp:CompareValidator ID="CompareValidatorPass" runat="server" ErrorMessage="Password does not match*" style="color: #FFFF00" ControlToCompare="tbNewPass" ControlToValidate="tbConfirmPass"></asp:CompareValidator>
                    </div>
                    </div>
                
                     <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="btRecPass" runat="server" class="btn btn-default" Text="Reset" OnClick="btRecPass_Click1" Visible="False"  />
                        <br />
                    </div>
                    </div>
                
                </div>
            </div>
        </div>


    <footer>
     <div class="container-fluid-signup bg-4 text-center"">
     
     <p>&copy; 2017 QuizUp.com &middot; <a href="Default.aspx">Home</a> &middot; <a href="About.aspx">About</a> &middot; <a href="Contact.aspx">Contact</a> &middot;
         </p>
     </div>
 </footer>


    </div>
    </form>
</body>
</html>
