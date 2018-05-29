<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Starttest.aspx.cs" Inherits="Starttest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Test</title>
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
        <li><a href="#"><asp:Button ID="Button1"  runat="server" Text="Logout" OnClick="logout" /></a></li>
      </ul>
    </div>
  
</nav>

        <div class="container-fluid-signup bg-2 text-center">
        <h3><span class="glyphicon glyphicon-log-in"></span> Start Test</h3>
        
    </div>

        
      <div class="container-fluid-login bg-1">  
        
        <div class="container">
            <h4>Hi <asp:Label ID="lblusername" runat="server" Text="" ForeColor="Yellow"></asp:Label>,</h4>
            <h3>Please Read Carefully!</h3>
        <hr /> 
  
            <h4>1.There are two sessions in this test.
                <br /> <br />
2.After the first session ends, click on next button and the second session would start. <br /><br />
3.Each session has total ten questions. <br /><br />
4.Click on "start the test" button to start the test,else click on "log out"<br /><br />

        </h4>
            <a href="session1.aspx" class="btn btn-default btn-lg">
             START 
        <span class="glyphicon glyphicon-menu-right"></span>
        </a>
       
            <hr />
         </div>
         
    </div>






        <footer>
     <div class="container-fluid-signup bg-4 text-center"">
     
     <p>&copy; 2017 QuizUp.com &middot; <a href="#">Home</a> &middot; <a href="#">About</a> &middot; <a href="#">Contact</a> &middot;
         </p>
     </div>
 </footer>

    </div>
    </form>
</body>
</html>
