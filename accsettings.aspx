<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="accsettings.aspx.cs" Inherits="Restaurant.accsettings" %>
<form runat="server">
<!DOCTYPE html>
<html lang="en">
  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Group G DB Lab Project</title>


    <link rel="stylesheet" type="text/css" href="login.css">
    </head>
    
    <body>

    <div class="logo-pic">
        <h1 style="color:white">Change Account Details:</h1>
    </div>

    <div class="login-page">
      <div class="form">
        <div class="login-form" runat="server" id="regform">

          <label runat="server" id="label1"></label>
            <input type="text" placeholder="new name" runat="server" id="regName"/>
          <label runat="server" id="label2"></label>
            <input type="password" placeholder="new password" runat="server" id="regPass"/>
          <label runat="server" id="label3"></label>
            <input type="text" placeholder="new phone" runat="server" id="regPhone"/>
          <label runat="server" id="label4"></label>
            <input type="text" placeholder="new address" runat="server" id="regAddr"/>

            <br /><br /><a class="button" href="#" runat="server" onserverclick="UpdateFields">Apply Changes</a><br /><br />
          <p class="message">Go back? <a href="startpage.aspx">Click</a></p>

        </div>
      </div>
    </div>
  </body>
</html>
</form>