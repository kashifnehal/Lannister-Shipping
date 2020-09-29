<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="UserRegister.aspx.cs" Inherits="LoginWithBootstrap.UserRegister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">Register Page
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="StyleUser.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="icon" href="gifs/ship-blue.png" type="image/icon type" />
    <link href="https://fonts.googleapis.com/css?family=Lobster&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Arizonia&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Arizonia|Monoton&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Righteous&display=swap" rel="stylesheet" />
</asp:Content>



<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-12 register-form">
        <%--<h3 style="font-family: 'Righteous', cursive; color:white;">Add Credentials:-</h3>--%>
        <br /><br />
        <asp:Label ID="Label1" Visible="false" class="error" runat="server" Text=""></asp:Label>
        <asp:TextBox ID="TextBox3" class="form-control"   placeholder="Full Name" runat="server"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox1" class="form-control"   placeholder="Usernane" runat="server"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox2" class="form-control" placeholder="password" TextMode="Password" runat="server"></asp:TextBox>
        <br /><br />
        <asp:Button ID="Button1" Text="Register" class="btn btn-secondary" runat="server" style="float:right;" OnClick="Button1_Click"/>
        <asp:Label ID="success" class="bg-success" Visible="false" runat="server" Text=""></asp:Label>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [login]"></asp:SqlDataSource>
</asp:Content>
