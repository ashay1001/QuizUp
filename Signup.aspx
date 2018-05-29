<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Sign Up</title>
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
        <li class="active"><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="Login.aspx"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  
</nav>
        
       
        <div class="container-fluid-signup bg-2 text-center">
        <h3><span class="glyphicon glyphicon-ok-sign"></span> Sign Up</h3>
        
    </div>
        

<div class="bg-signup">
    <br />
        <div class="center-page">
            <label class="col-xs-11"><span class="glyphicon glyphicon-pencil"></span>   Username <asp:Label ID="lbluname" runat="server" Text=""></asp:Label></label>
            <div class="col-xs-11">
            <asp:TextBox ID="tbuname" runat="server" Class="form-control" placeholder="Username"></asp:TextBox>
                
            </div>

        </div>
    
        <div class="center-page">
            <label class="col-xs-11"><span class="glyphicon glyphicon-lock"></span> Password <asp:Label ID="lblpass" runat="server" Text=""></asp:Label></label>
            <div class="col-xs-11">
            <asp:TextBox ID="tbpass" runat="server" Class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
            </div>
        </div>

        <div class="center-page">
            <label class="col-xs-11"><span class="glyphicon glyphicon-lock"></span> Confirm Password <asp:Label ID="lblcpass" runat="server" Text=""></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblmissmatch" runat="server" Text=""></asp:Label></label>
            <div class="col-xs-11">
            <asp:TextBox ID="tbconpass" runat="server" Class="form-control" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                
            </div>
        </div>

        <div class="center-page">
            <label class="col-xs-11"><span class="glyphicon glyphicon-user"></span> Name <asp:Label ID="lblname" runat="server" Text=""></asp:Label></label>
            <div class="col-xs-11">
            <asp:TextBox ID="tbname" runat="server" Class="form-control" placeholder="Name"></asp:TextBox>
            </div>
        </div>

        <div class="center-page">
            <label class="col-xs-11"><span class="glyphicon glyphicon-envelope"></span> Email <asp:Label ID="lblemail" runat="server" Text=""></asp:Label></label>
            <div class="col-xs-11">
            <asp:TextBox ID="tbemail" runat="server" Class="form-control" placeholder="Email" TextMode="Email"></asp:TextBox>
            </div>
        </div>

        <div class="center-page">
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnsignup" runat="server" Text="Sign Up" Class="btn btn-success" OnClick="btnsignup_Click" />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;
            <label class="col-xs-11"><asp:Label ID="lblresult" runat="server" ForeColor="Yellow"></asp:Label></label>
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
