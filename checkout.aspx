<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="Restaurant.WebForm2" %>

<form runat="server">
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400;500;600;700&display=swap" rel="stylesheet">

    <title>Group G DB Lab Project</title>

    <!-- Additional CSS Files -->
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.css">

    <link rel="stylesheet" href="assets/css/templatemo-klassy-cafe.css">

    <link rel="stylesheet" href="assets/css/owl-carousel.css">

    <link rel="stylesheet" href="assets/css/lightbox.css">

    </head>
    
    <body>
    
    <!-- ***** Preloader Start ***** -->
    <div id="preloader">
        <div class="jumper">
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>  
    <!-- ***** Preloader End ***** -->
    
    
    <!-- ***** Header Area Start ***** -->
 <header class="header-area header-sticky">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="main-nav">
                        <!-- ***** Logo Start ***** -->
                        <a href="startpage.aspx" class="logo">
                            <img src="assets/images/rha-logo1.png">
                        </a>
                        <!-- ***** Logo End ***** -->
                        <!-- ***** Menu Start ***** -->
                        <ul class="nav">
                            <li class="scroll-to-section"><a href="startpage.aspx">Home</a></li>
                            <li class="scroll-to-section"><a href="startpage.aspx#about">About</a></li>
                            <li class="scroll-to-section"><a href="Menu.aspx">Menu</a></li>
                            <li class="scroll-to-section"><a href="Reviews.aspx">Leave a Review</a></li> 
                            <li class="submenu" runat="server" id="adminPage">
                                <a href="admin.aspx">Admin</a>
                                <ul>
                                    <li><a href="login.aspx">Logout</a></li>
                                </ul>
                            </li>
                            <li class="submenu" runat="server" id="userBar">
                                <a href="javascript:;">Welcome: <%= Application["currUser"].ToString() %></a>
                                <ul>
                                    <li><a href="accsettings.aspx">Account Settings</a></li>
                                    <li><a href="login.aspx">Logout</a></li>
                                </ul>
                            </li>
                        
                        
                        </ul>        
                        <a class='menu-trigger'>
                            <span>Menu</span>
                        </a>
                        <!-- ***** Menu End ***** -->
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ***** Header Area End ***** -->
        <br><br><br><br><br><br>
          <div Align="center">
            <h2>Order Details</h2><br>
            <asp:Label ID="Label2" runat="server" Text="Tip:"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" BackColor="#FFA8A8" BorderColor="#FFA8A8" ToolTip="Integer Value Only" Width="210px" MaxLength="5">0</asp:TextBox>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Add Tip" Width="120px" />
            <br><br>
            <asp:Label ID="Label1" runat="server" Text="Payment Method:  "></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" Width="170px">  
                <asp:ListItem>CoD</asp:ListItem>
                <asp:ListItem>Online</asp:ListItem>
            </asp:DropDownList><br /><br />
            <asp:Label ID="Label3" runat="server" Text="Discount Code: "></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" BackColor="#FFA8A8" BorderColor="#FFA8A8" MaxLength="6" Width="160"></asp:TextBox>
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Add Discount" />
            <br><br>
            <h4>Order Total: </h4><h4 id="ordertotal" runat="server"> </h4>
        </div>
        <br>
        <div Align="center">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Place Order"/>
        </div>
        
        <!-- ***** Footer Start ***** -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-xs-12">
                    <div class="right-text-content">
                        <p>Group Members:</p>
                           <p>21L-5166, 21L-5426<br />21L-7607, 21L-7747</p>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="logo">
                        <a href="startpage.aspx"><img src="assets/images/rha-logo2.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-4 col-xs-12">
                    <div class="left-text-content">
                        <p>© Database Lab Final Project
                        
                        <br>Designed by: Group G</p>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- jQuery -->
    <script src="assets/js/jquery-2.1.0.min.js"></script>

    <!-- Bootstrap -->
    <script src="assets/js/popper.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

    <!-- Plugins -->
    <script src="assets/js/owl-carousel.js"></script>
    <script src="assets/js/accordions.js"></script>
    <script src="assets/js/datepicker.js"></script>
    <script src="assets/js/scrollreveal.min.js"></script>
    <script src="assets/js/waypoints.min.js"></script>
    <script src="assets/js/jquery.counterup.min.js"></script>
    <script src="assets/js/imgfix.min.js"></script> 
    <script src="assets/js/slick.js"></script> 
    <script src="assets/js/lightbox.js"></script> 
    <script src="assets/js/isotope.js"></script> 
    
    <!-- Global Init -->
    <script src="assets/js/custom.js"></script>
    <script>

        $(function() {
            var selectedClass = "";
            $("p").click(function(){
            selectedClass = $(this).attr("data-rel");
            $("#portfolio").fadeTo(50, 0.1);
                $("#portfolio div").not("."+selectedClass).fadeOut();
            setTimeout(function() {
              $("."+selectedClass).fadeIn();
              $("#portfolio").fadeTo(50, 1);
            }, 500);
                
            });
        });

    </script>
  </body>
</html>
</form>
