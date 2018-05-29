<%@ Page Language="C#" AutoEventWireup="true" CodeFile="session2.aspx.cs" Inherits="session2" %>

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


            Q.1.Compare the knowledge of persons X, Y, Z, A, B and C in
relation to each other.
            <br />
            1.X knows more than A.
            <br />
            2.Y knows as much as B.
            <br />
            3.Z knows less than C.
            <br />
            4.A nows more than Y.
            <br />
            The best knowledge person amongst all is?
<asp:RadioButtonList ID="q11" runat="server" Height="28px" 
        RepeatDirection="Horizontal" Width="327px" 
        onselectedindexchanged="q11_SelectedIndexChanged">
    <asp:ListItem>X</asp:ListItem>
    <asp:ListItem>Y</asp:ListItem>
    <asp:ListItem>A</asp:ListItem>
    <asp:ListItem>C</asp:ListItem>
    </asp:RadioButtonList>
<hr />
<br />

Q.2.Five children were administrated psychological tests to know their
    intellectual levels. In the report, psychologists pointed out that
    the child A is less intelligent than the child B. The child C is
    less intelligent than the child D. The child B is less intelligent
    than the child C and child A is more intelligent than child E.
    Which child is most intelligent?

    <asp:RadioButtonList ID="q12" runat="server" Height="32px" 
        RepeatDirection="Horizontal" Width="377px" 
        onselectedindexchanged="q12_SelectedIndexChanged">
        <asp:ListItem>E</asp:ListItem>
        <asp:ListItem>A</asp:ListItem>
        <asp:ListItem>D</asp:ListItem>
        <asp:ListItem Value="B"></asp:ListItem>
    </asp:RadioButtonList>
            <hr />
    <br />

    Q.3.In an examination, Raj got more marks than Mukesh but not as many
    as Priya.Priya got more marks than Dinesh and Kamal. Dinesh got
    less marks than Mukesh but his marks are not the lowest in the group.
    Who is the second in the descending order of marks?
    <asp:RadioButtonList ID="q13" runat="server" Height="16px" 
        RepeatDirection="Horizontal" Width="563px" 
        onselectedindexchanged="q13_SelectedIndexChanged">
        <asp:ListItem>Priya</asp:ListItem>
        <asp:ListItem>Kamal</asp:ListItem>
        <asp:ListItem Value="Raj"></asp:ListItem>
        <asp:ListItem Value="Can&quot;t be determine"></asp:ListItem>
    </asp:RadioButtonList>
            <hr />
    <br />

  Q.4 Read the following information carefully and answer the questions
    given below it:
    (A)Gopal is shorter than Ashok but taller than Kunal.
    (B)Navin is shorter than Kunal.
    (C)Jayesh is taller than Navin.
    (D)Ashok is taller than Jayesh.
     Who among them is the tallest?
    <asp:RadioButtonList
        ID="q14" runat="server" Height="36px" 
        RepeatDirection="Horizontal" Width="421px" 
        onselectedindexchanged="q14_SelectedIndexChanged">
        <asp:ListItem>Gopal</asp:ListItem>
        <asp:ListItem> Kunal</asp:ListItem>
        <asp:ListItem>Navin</asp:ListItem>
        <asp:ListItem>Ashok</asp:ListItem>
    </asp:RadioButtonList>
            <hr />
    <br />
        Q.5 Four girls are sitting on a bench to be photographed. Shikha
    is to the left of Reena.
    Manju is to the right of Reena. Rita is between Reena and Manju.
    Who would be second from the left in the photograph?
    <asp:RadioButtonList
        ID="q15" runat="server" Height="30px" 
        RepeatDirection="Horizontal" Width="496px" 
        onselectedindexchanged="q15_SelectedIndexChanged">
        <asp:ListItem>Reena</asp:ListItem>
        <asp:ListItem>Shikha</asp:ListItem>
        <asp:ListItem>Manju</asp:ListItem>
        <asp:ListItem>Rita</asp:ListItem>
    </asp:RadioButtonList>
    <hr />
            <br />


           </div>

            <ul class="pager">
               <li class="next"><asp:Button ID="Button2" runat="server" Text ="Next &rarr;" class="btn btn-default" OnClick="Button2_Click" /></li>
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
