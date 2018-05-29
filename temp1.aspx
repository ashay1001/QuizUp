<%@ Page Language="C#" AutoEventWireup="true" CodeFile="temp1.aspx.cs" Inherits="temp1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Admin</title>
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
        <li><a href="#">Home</a></li>
        <li><a href="#">Contact</a></li>
        <li><a href="#">About</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
         <li><a style="font-size:20px;">Hi <asp:Label ID="lblusername" runat="server" Text=""></asp:Label></a></li> 
        <li><a href="#"><asp:Button ID="Button1"  runat="server" Text="Logout" OnClick="logout" /></a></li>
        
      </ul>
    </div>
  
</nav>

            <div class="container-fluid-signup bg-2 text-center">
        <h3><span class="glyphicon glyphicon-pencil"></span> User Record</h3>
        
    </div>


        <div class="container-fluid-login ">
        <div class="container">
            <h4>List of users which have succesfully completed the test:</h4>
        <hr /><br />
        
            <div class="panel panel-default">
            <!-- Default panel contents -->

            <div class="panel-heading">User Record</div>

            <asp:Repeater ID="rptrBrands" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="rptrBrands_ItemCommand">
                <HeaderTemplate>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Username</th>
                                <th>Score</th>
                                <th>Incorrect</th>
                                <th>Total Solved</th>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <th><%# Eval("username") %></th>
                        <td><%# Eval("correct") %></td>
                        <td><%# Eval("wrong") %></td>
                        <td><%# Eval("solved") %></td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </tbody>
            </table>
                </FooterTemplate>
            </asp:Repeater>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyDatabaseConnectionString1 %>" SelectCommand="SELECT [username], [correct], [wrong], [solved] FROM [userinfo]"></asp:SqlDataSource>
        </div>
            <br /><hr />
    </div>
        
        
        
        
        </div>
        </div>
        
        
        


<footer>
     <div class="container-fluid-signup bg-4 text-center"">
     
     <p>&copy; 2017 QuizUp.com &middot; <a href="Default.aspx">Home</a> &middot; <a href="#">About</a> &middot; <a href="#">Contact</a> &middot;
         </p>
     </div>
 </footer>

    </div>
    </form>
</body>
</html>
