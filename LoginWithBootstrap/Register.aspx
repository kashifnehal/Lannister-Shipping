<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="LoginWithBootstrap.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register Page</title>
    <link href="StyleUser.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="icon" href="gifs/ship-blue.png" type="image/icon type" />
    <link href="https://fonts.googleapis.com/css?family=Lobster&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Arizonia&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Arizonia|Monoton&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Righteous&display=swap" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
           <div class="row">
               <div class="col-7">
                   <div class="row">
                       <div class="col-5" ></div>
                       <div class="col-5" >
                           <%-- go to cssmatic/box-shadow for shadowing login --%>
                           <div class="realform" style="border:solid 0px red; padding:90px 60px;margin-top:25vh;box-shadow: 24px -24px 16px -13px rgba(0,0,0,0.53);">
                               <h3 style="font-family: 'Righteous', cursive; color:white;">Add Credentials:-</h3><br /><br />
                               <asp:Label ID="Label1" Visible="false" class="error" runat="server" Text=""></asp:Label>
                               <br />
                               <asp:TextBox ID="TextBox1" class="form-control"  placeholder="Usernane" runat="server"></asp:TextBox>
                               <br /><br />
                               <asp:TextBox ID="TextBox2" class="form-control" placeholder="password" TextMode="Password" runat="server"></asp:TextBox>
                               <br /><br />
                               <asp:Button ID="Button1" Text="Register" runat="server"  OnClick="Button1_Click"/>
                               <asp:Label ID="success" class="bg-success" Visible="false" runat="server" Text=""></asp:Label>
                           </div>
                       </div>
                       <div class="col-2" ></div>
                   </div>
               </div>
               <div class="col-5">
                   <div class="row">
                       <div class="col-10" style="margin-top:5vw">
                           <h2 style="align-content:center; color:white; font-family: 'Monoton', cursive; font-size:5vw; padding-right:80%;">I'm buying a stairway to heaven</h2>
                       </div>
                       <div class="col-2" ></div>
                   </div>
               </div>
           </div>
        </div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [login]"></asp:SqlDataSource>

    </form>
</body>
</html>
