<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot Passsword</title>
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
        <li><a href="Default.aspx">Home</a></li>
        <li><a href="Contact.aspx">Contact</a></li>
        <li><a href="About.aspx">About</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        
      </ul>
    </div>
  
</nav>

        <div class="container-fluid-signup bg-2 text-center">
        <h3>Forgot Password <span class="glyphicon glyphicon-question-sign"></span></h3>
        </div>



        <div class="container-fluid-login bg-1">
            
            <div class="container">
                <h3>Please enter an Email, we will send you the reset link.</h3>
                <hr />    
                <div class="form-horizontal">
                    
                    <div class="form-group">
                        <br /><br />
                    <asp:Label ID="Label1" runat="server" class="col-md-2 control-label" Text="Email:" Font-Bold="False" style="font-size:140%"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="tbEmailId" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ErrorMessage="Enter an email*" ControlToValidate="tbEmailId" style="color: #FFFF00"></asp:RequiredFieldValidator>
                    </div>
                    </div>
                
                     <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="btPassRec" runat="server" class="btn btn-default" Text="Send" OnClick="btPassRec_Click" />
                        <br />
                        <asp:Label ID="lblPassRec" runat="server" ForeColor="Yellow"></asp:Label>
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
