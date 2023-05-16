<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reviews.aspx.cs" Inherits="Restaurant.Reviews" %>

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

      <style>
    .orange-button {
        background-color: orange;
        color: white;
        /* Add any other desired styles */
    }
</style>

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
                            <li class="scroll-to-section"><a href="Reviews.aspx" class="active">Leave a Review</a></li> 
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

        <!-- ***** Review area start ***** -->

         <section class="section" id="reservation">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 align-self-center">
                    <div class="left-text-content">
                        <div class="section-heading">
                            <h6>Give a Review</h6>
                            <h2>Here you can give a review if you previously visited our cafe</h2>
                        </div>
                        <p>We hope you enjoyed your dining experience at RHF Cafe! If you had a great time, we would love for you to share your thoughts and leave a review on our website. Your feedback helps us to continue providing the best possible service and dining experience to our valued customers. Thank you for choosing RHF Cafe and we can't wait to hear about your experience!</p>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="phone">
                                    <i class="fa fa-phone"></i>
                                    <h4>Phone Numbers</h4>
                                    <span><a href="#">0308-4116101</a><br><a href="#">0315-7733809</a></span>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="message">
                                    <i class="fa fa-envelope"></i>
                                    <h4>Emails</h4>
                                    <span><a href="#">l217747@lhr.nu.edu.pk</a><br><a href="#">l215166@lhr.nu.edu.pk</a></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="contact-form">
                        <form id="contact" action="" method="post">
                          <div class="row">
                            <div class="col-lg-12">
                                <h4>Enter Review:</h4>
                            </div>
                            <div class="col-lg-6 col-sm-12">
                              <fieldset>
                                <input name="name" type="text" id="name" placeholder="Your Name*" required="">
                              </fieldset>
                            </div>
                            <div class="col-lg-6 col-sm-12">
                              <fieldset>
                                <select value="rating" name="rating" runat="server" id="rating">
                                    <option value="rating">Rating</option>
                                    <option name="1" id="first">1</option>
                                    <option name="2" id="second">2 </option>
                                    <option name="3" id="third">3 </option>
                                    <option name="4" id="fourth">4 </option>
                                    <option name="5" id="fifth">5 </option>
                                </select>
                              </fieldset>
                            </div>
                            <div class="col-lg-12">
                              <fieldset>
                                <textarea name="message" rows="6" runat="server" id="message" placeholder="Message" required=""></textarea>
                              </fieldset>
                            </div>
                            <div class="col-lg-12">
                              <fieldset>
                                <asp:Button ID="Button3" runat="server" OnClick="FirstFunction" Text="Click here to insert review"  CssClass="orange-button" />
                              </fieldset>
                            </div>
                          </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
   
    <!-- ***** Review area ends ***** -->
<br /><br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource5" CellPadding="10" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" AllowSorting="True">
                                    <Columns>
                                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" >
                                        <ControlStyle BackColor="#FB5849" />
                                        <HeaderStyle BackColor="#F75748" Font-Size="25pt" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Rating" HeaderText="Rating" SortExpression="Rating" >
                                        <HeaderStyle BackColor="#FB5849" Font-Size="25pt" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" >
                                        <HeaderStyle BackColor="#FB5849" Font-Size="25pt" />
                                        <ItemStyle HorizontalAlign="Right" />
                                        </asp:BoundField>
                                    </Columns>
                                    <EditRowStyle BackColor="#2461BF" />
                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#f78277" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EFF3FB" />
                                    <SelectedRowStyle BackColor="#f78277" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                    <SortedAscendingHeaderStyle BackColor="#f78277" />
                                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                    <SortedDescendingHeaderStyle BackColor="#9c5049" />
                                </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:sqlCon1 %>" SelectCommand="SELECT [cust_name] as &quot;Name&quot;, [rating] as &quot;Rating&quot;, [review_desc] as &quot;Message&quot; FROM [reviews] R JOIN [customer] C ON R.cust_id = C.cust_id"></asp:SqlDataSource>

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
