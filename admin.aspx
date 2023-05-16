<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="Restaurant.admin" %>

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
                                <a href="admin.aspx" class="active">Admin</a>
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
        <br />
        <div Align="center">
            <h2>Menu</h2>
        </div><br />
        <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" DataKeyNames="item_id" DataSourceID="admin_menu" HorizontalAlign="Center" AllowSorting="true">
            <Columns>
                <asp:BoundField DataField="item_id" HeaderText="item_id" ReadOnly="True" SortExpression="item_id" />
                <asp:BoundField DataField="item_name" HeaderText="item_name" SortExpression="item_name" />
                <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                <asp:BoundField DataField="item_cost" HeaderText="item_cost" SortExpression="item_cost" />
                <asp:BoundField DataField="item_desc" HeaderText="item_desc" SortExpression="item_desc" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="ItemName" runat="server" Width="95px"></asp:TextBox>
        <asp:TextBox ID="ItemCat" runat="server" Width="80px"></asp:TextBox>
&nbsp;<asp:TextBox ID="ItemPrice" runat="server" Width="81px" Text="0"></asp:TextBox>
&nbsp;<asp:TextBox ID="ItemDesc" runat="server" Width="167px"></asp:TextBox>
        <asp:Button ID="InsertItem" runat="server" Text="Insert" Width="83px" OnClick="InsertMenuItem" />

        <br /><div Align="center">
            <h2>Customers>
        </div><br />
        <asp:GridView ID="GridView2" runat="server" AllowSorting="true" AutoGenerateColumns="False" DataKeyNames="cust_id" DataSourceID="admin_cust" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="cust_id" HeaderText="cust_id" ReadOnly="True" SortExpression="cust_id" />
                <asp:BoundField DataField="cust_name" HeaderText="cust_name" SortExpression="cust_name" />
                <asp:BoundField DataField="cust_phone" HeaderText="cust_phone" SortExpression="cust_phone" />
                <asp:BoundField DataField="cust_area_code" HeaderText="cust_area_code" SortExpression="cust_area_code" />
                <asp:BoundField DataField="cust_address" HeaderText="cust_address" SortExpression="cust_address" />
                <asp:BoundField DataField="cust_email" HeaderText="cust_email" SortExpression="cust_email" />
                <asp:BoundField DataField="points" HeaderText="points" SortExpression="points" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br /><div Align="center">
            <h2>Orders</h2>
        </div><br />

        <asp:GridView ID="GridView3" runat="server" AllowSorting="true" AutoGenerateColumns="False" DataKeyNames="order_id" DataSourceID="admin_orders" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="order_id" HeaderText="order_id" ReadOnly="True" SortExpression="order_id" />
                <asp:BoundField DataField="cust_id" HeaderText="cust_id" SortExpression="cust_id" />
                <asp:BoundField DataField="rider_id" HeaderText="rider_id" SortExpression="rider_id" />
                <asp:BoundField DataField="payment_mode" HeaderText="payment_mode" SortExpression="payment_mode" />
                <asp:BoundField DataField="order_cost" HeaderText="order_cost" SortExpression="order_cost" />
                <asp:BoundField DataField="discount_id" HeaderText="discount_id" SortExpression="discount_id" />
                <asp:BoundField DataField="order_total" HeaderText="order_total" SortExpression="order_total" />
                <asp:BoundField DataField="tip" HeaderText="tip" SortExpression="tip" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="admin_orders" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:sqlCon1 %>" DeleteCommand="DELETE FROM [orders] WHERE [order_id] = @original_order_id AND (([cust_id] = @original_cust_id) OR ([cust_id] IS NULL AND @original_cust_id IS NULL)) AND (([rider_id] = @original_rider_id) OR ([rider_id] IS NULL AND @original_rider_id IS NULL)) AND [payment_mode] = @original_payment_mode AND (([order_cost] = @original_order_cost) OR ([order_cost] IS NULL AND @original_order_cost IS NULL)) AND (([discount_id] = @original_discount_id) OR ([discount_id] IS NULL AND @original_discount_id IS NULL)) AND (([order_total] = @original_order_total) OR ([order_total] IS NULL AND @original_order_total IS NULL)) AND (([tip] = @original_tip) OR ([tip] IS NULL AND @original_tip IS NULL))" InsertCommand="INSERT INTO [orders] ([order_id], [cust_id], [rider_id], [payment_mode], [order_cost], [discount_id], [order_total], [tip]) VALUES (@order_id, @cust_id, @rider_id, @payment_mode, @order_cost, @discount_id, @order_total, @tip)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [orders]" UpdateCommand="UPDATE [orders] SET [cust_id] = @cust_id, [rider_id] = @rider_id, [payment_mode] = @payment_mode, [order_cost] = @order_cost, [discount_id] = @discount_id, [order_total] = @order_total, [tip] = @tip WHERE [order_id] = @original_order_id AND (([cust_id] = @original_cust_id) OR ([cust_id] IS NULL AND @original_cust_id IS NULL)) AND (([rider_id] = @original_rider_id) OR ([rider_id] IS NULL AND @original_rider_id IS NULL)) AND [payment_mode] = @original_payment_mode AND (([order_cost] = @original_order_cost) OR ([order_cost] IS NULL AND @original_order_cost IS NULL)) AND (([discount_id] = @original_discount_id) OR ([discount_id] IS NULL AND @original_discount_id IS NULL)) AND (([order_total] = @original_order_total) OR ([order_total] IS NULL AND @original_order_total IS NULL)) AND (([tip] = @original_tip) OR ([tip] IS NULL AND @original_tip IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_order_id" Type="String" />
                <asp:Parameter Name="original_cust_id" Type="String" />
                <asp:Parameter Name="original_rider_id" Type="String" />
                <asp:Parameter Name="original_payment_mode" Type="String" />
                <asp:Parameter Name="original_order_cost" Type="Double" />
                <asp:Parameter Name="original_discount_id" Type="String" />
                <asp:Parameter Name="original_order_total" Type="Double" />
                <asp:Parameter Name="original_tip" Type="Double" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="order_id" Type="String" />
                <asp:Parameter Name="cust_id" Type="String" />
                <asp:Parameter Name="rider_id" Type="String" />
                <asp:Parameter Name="payment_mode" Type="String" />
                <asp:Parameter Name="order_cost" Type="Double" />
                <asp:Parameter Name="discount_id" Type="String" />
                <asp:Parameter Name="order_total" Type="Double" />
                <asp:Parameter Name="tip" Type="Double" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="cust_id" Type="String" />
                <asp:Parameter Name="rider_id" Type="String" />
                <asp:Parameter Name="payment_mode" Type="String" />
                <asp:Parameter Name="order_cost" Type="Double" />
                <asp:Parameter Name="discount_id" Type="String" />
                <asp:Parameter Name="order_total" Type="Double" />
                <asp:Parameter Name="tip" Type="Double" />
                <asp:Parameter Name="original_order_id" Type="String" />
                <asp:Parameter Name="original_cust_id" Type="String" />
                <asp:Parameter Name="original_rider_id" Type="String" />
                <asp:Parameter Name="original_payment_mode" Type="String" />
                <asp:Parameter Name="original_order_cost" Type="Double" />
                <asp:Parameter Name="original_discount_id" Type="String" />
                <asp:Parameter Name="original_order_total" Type="Double" />
                <asp:Parameter Name="original_tip" Type="Double" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <br /><div Align="center">
            <h2>Discount Codes</h2>
        </div><br />

        <asp:GridView ID="GridView5" runat="server" AllowSorting="true" AutoGenerateColumns="False" DataKeyNames="discount_id" DataSourceID="admin_discount" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="discount_id" HeaderText="discount_id" ReadOnly="True" SortExpression="discount_id" />
                <asp:BoundField DataField="discount_value" HeaderText="discount_value" SortExpression="discount_value" />
                <asp:BoundField DataField="points_required" HeaderText="points_required" SortExpression="points_required" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="admin_discount" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:sqlCon1 %>" DeleteCommand="DELETE FROM [discount] WHERE [discount_id] = @original_discount_id AND (([discount_value] = @original_discount_value) OR ([discount_value] IS NULL AND @original_discount_value IS NULL)) AND (([points_required] = @original_points_required) OR ([points_required] IS NULL AND @original_points_required IS NULL))" InsertCommand="INSERT INTO [discount] ([discount_id], [discount_value], [points_required]) VALUES (@discount_id, @discount_value, @points_required)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [discount]" UpdateCommand="UPDATE [discount] SET [discount_value] = @discount_value, [points_required] = @points_required WHERE [discount_id] = @original_discount_id AND (([discount_value] = @original_discount_value) OR ([discount_value] IS NULL AND @original_discount_value IS NULL)) AND (([points_required] = @original_points_required) OR ([points_required] IS NULL AND @original_points_required IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_discount_id" Type="String" />
                <asp:Parameter Name="original_discount_value" Type="Double" />
                <asp:Parameter Name="original_points_required" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="discount_id" Type="String" />
                <asp:Parameter Name="discount_value" Type="Double" />
                <asp:Parameter Name="points_required" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="discount_value" Type="Double" />
                <asp:Parameter Name="points_required" Type="Int32" />
                <asp:Parameter Name="original_discount_id" Type="String" />
                <asp:Parameter Name="original_discount_value" Type="Double" />
                <asp:Parameter Name="original_points_required" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <br /><div Align="center">
            <h2>Reviews</h2>
        </div><br />

        <asp:GridView ID="GridView4" runat="server" AllowSorting="true" AutoGenerateColumns="False" DataKeyNames="review_id" DataSourceID="admin_reviews" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="review_id" HeaderText="review_id" ReadOnly="True" SortExpression="review_id" />
                <asp:BoundField DataField="cust_id" HeaderText="cust_id" SortExpression="cust_id" />
                <asp:BoundField DataField="rating" HeaderText="rating" SortExpression="rating" />
                <asp:BoundField DataField="review_desc" HeaderText="review_desc" SortExpression="review_desc" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="admin_reviews" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:sqlCon1 %>" DeleteCommand="DELETE FROM [reviews] WHERE [review_id] = @original_review_id AND (([cust_id] = @original_cust_id) OR ([cust_id] IS NULL AND @original_cust_id IS NULL)) AND [rating] = @original_rating AND (([review_desc] = @original_review_desc) OR ([review_desc] IS NULL AND @original_review_desc IS NULL))" InsertCommand="INSERT INTO [reviews] ([review_id], [cust_id], [rating], [review_desc]) VALUES (@review_id, @cust_id, @rating, @review_desc)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [reviews]" UpdateCommand="UPDATE [reviews] SET [cust_id] = @cust_id, [rating] = @rating, [review_desc] = @review_desc WHERE [review_id] = @original_review_id AND (([cust_id] = @original_cust_id) OR ([cust_id] IS NULL AND @original_cust_id IS NULL)) AND [rating] = @original_rating AND (([review_desc] = @original_review_desc) OR ([review_desc] IS NULL AND @original_review_desc IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_review_id" Type="String" />
                <asp:Parameter Name="original_cust_id" Type="String" />
                <asp:Parameter Name="original_rating" Type="Int32" />
                <asp:Parameter Name="original_review_desc" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="review_id" Type="String" />
                <asp:Parameter Name="cust_id" Type="String" />
                <asp:Parameter Name="rating" Type="Int32" />
                <asp:Parameter Name="review_desc" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="cust_id" Type="String" />
                <asp:Parameter Name="rating" Type="Int32" />
                <asp:Parameter Name="review_desc" Type="String" />
                <asp:Parameter Name="original_review_id" Type="String" />
                <asp:Parameter Name="original_cust_id" Type="String" />
                <asp:Parameter Name="original_rating" Type="Int32" />
                <asp:Parameter Name="original_review_desc" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <br /><br />
        <asp:SqlDataSource ID="admin_cust" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:sqlCon1 %>" DeleteCommand="DELETE FROM [customer] WHERE [cust_id] = @original_cust_id AND [cust_name] = @original_cust_name AND (([cust_phone] = @original_cust_phone) OR ([cust_phone] IS NULL AND @original_cust_phone IS NULL)) AND [cust_area_code] = @original_cust_area_code AND [cust_address] = @original_cust_address AND (([cust_email] = @original_cust_email) OR ([cust_email] IS NULL AND @original_cust_email IS NULL)) AND (([points] = @original_points) OR ([points] IS NULL AND @original_points IS NULL))" InsertCommand="INSERT INTO [customer] ([cust_id], [cust_name], [cust_phone], [cust_area_code], [cust_address], [cust_email], [points]) VALUES (@cust_id, @cust_name, @cust_phone, @cust_area_code, @cust_address, @cust_email, @points)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [customer]" UpdateCommand="UPDATE [customer] SET [cust_name] = @cust_name, [cust_phone] = @cust_phone, [cust_area_code] = @cust_area_code, [cust_address] = @cust_address, [cust_email] = @cust_email, [points] = @points WHERE [cust_id] = @original_cust_id AND [cust_name] = @original_cust_name AND (([cust_phone] = @original_cust_phone) OR ([cust_phone] IS NULL AND @original_cust_phone IS NULL)) AND [cust_area_code] = @original_cust_area_code AND [cust_address] = @original_cust_address AND (([cust_email] = @original_cust_email) OR ([cust_email] IS NULL AND @original_cust_email IS NULL)) AND (([points] = @original_points) OR ([points] IS NULL AND @original_points IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_cust_id" Type="String" />
                <asp:Parameter Name="original_cust_name" Type="String" />
                <asp:Parameter Name="original_cust_phone" Type="String" />
                <asp:Parameter Name="original_cust_area_code" Type="String" />
                <asp:Parameter Name="original_cust_address" Type="String" />
                <asp:Parameter Name="original_cust_email" Type="String" />
                <asp:Parameter Name="original_points" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="cust_id" Type="String" />
                <asp:Parameter Name="cust_name" Type="String" />
                <asp:Parameter Name="cust_phone" Type="String" />
                <asp:Parameter Name="cust_area_code" Type="String" />
                <asp:Parameter Name="cust_address" Type="String" />
                <asp:Parameter Name="cust_email" Type="String" />
                <asp:Parameter Name="points" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="cust_name" Type="String" />
                <asp:Parameter Name="cust_phone" Type="String" />
                <asp:Parameter Name="cust_area_code" Type="String" />
                <asp:Parameter Name="cust_address" Type="String" />
                <asp:Parameter Name="cust_email" Type="String" />
                <asp:Parameter Name="points" Type="Int32" />
                <asp:Parameter Name="original_cust_id" Type="String" />
                <asp:Parameter Name="original_cust_name" Type="String" />
                <asp:Parameter Name="original_cust_phone" Type="String" />
                <asp:Parameter Name="original_cust_area_code" Type="String" />
                <asp:Parameter Name="original_cust_address" Type="String" />
                <asp:Parameter Name="original_cust_email" Type="String" />
                <asp:Parameter Name="original_points" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="admin_menu" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:sqlCon1 %>" DeleteCommand="DELETE FROM [menu] WHERE [item_id] = @original_item_id AND [item_name] = @original_item_name AND (([category] = @original_category) OR ([category] IS NULL AND @original_category IS NULL)) AND (([item_cost] = @original_item_cost) OR ([item_cost] IS NULL AND @original_item_cost IS NULL)) AND (([item_desc] = @original_item_desc) OR ([item_desc] IS NULL AND @original_item_desc IS NULL))" InsertCommand="INSERT INTO [menu] ([item_id], [item_name], [category], [item_cost], [item_desc]) VALUES (@item_id, @item_name, @category, @item_cost, @item_desc)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [menu]" UpdateCommand="UPDATE [menu] SET [item_name] = @item_name, [category] = @category, [item_cost] = @item_cost, [item_desc] = @item_desc WHERE [item_id] = @original_item_id AND [item_name] = @original_item_name AND (([category] = @original_category) OR ([category] IS NULL AND @original_category IS NULL)) AND (([item_cost] = @original_item_cost) OR ([item_cost] IS NULL AND @original_item_cost IS NULL)) AND (([item_desc] = @original_item_desc) OR ([item_desc] IS NULL AND @original_item_desc IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_item_id" Type="String" />
                <asp:Parameter Name="original_item_name" Type="String" />
                <asp:Parameter Name="original_category" Type="String" />
                <asp:Parameter Name="original_item_cost" Type="Double" />
                <asp:Parameter Name="original_item_desc" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="item_id" Type="String" />
                <asp:Parameter Name="item_name" Type="String" />
                <asp:Parameter Name="category" Type="String" />
                <asp:Parameter Name="item_cost" Type="Double" />
                <asp:Parameter Name="item_desc" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="item_name" Type="String" />
                <asp:Parameter Name="category" Type="String" />
                <asp:Parameter Name="item_cost" Type="Double" />
                <asp:Parameter Name="item_desc" Type="String" />
                <asp:Parameter Name="original_item_id" Type="String" />
                <asp:Parameter Name="original_item_name" Type="String" />
                <asp:Parameter Name="original_category" Type="String" />
                <asp:Parameter Name="original_item_cost" Type="Double" />
                <asp:Parameter Name="original_item_desc" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
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