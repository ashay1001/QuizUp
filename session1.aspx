<%@ Page Language="C#" AutoEventWireup="true" CodeFile="session1.aspx.cs" Inherits="session1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Session 1</title>
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
        <li><a style="font-size:20px;">Hi <asp:Label ID="lblusername" runat="server" Text="Label"></asp:Label></a></li>
        <li><a href="#"><asp:Button ID="Button1"  runat="server" Text="Logout" OnClick="logout" /></a></li>
      </ul>
    </div>
  
</nav>


        <div class="container-fluid-signup bg-2 text-center">
        <h3><span class="glyphicon glyphicon-pencil"></span> Session 1</h3>
        
    </div>

         <div class="container-fluid-session bg-1">  
        
        <div class="container">
        <div class="qsn">

        Q.1 Complete series: 1 4 9 16 25 ?
<asp:RadioButtonList ID="q1" runat="server" Height="27px" RepeatDirection="Horizontal" Width="284px" 
        onselectedindexchanged="q1_SelectedIndexChanged">
    <asp:ListItem>36</asp:ListItem>
    <asp:ListItem>49</asp:ListItem>
    <asp:ListItem>30</asp:ListItem>
    <asp:ListItem>35</asp:ListItem>
</asp:RadioButtonList>
            <hr />
<br />

        Q.2 What is LCM of 12 & 90?
     <asp:RadioButtonList ID="q2" runat="server" Height="27px" 
        RepeatDirection="Horizontal" Width="284px" 
        onselectedindexchanged="q2_SelectedIndexChanged">
        <asp:ListItem>180</asp:ListItem>
        <asp:ListItem>90</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>360</asp:ListItem>
    </asp:RadioButtonList>
            <hr />
    <br />
        
        
    Q.3 1 litre of water is added to litre 20% solution of milk in water.The percantage
        strength of milk is now...?
       <asp:RadioButtonList ID="q3" runat="server" Height="27px" 
        RepeatDirection="Horizontal" Width="284px" 
        onselectedindexchanged="q3_SelectedIndexChanged">
           <asp:ListItem>50/3</asp:ListItem>
           <asp:ListItem>21/2</asp:ListItem>
           <asp:ListItem>46/3</asp:ListItem>
           <asp:ListItem>12/5</asp:ListItem>
       </asp:RadioButtonList><hr />
       <br />    
        
        Q.4 5:25 :: 25:?
    <asp:RadioButtonList ID="q4" runat="server" Height="27px" 
        RepeatDirection="Horizontal" Width="284px" 
        onselectedindexchanged="q4_SelectedIndexChanged" >
        <asp:ListItem>120</asp:ListItem>
        <asp:ListItem>125</asp:ListItem>
        <asp:ListItem>200</asp:ListItem>
        <asp:ListItem>100</asp:ListItem>
    </asp:RadioButtonList><hr />
    <br />
    Q.5 Complete the series: 10,20,30,40,?
    <asp:RadioButtonList ID="q5" runat="server" Height="27px" 
        RepeatDirection="Horizontal" Width="284px" 
        onselectedindexchanged="q5_SelectedIndexChanged">
    <asp:ListItem>50</asp:ListItem>
    <asp:ListItem>60</asp:ListItem>
    <asp:ListItem>70</asp:ListItem>
    <asp:ListItem>80</asp:ListItem>
    </asp:RadioButtonList><hr />
    <br />
    Q.6 30% of 200?
    <asp:RadioButtonList ID="q6" runat="server" Height="27px" 
        RepeatDirection="Horizontal" Width="284px" 
        onselectedindexchanged="q6_SelectedIndexChanged">
        <asp:ListItem>60</asp:ListItem>
        <asp:ListItem>70</asp:ListItem>
        <asp:ListItem>80</asp:ListItem>
        <asp:ListItem>90</asp:ListItem>
    </asp:RadioButtonList><hr />
    <br />
    Q.7 What is the value of 225*225?
    <asp:RadioButtonList ID="q7" runat="server" Height="30px" 
        RepeatDirection="Horizontal" Width="389px" 
        onselectedindexchanged="q7_SelectedIndexChanged">
        <asp:ListItem>50625</asp:ListItem>
        <asp:ListItem>52525</asp:ListItem>
        <asp:ListItem>60525</asp:ListItem>
        <asp:ListItem>60025</asp:ListItem>
    </asp:RadioButtonList><hr />
    <br />
    Q.8 What is 10th term in A.P 1,7,13,19,...
    <asp:RadioButtonList ID="q8" runat="server" Height="27px" 
        RepeatDirection="Horizontal" Width="284px" 
        onselectedindexchanged="q8_SelectedIndexChanged">
        <asp:ListItem>55</asp:ListItem>
        <asp:ListItem>54</asp:ListItem>
        <asp:ListItem>59</asp:ListItem>
        <asp:ListItem>51</asp:ListItem>
    </asp:RadioButtonList><hr />
    <br />
    Q.9 what is 5th term in G.P.?
        3,9,27,..
    <asp:RadioButtonList ID="q9" runat="server" Height="27px" 
        RepeatDirection="Horizontal" Width="284px" 
        onselectedindexchanged="q9_SelectedIndexChanged">
        <asp:ListItem>243</asp:ListItem>
        <asp:ListItem>81</asp:ListItem>
        <asp:ListItem>729</asp:ListItem>
        <asp:ListItem>529</asp:ListItem>
    </asp:RadioButtonList>
    <br /><hr />
    Q.10 What is probability of getting head when a coin is tossed twice?
    <asp:RadioButtonList ID="q10" runat="server" Height="27px" 
        RepeatDirection="Horizontal" Width="284px" 
        onselectedindexchanged="q10_SelectedIndexChanged">
        <asp:ListItem>0.25</asp:ListItem>
        <asp:ListItem>0.5</asp:ListItem>
        <asp:ListItem>0.8</asp:ListItem>
        <asp:ListItem>0.33</asp:ListItem>
    </asp:RadioButtonList>
    <br /><hr />
        
        
        </div>

            <ul class="pager">
               <li class="next"><asp:Button ID="Button2" runat="server" Text ="Next &rarr;" class="btn btn-default" OnClick="Button2_Click" /></li>
                </ul>

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
