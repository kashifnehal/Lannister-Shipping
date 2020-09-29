<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="LoginWithBootstrap.Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Profile
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="icon" href="gifs/ship-blue.png" type="image/icon type" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="StyleIndex.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Candal&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Press+Start+2P&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Nosifer&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Sigmar+One&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Black+Ops+One&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Bungee+Inline&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Poller+One&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Gravitas+One|Nova+Square|Poller+One&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Abril+Fatface|Lobster|Russo+One|Zhi+Mang+Xing&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Quicksand|Rock+Salt&display=swap" rel="stylesheet" />

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
    <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
    <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
    <link rel="icon" href="gifs/ship-blue.png" type="image/icon type" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />

    <%--font-family: 'Quicksand', sans-serif;
font-family: 'Rock Salt', cursive;--%>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            width: 100%;
            -ms-flex: 0 0 25%;
            flex: 0 0 25%;
            max-width: 25%;
            z-index: 1;
            height: 100vh;
            top: 33%;
            left: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }

        .txtcomment {
            background-color: transparent;
            color: #eeeeee;
            outline: none;
            outline-style: none;
            border-top: none;
            /*float: left;*/
            border-left: none;
            border-right: none;
            border-bottom: solid #eeeeee 1px;
            padding: 3px 10px;
        }
    </style>
    <script type="text/javascript">
        jQuery(function () {
            jQuery('#tourId').click();
        });
    </script>

    </asp:Content>
    <asp:Content ID="Content3" ContentPlaceHolderID="cphmain" runat="server">
        <a class="btn btn-large btn-success" id="tourId" style="display:none" data-dismiss="modal"
        href="javascript:void(0);"
        onclick="javascript:introJs().start();">Take a Ride</a>
        <section class="heading" style="background-color: #2e2e2e; height: 30vh; padding-top: 15vh; z-index: 1;">
            <div class="container-lg">
                <div class="row" style="font-family: 'Poller One', cursive; color: white; font-size: 3.5rem;">
                    <div class="col-12">
                        Profile<br />
                        <br />
                    </div>
                </div>
            </div>
        </section>
        <section style="padding-top: 8vh; background-color: #2e2e2e; height: 120vh; color: white;" >
            <asp:Label ID="getuserpro" runat="server" Style="display: none"><b>guest</b></asp:Label>
            <div class="container">
                <div style="color: black;" data-step="1" data-intro="Here is Your profile detail.Click on Edit profile or update details. Press SKIP">

                    <%--<asp:Button ID="btngetdatafromdb" runat="server" Text="Get Data From Database" />--%>
                    <asp:GridView ID="gvlocalprofile" runat="server" AllowSorting="True" AutoGenerateColumns="False" Style="width: 100%;" GridLines="None" ShowHeader="false" DataKeyNames="profileid" OnRowCancelingEdit="gvlocalprofile_RowCancelingEdit" OnRowDeleting="gvlocalprofile_RowDeleting" OnRowEditing="gvlocalprofile_RowEditing" OnRowUpdating="gvlocalprofile_RowUpdating">
                        <columns>
                        <asp:TemplateField ShowHeader="False">
                            <EditItemTemplate>


                                <div class="container" >
                                    <div class="row">
                                        <div class="col-2"></div>
                                        <div class="col-10">
                                            <div class="row" style="padding-top: 60px; padding-bottom: 60px; background-color: black; color: white; border: solid 5px #1b1a1a; border-radius: 15px">
                                                <div class="col-3">
                                                    <div class="row">
                                                        <div class="col-2"></div>
                                                        <div class="col-8" style="text-align: center">
                                                            <asp:Image ID="img_user" CssClass="rounded-circle" runat="server" ImageUrl='<%#"~/pics/" + checkPic(Eval("picture")) %>'
                                                                Height="180px" Width="180px" />
                                                            <br />
                                                            <asp:FileUpload ID="FileUpload1" Style="color: black;" runat="server" /><br />
                                                            <br />
                                                            <br />
                                                            <br />
                                                            <%--<asp:Label ID="Label11" runat="server" Text="bio: "></asp:Label>--%>
                                                            <asp:TextBox ID="TextBox3" class="txtcomment" placeholder="bio" autocomplete="off" runat="server" Text='<%# Bind("bio") %>'></asp:TextBox><br />
                                                            <br />
                                                        </div>
                                                        <div class="col-2"></div>
                                                    </div>
                                                </div>
                                                <div class="col-9" style="font-size: large; font-family: 'Fredoka One', cursive;">
                                                    <div class="row">
                                                        <div class="col-1"></div>
                                                        <div class="col-1" style="border-left: solid 1px white;"></div>
                                                        <div class="col-10">

                                                            <div class="row" style="margin-top: -25px">
                                                                <div class="col-2">
                                                                    <asp:Label ID="name" runat="server" Style="font-family: 'Anton', sans-serif;"><b>NAME:</b></asp:Label>
                                                                </div>
                                                                <div class="col-10" style="text-align: left">
                                                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("name") %>' autocomplete="off" class="txtcomment"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <br />
                                                            <br />

                                                            <div class="row" style="margin-top: -25px">
                                                                <div class="col-2">
                                                                    <asp:Label ID="Label12" runat="server" Style="font-family: 'Anton', sans-serif;"><b>MAIL: </b></asp:Label>
                                                                </div>
                                                                <div class="col-10" style="text-align: left">
                                                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("mail") %>' autocomplete="off" class="txtcomment"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <br />
                                                            <br />

                                                            <div class="row" style="margin-top: -25px">
                                                                <div class="col-2">
                                                                    <asp:Label ID="Label13" runat="server" Style="font-family: 'Anton', sans-serif;"><b>CONTACT: </b></asp:Label>
                                                                </div>
                                                                <div class="col-10" style="text-align: left">
                                                                    <asp:TextBox type="number" ID="TextBox5" runat="server" Text='<%# Bind("phone") %>' autocomplete="off" class="txtcomment"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <br />
                                                            <br />

                                                            <div class="row" style="margin-top: -25px">
                                                                <div class="col-2">
                                                                    <asp:Label ID="Label14" runat="server" Style="font-family: 'Anton', sans-serif;"><b>CITY: </b></asp:Label>
                                                                </div>
                                                                <div class="col-10" style="text-align: left">
                                                                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("city") %>' autocomplete="off" class="txtcomment"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <br />
                                                            <br />

                                                            <div class="row" style="margin-top: -25px">
                                                                <div class="col-2">
                                                                    <asp:Label ID="Label15" runat="server" Style="font-family: 'Anton', sans-serif;"><b>GENDER: </b></asp:Label>
                                                                </div>
                                                                <div class="col-10" style="text-align: left">
                                                                    <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="true" class="txtcomment">
                                                                        <asp:ListItem>Male</asp:ListItem>
                                                                        <asp:ListItem>Female</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </div>
                                                            </div>
                                                            <br />
                                                            <br />

                                                            <div class="row" style="margin-top: -25px">
                                                                <div class="col-2">
                                                                    <asp:Label ID="Label16" runat="server" Style="font-family: 'Anton', sans-serif;"><b>D.O.B: </b></asp:Label>
                                                                </div>
                                                                <div class="col-10" style="text-align: left">
                                                                    <asp:TextBox ID="TextBox1" placeholder="dd/mm/yyyy" runat="server" autocomplete="off" Text='<%# Bind("birth") %>' class="txtcomment" Style="width: 150px"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <script>
                                                                var today, datepicker;
                                                                today = new Date(new Date().getFullYear(), new Date().getMonth(), new Date().getDate());
                                                                datepicker = $("[id*=TextBox1]").datepicker({
                                                                    maxDate: today
                                                                });
                                                            </script>
    <br />
    <br />

    <div style="text-align: left; margin-top: 40px">
        <asp:LinkButton ID="LinkButton1" Style="padding: 5px 30px 5px 30px; border: solid 1px white; border-radius: 5px;" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton><br />
    </div>
    <div style="text-align: right">
        <asp:LinkButton ID="LinkButton2" Style="padding: 5px 30px 5px 30px; border: solid 1px white; border-radius: 5px" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
    </div>
    </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </EditItemTemplate>

                            <itemtemplate>
                                <div class="container">
                                    <div class="row">
                                        <div class="col-2"></div>
                                        <div class="col-10">
                                            <div class="row" style="padding-top: 60px; padding-bottom: 60px; background-color: black; color: white; border: solid 5px #1b1a1a; border-radius: 15px">
                                                <div class="col-3">
                                                    <div class="row">
                                                        <div class="col-2"></div>
                                                        <div class="col-8">
                                                            <asp:Image ID="Image2" CssClass="rounded-circle" runat="server" ImageUrl='<%#"~/pics/" + checkPic(Eval("picture")) %>'
                                                                Height="180px" Width="180px" />
                                                        </div>
                                                        <div class="col-2"></div>
                                                    </div>
                                                    <br />
                                                    <br />
                                                    <div class="row">
                                                        <div class="col-2"></div>
                                                        <div class="col-10">
                                                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("bio") %>'></asp:Label><br />
                                                        </div>
                                                    </div>
                                                    <br />
                                                </div>
                                                <div class="col-9" style="font-size: large;">
                                                    <div class="row">
                                                        <div class="col-1"></div>
                                                        <div class="col-1" style="border-left: solid 1px white;"></div>
                                                        <div class="col-10">
                                                            <div class="row">
                                                                <div class="col-2">
                                                                    <asp:Label ID="name" runat="server" Style="font-family: 'Anton', sans-serif;"><b>NAME:</b></asp:Label>
                                                                </div>
                                                                <div class="col-10" style="text-align: left">
                                                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                                                                </div>
                                                            </div>
                                                            <br />
                                                            <br />

                                                            <div class="row" style="margin-top: -25px">
                                                                <div class="col-2">
                                                                    <asp:Label ID="Label12" runat="server" Style="font-family: 'Anton', sans-serif;"><b>MAIL: </b></asp:Label>
                                                                </div>
                                                                <div class="col-10" style="text-align: left">
                                                                    <asp:Label ID="Label6" runat="server" Text='<%# checkNull(Eval("mail")) %>'></asp:Label>
                                                                </div>
                                                            </div>
                                                            <br />
                                                            <br />

                                                            <div class="row" style="margin-top: -25px">
                                                                <div class="col-2">
                                                                    <asp:Label ID="Label13" runat="server" Style="font-family: 'Anton', sans-serif;"><b>CONTACT: </b></asp:Label>
                                                                </div>
                                                                <div class="col-10" style="text-align: left">
                                                                    <asp:Label ID="Label7" runat="server" Text='<%# checkNull(Eval("phone")) %>'></asp:Label>
                                                                </div>
                                                            </div>
                                                            <br />
                                                            <br />

                                                            <div class="row" style="margin-top: -25px">
                                                                <div class="col-2">
                                                                    <asp:Label ID="Label14" runat="server" Style="font-family: 'Anton', sans-serif;"><b>CITY: </b></asp:Label>
                                                                </div>
                                                                <div class="col-10" style="text-align: left">
                                                                    <asp:Label ID="Label8" runat="server" Text='<%# checkNull(Eval("city")) %>'></asp:Label>
                                                                </div>
                                                            </div>
                                                            <br />
                                                            <br />

                                                            <div class="row" style="margin-top: -25px">
                                                                <div class="col-2">
                                                                    <asp:Label ID="Label15" runat="server" Style="font-family: 'Anton', sans-serif;"><b>GENDER: </b></asp:Label>
                                                                </div>
                                                                <div class="col-10" style="text-align: left">
                                                                    <asp:Label ID="Label1" runat="server"  Text='<%# checkNull(Eval("gender")) %>'></asp:Label>
                                                                </div>
                                                            </div>
                                                            <br />
                                                            <br />

                                                            <div class="row" style="margin-top: -25px">
                                                                <div class="col-2">
                                                                    <asp:Label ID="Label16" runat="server" Style="font-family: 'Anton', sans-serif;"><b>D.O.B: </b></asp:Label>
                                                                </div>
                                                                <div class="col-10" style="text-align: left">
                                                                    <asp:Label ID="Label2" runat="server"  Text='<%# checkDate(Eval("birth")) %>'></asp:Label><br />
                                                                </div>
                                                            </div>
                                                            <br />
                                                            <small id="Label3" runat="server" style="color: white">(**I have added Null because i had less data and it will look Uncool otherwise.)</small>
                                                            <small id="Small1" runat="server" style="color: white">(Try Editing)</small>
                                                            <div style="text-align: left; margin-top: 40px">
                                                                <asp:LinkButton ID="LinkButton1" Style="padding: 5px 30px 5px 30px; border: solid 1px white; border-radius: 5px;" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit Profile"></asp:LinkButton>
                                                                <%--<asp:Button ID="btnupdatedb" runat="server" Text="Update Database Table" OnClick="btnupdatedb_Click1" />--%>
                                                            </div>
                                                            <div style="text-align: right">
                                                                <asp:LinkButton ID="LinkButton2" Style="padding: 5px 30px 5px 30px; border: solid 1px white; border-radius: 5px" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </itemtemplate>
    </asp:TemplateField>
                    </Columns>
                </asp:GridView>

                <%--<asp:Label ID="lblmessage" runat="server" Text="Label"></asp:Label>--%>
            </div>
        </div>
    </section>

</asp:Content>
