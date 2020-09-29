<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="Comments.aspx.cs" Inherits="LoginWithBootstrap.Comments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Comments
</asp:Content>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="icon" href="gifs/ship-blue.png" type="image/icon type" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="StyleComments.css" rel="stylesheet" />
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
    <script type="text/javascript">
        jQuery(function () {
            jQuery('#tourId').click();
        });
    </script>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cphmain" runat="server">
    <a class="btn btn-large btn-success" id="tourId" style="display: none" data-dismiss="modal"
        href="javascript:void(0);"
        onclick="javascript:introJs().start();">Take a Ride</a>
    <section class="CommentsS1" style="height: 180vh; background-color: #2e2e2e;">
        <div class="container" style="margin: 0 1em 0 7em; padding-top: 15vh;">
            <div class="row" style="font-family: 'Poller One', cursive; color: white; font-size: 3.5rem;">
                <div class="col-12">
                    User Reviews<br />
                    <br />
                </div>
            </div>

            <div class="row">
                <div class="col-1"></div>
                <div class="col-9">
                    <asp:Label ID="imagelabel" Style="color: red; font-size: 2em; display: none" runat="server" Text=""></asp:Label><br />
                    <asp:Label ID="Label6" runat="server" Style="color: red; display: none; font-size: 2em;" Text=""></asp:Label>
                    <div class="row">
                        <div class="col-12 " style="border-bottom: solid 4px white; color: white; font-size: 1.5em; padding-left: 2em;">
                            <%-- <asp:Label ID="commentsnum" runat="server">4</asp:Label>
                            <asp:Label ID="commentwritten" runat="server"><i>Reviews...</i></asp:Label>
                            <asp:Label ID="Label4" runat="server"><i>add your's?</i></asp:Label>--%>
                        </div>
                    </div>
                    <br />
                    <div data-step="2" data-intro="If you are not logged In. Press SKIP then Click on login above in Navbar">
                        <asp:Label ID="Label8" Style="color: white;" runat="server"><i>Hello,</i></asp:Label>
                        <asp:Label ID="Label7" Style="color: white;" runat="server" Text="Label"></asp:Label><br />
                    </div>
                    <asp:Panel runat="server" DefaultButton="About">
                        <div class="row " style="background-color: black; margin-top: 2em;">

                            <div class="col-2 my-auto">

                                <asp:ImageButton ID="ImageButton1" runat="server" Style="float: right; height: 53px; width: 53px; border-radius: 50%;" ImageUrl="~/pics/defaultlogo.ico" PostBackUrl="~/User.aspx" />
                            </div>
                            <div class="col-8" style="color: white; padding: 2em 0 2em 0;">
                                <asp:TextBox ID="entercomment" runat="server" autocomplete="off" class="form-control txtcomment" placeholder="Add a public Review"></asp:TextBox>
                            </div>
                            <div class="col-2 my-auto">
                                <asp:Button ID="About" class="btn rounded-0" Style="background-color: #2e2e2e; float: left; color: white;" Text="Submit" target="_blank" runat="server" OnClick="About_Click" /><br />
                            </div>
                        </div>
                    </asp:Panel>

                    <div class="row " data-step="1" data-intro="Here you can see comments done by users on the route you selected. scroll and see then Press NEXT" style="background-color: black; border-top: solid 2em #2e2e2e; height: 90vh; overflow: scroll; overflow-x: hidden">
                        <asp:GridView ID="commentGrid" runat="server" AutoGenerateColumns="False" Style="width: 100%;" GridLines="None" ShowHeader="False" DataSourceID="getcommentSqlDatasource" OnRowCommand="commentGrid_RowCommand">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <div class="row" style="background-color: black; border-top: solid 2em #2e2e2e">
                                            <div class="col-2 my-auto">
                                                <asp:ImageButton ID="ImageButton2" runat="server" Style="float: right; height: 65px; width: 65px; border-radius: 50%;" ImageUrl='<%# "~/pics/"+ Eval("picture") %>' PostBackUrl="~/User.aspx" />
                                            </div>
                                            <div class="col-10" style="color: white; padding-top: 1em;">
                                                <div class="row">
                                                    <div class="col-9">
                                                        <asp:Label ID="Label3" Style="font-family: 'Abril FatFace', sans-serif;" runat="server" Text='<%#Eval("uname") %>'></asp:Label>
                                                        <asp:Label ID="Label1" runat="server" Style="padding-left: 1em; font-family: 'Abril FatFace', sans-serif;" Text='<%#Eval("commentdate") %>'></asp:Label><br />
                                                        <asp:Label ID="Label2" runat="server" class="newfont" Text='<%#Eval("allcomment") %>'></asp:Label><br />
                                                        <br />
                                                        <asp:Label ID="name" runat="server" Text="Was this review helpful?" Style="float: right; font-size: smaller;"></asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <EmptyDataTemplate>
                                <div style="text-align: center; margin-top: 3em">
                                    <h3 style="color: white">No Comments yet!!</h3>
                                </div>
                            </EmptyDataTemplate>
                        </asp:GridView>
                        <asp:SqlDataSource ID="getcommentSqlDatasource" runat="server" ConnectionString="<%$ ConnectionStrings:routesAndComments %>" SelectCommand="SELECT [uname], [commentdate], [allcomment], [picture], [routineid] FROM [comments] WHERE ([routineid] = @routineid)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="Label6" DefaultValue="null" Name="routineid" PropertyName="Text" Type="String" />

                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
