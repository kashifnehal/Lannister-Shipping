<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="LoginWithBootstrap.User" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <link href="StyleUser.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <%--<link rel="icon" href="gifs/ship-blue.png" type="image/icon type" />--%>
    <link href="https://fonts.googleapis.com/css?family=Lobster&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Arizonia&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Arizonia|Monoton&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Righteous&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Aclonica|Black+Ops+One|Bowlby+One+SC|Press+Start+2P&display=swap" rel="stylesheet" />
    <!-- styles -->
    <%--<link href="bootstrap.min.css" rel="stylesheet" />--%>
    <link href="demo.css" rel="stylesheet" />
    <link href="bootstrap-responsive.min.css" rel="stylesheet" />
    <!-- Add IntroJs styles -->
    <link href="introjs.css" rel="stylesheet" />

    <script type="text/javascript" src="Scripts/jquery-3.4.1.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/intro.js-mit@3.0.0/intro.min.js" />
    <%--<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/intro.js@2.9.3/minified/introjs.min.css" />--%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/into.js@2.9.3/minified/intro.min.js"></script>
    <script src="tour.js" type="text/javascript"></script>


    <script type="text/javascript">
        //jQuery(function () {
        //    jQuery('#tourId').click();
        //});
        function LoginValidate() {
            console.log("in validate")
            var txt1 = document.getElementById("LoginTextBox1");
            var txt2 = document.getElementById("LoginTextBox2");
            document.getElementById("loguserError").innerHTML = "";
            document.getElementById("logpassError").innerHTML = "";

            if (txt1.value == "") {
                document.getElementById("loguserError").innerHTML = "*Required";
                return false;
            }
            else if (txt2.value == "") {
                document.getElementById("logpassError").innerHTML = "*Required";
                return false;
            }
        }


        function RegValidate() {
            var txt1 = document.getElementById("RegisterTextBox3");
            var txt2 = document.getElementById("RegisterTextBox1");
            var txt3 = document.getElementById("RegisterTextBox2");
            document.getElementById("fullnameError").innerHTML = "";
            document.getElementById("usernameError").innerHTML = "";
            document.getElementById("passwordError").innerHTML = "";

            if (txt1.value == "") {
                document.getElementById("fullnameError").innerHTML = "*Required";
                return false;
            }
            else if (txt2.value == "") {
                document.getElementById("usernameError").innerHTML = "*Required";
                return false;
            }
            else if (txt3.value == "") {
                document.getElementById("passwordError").innerHTML = "*Required";
                return false;
            }
        }


        function loguser() {
            document.getElementById("loguserError").innerHTML = "*Required";
        }
        function logpass() {
            document.getElementById("logpassError").innerHTML = "*Required";
        }

        function userexists() {
            document.getElementById("usernameError").innerHTML = "*Username already Exists! Try another.";
        }

        function fullnameErrorF() {
            console.log("inside full name error")
            document.getElementById("fullnameError").innerHTML = "*Required";
        }
        function usernameErrorF() {
            document.getElementById("usernameError").innerHTML = "*Required";

        }
        function passwordErrorF() {
            console.log('in date error')
            document.getElementById("passwordError").innerHTML = "*Required";
        }
    </script>
</head>
<body>
    <a class="btn btn-large btn-success" id="tourId" style="display: none" data-dismiss="modal"
        href="javascript:void(0);"
        onclick="javascript:introJs().start();">Take a Ride</a>
    <form id="form2" runat="server">
        <div>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-7">
                        <div class="row">
                            <div class="col-5"></div>
                            <div class="col-5">
                                <%-- go to cssmatic/box-shadow for shadowing login --%>
                                <div class="realform" data-step="1" data-intro="Ajax controlled tabs with validation. Press done then Click on registration to register yourself." style="border: solid 0px blue; padding: 90px 60px; margin-top: 20vh; box-shadow: 24px -24px 16px -13px rgba(0,0,0,0.53); position: fixed;">
                                    <div class="row">
                                        <div class="col-12">
                                            <asp:Label ID="purl" runat="server" Text="" Style="color: white; display: none"></asp:Label>
                                            <asp:Label ID="Label4" runat="server" Text="" Style="color: white;"></asp:Label>
                                            <asp:Label ID="Label5" runat="server" Text="" Style="color: white;"></asp:Label>
                                            <asp:Label ID="Label1" runat="server" Text="" Style="color: white"></asp:Label>
                                            <asp:Label ID="Label2" runat="server" Text="" Style="color: white"></asp:Label>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProfileDB %>" SelectCommand="SELECT * FROM [profile]"></asp:SqlDataSource>
                                            <%--<asp:sqldatasource runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [login]"></asp:sqldatasource>--%>
                                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                                            </asp:ScriptManager>
                                            <cc1:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0">
                                                <cc1:TabPanel ID="TabPanel1" runat="server" HeaderText="Login" style="min-width:200px;min-height:200px">
                                                    <ContentTemplate>
                                                        <asp:Panel runat="server" DefaultButton="LoginButton1">
                                                            <%--<h3 style="font-family: 'Righteous', cursive; color: white;">Credentials:-</h3>--%>
                                                            <br />
                                                            <br />
                                                            <asp:Label ID="LoginLabel1" Visible="false" class="error" runat="server" Text=""></asp:Label>
                                                            <br />
                                                            <asp:TextBox ID="LoginTextBox1" class="form-control" placeholder="Username" runat="server" ClientIDMode="Static"></asp:TextBox>
                                                            <small id="loguserError" style="color: red"></small>
                                                            <br />
                                                            <br />
                                                            <asp:TextBox ID="LoginTextBox2" class="form-control" placeholder="password" TextMode="Password" runat="server" ClientIDMode="Static"></asp:TextBox>

                                                            <small id="logpassError" style="color: red"></small>
                                                            <br />
                                                            <br />
                                                            <br />

                                                            <asp:HyperLink ID="forgotpassword" runat="server" Text="Forgot Your Password?" Style="color: #092742; float: right;" NavigateUrl="#"></asp:HyperLink>
                                                            <br />
                                                            <br />

                                                            <asp:Button ID="LoginButton1" Text="Login" class="btn btn-secondary" runat="server" Style="float: right;" OnClientClick="javascript:return LoginValidate()" OnClick="Button1_Click" />
                                                            <asp:Label ID="success" class="bg-success" Visible="false" runat="server" Text=""></asp:Label>
                                                        </asp:Panel>

                                                    </ContentTemplate>
                                                </cc1:TabPanel>

                                                <cc1:TabPanel ID="TabPanel2" runat="server" HeaderText="Register">
                                                    <ContentTemplate>
                                                        <asp:Panel runat="server" DefaultButton="RegisterButton1">
                                                            <%--<h3 style="font-family: 'Righteous', cursive; color: white;">Add Credentials:-</h3>--%>
                                                            <br />
                                                            <br />
                                                            <br />
                                                            <asp:Label ID="RegisterLabel1" Visible="false" class="error" runat="server" Text=""></asp:Label>
                                                            <asp:TextBox ID="RegisterTextBox3" class="form-control" placeholder="Full Name" runat="server" autocomplete="off" ClientIDMode="Static"></asp:TextBox>
                                                            <small id="fullnameError" style="color: red"></small>
                                                            <br />
                                                            <asp:TextBox ID="RegisterTextBox1" class="form-control" placeholder="Usernane" runat="server" ClientIDMode="Static" autocomplete="off"></asp:TextBox>
                                                            <small id="usernameError" style="color: red"></small>
                                                            <br />
                                                            <asp:TextBox ID="RegisterTextBox2" class="form-control" placeholder="password" TextMode="Password" runat="server" autocomplete="off" ClientIDMode="Static"></asp:TextBox>
                                                            <small id="passwordError" style="color: red"></small>
                                                            <br />
                                                            <br />
                                                            <br />
                                                            <asp:Button ID="RegisterButton1" Text="Register" class="btn btn-secondary" runat="server" Style="float: right;" OnClientClick="javascript:return RegValidate()" OnClick="Button1_ClickRegister" />
                                                            <asp:Label ID="Label3" class="bg-success" Visible="false" runat="server" Text=""></asp:Label>
                                                        </asp:Panel>

                                                    </ContentTemplate>
                                                </cc1:TabPanel>
                                            </cc1:TabContainer>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-2"></div>
                        </div>
                    </div>
                    <div class="col-5">
                        <div class="row">
                            <div class="col-10" style="margin-top: 6vw">
                                <h2 style="align-content: center; color: white; font-family: 'Monoton', cursive; font-size: 5vw; padding-right: 80%;">I'm buying a stairway to heaven</h2>
                            </div>
                            <div class="col-2"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script type="text/javascript" src="intro.js"></script>
</body>
</html>
