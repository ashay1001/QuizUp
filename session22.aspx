<%@ Page Language="C#" AutoEventWireup="true" CodeFile="session22.aspx.cs" Inherits="session22" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Session 2</title>
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
        <li><a style="font-size:20px;">Hi <asp:Label ID="lblusername" runat="server" Text=""></asp:Label></a></li>
        <li><a href="#"><asp:Button ID="Button1"  runat="server" Text="Logout" OnClick="logout" /></a></li>
      </ul>
    </div>
  
</nav>


        <div class="container-fluid-signup bg-2 text-center">
        <h3><span class="glyphicon glyphicon-pencil"></span> Session 2</h3>
        
    </div>

         <div class="container-fluid-session bg-1">  
        
        <div class="container">
        <div class="qsn">


            Q.6.Moon : Satellite : : Earth :?

        <asp:RadioButtonList ID="q16" runat="server" Height="40px" 
        RepeatDirection="Horizontal" Width="415px" 
        onselectedindexchanged="q16_SelectedIndexChanged">
            <asp:ListItem Value="Sun">Sun</asp:ListItem>
            <asp:ListItem>Planet</asp:ListItem>
            <asp:ListItem Value="Solar System"></asp:ListItem>
            <asp:ListItem>Astroid</asp:ListItem>
    </asp:RadioButtonList>
            <hr />
    <br />
&nbsp;Q.7 Forecast : Future : : Regret :?
    <asp:RadioButtonList ID="q17" runat="server" Height="43px" 
        RepeatDirection="Horizontal" Width="460px" 
        onselectedindexchanged="q17_SelectedIndexChanged">
        <asp:ListItem>Present</asp:ListItem>
        <asp:ListItem> Atone </asp:ListItem>
        <asp:ListItem>Past</asp:ListItem>
        <asp:ListItem>Sins </asp:ListItem>
    </asp:RadioButtonList>
            <hr />
    <br />
&nbsp;Q.8 Influenza : Virus : : Typhoid : ?
    <asp:RadioButtonList ID="q18" runat="server" Height="31px" 
        RepeatDirection="Horizontal" Width="511px" 
        onselectedindexchanged="q18_SelectedIndexChanged">
        <asp:ListItem>Bacillus</asp:ListItem>
        <asp:ListItem>Parasite</asp:ListItem>
        <asp:ListItem>Protozoa</asp:ListItem>
        <asp:ListItem>Bacteria</asp:ListItem>
    </asp:RadioButtonList>
            <hr />
    <br />
    Q.9 Fear : Threat : : Anger : ? 
    <asp:RadioButtonList ID="q19" runat="server" Height="33px" 
        RepeatDirection="Horizontal" Width="501px" 
        onselectedindexchanged="q19_SelectedIndexChanged">
        <asp:ListItem>Compulsion</asp:ListItem>
        <asp:ListItem Value="Panic"></asp:ListItem>
        <asp:ListItem>Provocation</asp:ListItem>
        <asp:ListItem>Force</asp:ListItem>
    </asp:RadioButtonList>
            <hr />
    <br />
    Q.10 What is synonym for " NOVICE"?
    <asp:RadioButtonList ID="q20" runat="server" Height="25px" 
        RepeatDirection="Horizontal" Width="465px" 
        onselectedindexchanged="q20_SelectedIndexChanged">
        <asp:ListItem>Acolye</asp:ListItem>
        <asp:ListItem>Arcane</asp:ListItem>
        <asp:ListItem>Carousal</asp:ListItem>
        <asp:ListItem>Pertur</asp:ListItem>
    </asp:RadioButtonList>
            <hr />
    <br />





        </div>

            <ul class="pager">
               <li class="next"><asp:Button ID="Button2" runat="server" Text ="Submit" class="btn btn-danger" OnClick="Button2_Click" /></li>
                </ul>

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
