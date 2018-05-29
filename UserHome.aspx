<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserHome.aspx.cs" Inherits="UserHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
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



    <div class="container-fluid bg-1 text-center">
        <hr />
        <div class="text-left"><h4>Welcome <asp:Label ID="lblusername" runat="server" Text="" style="font-weight: 700; color: #FFFF00"></asp:Label></h4></div>
        <hr />
        <h3>GET READY TO QuizUp</h3>
        <img src="img/light2.jpg"  class="img-circle" width="250" height="250" alt=""/>
        <h3></h3>
        <a href="Starttest.aspx" class="btn btn-default btn-lg">
             START 
        <span class="glyphicon glyphicon-menu-right"></span>
        </a>
    </div>

    <div class="container-fluid bg-2 text-center">
        <h3>WHY..?</h3>
        <p>Tests and Quizzes play an important role in e-learning and provide an array of benefits for both the learner and the instructor.</p>
        <p>Testing causes students to learn more from the next study episode. Essentially it reduces forgetting which makes the next related study area more productive.</p>
        <p>There are several experiments referenced in the paper where tests and quizzes help transfer and application of knowledge.</p>
        <p>A quiz is a form of game or mind sport in which the players (as individuals or in teams) attempt to answer questions correctly.</p> 
        <p>In some countries, a quiz is also a brief assessment used in education and similar fields to measure growth in knowledge, abilities, and/or skills.</p>
    </div>

    <div class="container-fluid bg-3 text-center">
         <h3>THINGS TO KNOW</h3>
           <p>There will be 30 question.Correct answer will give you 3 marks and wrong answer will deduct 1 mark.</p>
           <p>You can change your answer before clicking submit button.</p>
           <p>Once submitted ypu cannot change answer of any question.</p>
           <p>You will get your score immediately after you have submitted the test.</p>
        
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
