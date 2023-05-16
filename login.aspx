<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Restaurant.login" %>
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
        <img src="assets/images/rha-logo.png" />
    </div>

    <div class="login-page">
      <div class="form">
        <div class="register-form" runat="server" id="regform">
          <input type="text" placeholder="name" runat="server" id="regName"/>
          <input type="password" placeholder="password" runat="server" id="regPass"/>
          <input type="text" placeholder="phone number" runat="server" id="regPhone"/>
          <input type="text" placeholder="email address" runat="server" id="regEmail"/>
          <input type="text" placeholder="house address" runat="server" id="regAddr"/>
          <input type="text" placeholder="area code" runat="server" id="regCode"/>

            <br /><br /><a class="button" href="#" runat="server" onserverclick="EnterStartPage2">create</a><br /><br />
          <p class="message">Already registered? <a href="#" runat="server" onServerClick="ToggleLogins2">Sign in</a></p>

        </div>
        <div class="login-form" runat="server" id="logform">
          <input type="text" placeholder="email address" runat="server" id="loginMail"/>
          <input type="password" placeholder="password" runat="server" id="loginPass"/>
         <br /><br /> <a class="button" href=# runat="server" onserverclick="EnterStartPage">login</a><br /><br />
          <p class="message">Not registered? 
              <a href="#" runat="server" onServerClick="ToggleLogins">Create an account</a></p>
        </div>
      </div>
    </div>
  </body>
</html>
</form>