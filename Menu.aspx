<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Restaurant.Menu" %>

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
                            <li class="scroll-to-section"><a href="Menu.aspx" class="active">Menu</a></li>
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
    <br><br><br>
        <div class="menu-wrap">
            <img class="menu-bg" src="https://blog.clover.com/wp-content/uploads/2023/01/staff-cooking-in-restaurant-commercial-kitchen.jpg" alt="" />
   <div class="menu-content">
    <br /><br /><br />
            <asp:GridView ID="GridView1" runat="server" onrowcommand="GridView1_RowCommand" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="10" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" AllowSorting="True">
                                    <Columns>
                                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" >
                                        <ControlStyle BackColor="#FB5849" />
                                        <HeaderStyle BackColor="#F75748" Font-Size="25pt" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" >
                                        <ControlStyle BackColor="#FB5849" />
                                        <HeaderStyle BackColor="#F75748" Font-Size="25pt" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" >
                                        <HeaderStyle BackColor="#FB5849" Font-Size="25pt" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" DataFormatString="{0:c}" >
                                        <HeaderStyle BackColor="#FB5849" Font-Size="25pt" />
                                        <ItemStyle HorizontalAlign="Right" />
                                        </asp:BoundField>
                                        <asp:ButtonField ButtonType="Button" CommandName="addtocart" Text="Add to cart" runat="server">
                                        <ControlStyle BackColor="#FFBBBB" BorderStyle="Solid" />
                                        <HeaderStyle BackColor="#F95748" />
                                        </asp:ButtonField>
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
       <br /><br /><br />
       </div>
   </div>
         <br><br>
        <div id="Div1" runat="server" Align="Center"><h2 id ="cartname" runat="server">Cart Empty</h2>
        </div>
        <br>
        <asp:GridView ID="GridView2" runat="server" onrowcommand="GridView2_RowCommand" AutoGenerateColumns="False" CellPadding="10" ForeColor="#333333" GridLines="None" HorizontalAlign="Center">
                                    <Columns>
                                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Name" >
                                        <ControlStyle BackColor="#FB5849" />
                                        <HeaderStyle BackColor="#F75748" Font-Size="15pt" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Description" >
                                        <HeaderStyle BackColor="#FB5849" Font-Size="15pt" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="name" HeaderText="Name" SortExpression="Price" >
                                        <HeaderStyle BackColor="#FB5849" Font-Size="15pt" />
                                        <ItemStyle HorizontalAlign="Right" />
                                        </asp:BoundField>
                                        <asp:ButtonField ButtonType="Button" CommandName="removefromcart" Text="Remove item(s)" runat="server">
                                        <ControlStyle BackColor="#FFBBBB" BorderStyle="Solid" />
                                        <HeaderStyle BackColor="#F95748" />
                                        </asp:ButtonField>
                                    </Columns>
                                    <EditRowStyle BackColor="#2461BF" />
                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EFF3FB" />
                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                </asp:GridView>
        <div id="checkoutlink" runat="server" Align="center" visible="false">
                <a href="checkout.aspx" class="active">CheckOut</a>
       </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sqlCon1 %>" SelectCommand="SELECT [item_name] as &quot;Name&quot;, [category] as &quot;Category&quot;, [item_desc] as &quot;Description&quot;, [item_cost] as &quot;Price&quot; FROM [menu]"></asp:SqlDataSource>

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

        $(function () {
            var selectedClass = "";
            $("p").click(function () {
                selectedClass = $(this).attr("data-rel");
                $("#portfolio").fadeTo(50, 0.1);
                $("#portfolio div").not("." + selectedClass).fadeOut();
                setTimeout(function () {
                    $("." + selectedClass).fadeIn();
                    $("#portfolio").fadeTo(50, 1);
                }, 500);

            });
        });

    </script>
  </body>
</html>
</form>