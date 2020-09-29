<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="Routine.aspx.cs" Inherits="LoginWithBootstrap.Routine" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
	Routine
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
	<link rel="icon" href="gifs/ship-blue.png" type="image/icon type" />
	<link href="Content/bootstrap.min.css" rel="stylesheet" />
	<link href="StyleRoutine.css" rel="stylesheet" />
	<link href="https://fonts.googleapis.com/css?family=Candal&display=swap" rel="stylesheet" />
	<link href="https://fonts.googleapis.com/css?family=Press+Start+2P&display=swap" rel="stylesheet" />
	<link href="https://fonts.googleapis.com/css?family=Nosifer&display=swap" rel="stylesheet" />
	<link href="https://fonts.googleapis.com/css?family=Sigmar+One&display=swap" rel="stylesheet" />
	<link href="https://fonts.googleapis.com/css?family=Black+Ops+One&display=swap" rel="stylesheet" />
	<link href="https://fonts.googleapis.com/css?family=Bungee+Inline&display=swap" rel="stylesheet" />
	<link href="https://fonts.googleapis.com/css?family=Poller+One&display=swap" rel="stylesheet" />
	<link href="https://fonts.googleapis.com/css?family=Gravitas+One|Nova+Square|Poller+One&display=swap" rel="stylesheet" />
	<script type="text/javascript">
		jQuery(function () {
			jQuery('#tourId').click();
		});
	</script>
	<script type="text/javascript">
		function introScript() {
			//introJs().setOption("overlayOpacity", 0);
			//introJs().setOption('showProgress', true
			introJs().setOption("hideNext", true);
			//introJs().setOption("showBullets", true);
			//introJs().setOption("showButtons", true);
			introJs().setOption("scrollToElement", true);
			//introJs().setOption('showProgress', true);
			introJs().start();

			//introJs().start();

			
			//introJs().onbeforechange(function () {
			//    if (this._currentStep === 1) {
			//        introJs().setOption("overlayOpacity", 0.5);
			//    } else {
			//        introJs().setOption("overlayOpacity", 0.8);
			//    }
			//});
			//$(".introjs-tooltip").css({ "border":"0px solid #f5c000" });
			//$(".introjs-helperLayer").css({ "background-color": "white", "color": "white", "opacity": 0.3 });
			//$(".introjs-arrow.top").css("border-bottom-color", "red");
			//$(".introjs-overlay").css({ "background-color": "red", "opacity": 0.9 });
		}
	</script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphmain" runat="server">
	<%--<div class="bla" style="background-color:red; border:solid 1225px blue;">
	</div>--%>
	<%--<section >
		<div class="ss" style="background-color:black;height:30vh;">
		</div>
	</section>--%>
	<a class="btn btn-large btn-success" id="tourId" style="display:none" data-dismiss="modal"
		href="javascript:void(0);"
		onclick="javascript:return introScript()">Take a Ride</a>
	<section class="heading" style="background-color: #2e2e2e; height: 30vh; padding-top: 15vh;">
		<div class="container-lg">
			<div class="row" style="font-family: 'Poller One', cursive; color: white; font-size: 3.5rem;">
				
				<div class="col-12">
					Schedules<br />
					<br />
				</div>
			</div>
		</div>
	</section>

	<section class="RoutineS1" style="background-color: #e0e0e0; height: auto; padding-bottom: 3em">
		<div class="container-lg" style="padding-top: 10vh;">

			<div class="row">
				<div class="col-4">
					<div class="GetSchedule" style="border: solid 1px white; padding-left: 2em">
						<asp:Label ID="Label1" class="GetScheduleLabel" runat="server" Style="font-family: 'Nova Square', cursive; font-size: larger;" Text="Schedule Details"></asp:Label><br />
						<asp:Label ID="bla" class="FormLabel" runat="server"></asp:Label>

						<div class="container" style="padding-top: 10px">
							<div class="ScheduleDetails" style="border-left: solid 1px white;">
								<div style="padding-left: 1em">
									<asp:Label ID="Label2" class="FormLabel" runat="server" Text="From :- "></asp:Label>
									<asp:Label ID="txtloading" class="FormLabel" Text="" runat="server"></asp:Label><br />

									<%--<asp:TextBox ID="txtloading" class="form-control" placeholder="Place of Loading" runat="server"></asp:TextBox>

								 FOR USING MORE THAN ONE VALIDATOR I HAVE ADDED A LINE IN PAGE LOAD IN CODEBEHIND 
										
								<asp:RequiredFieldValidator ID="t1validation" runat="server" ErrorMessage="*Required" style="color:red;" ControlToValidate="txtloading"></asp:RequiredFieldValidator>--%>
									<asp:Label ID="Label3" class="FormLabel" runat="server" Text="To :- "></asp:Label>
									<asp:Label ID="txtdischarge" class="FormLabel" Text="" runat="server"></asp:Label><br />

									<%--<asp:TextBox ID="txtdischarge" class="form-control" placeholder="Place of Discharge" runat="server"></asp:TextBox>
								<asp:RequiredFieldValidator ID="t2validation" runat="server" ErrorMessage="*Required" style="color:red;" ControlToValidate="txtdischarge"></asp:RequiredFieldValidator>--%>
									<asp:Label ID="Label4" class="FormLabel" runat="server" Text="Departs :-"></asp:Label>
									<asp:Label ID="txtdate" class="FormLabel" Text="" runat="server"></asp:Label><br />

									<%--<asp:TextBox ID="txtdate" class="form-control" placeholder="dd/mm/yyyy" runat="server"></asp:TextBox>
								<asp:RequiredFieldValidator ID="t5validation" runat="server" ErrorMessage="*Required" style="color:red;" ControlToValidate="txtdate"></asp:RequiredFieldValidator>--%>
									<%--<asp:Button ID="ScheduleButton" class="btn btn-secondary"  Text="Search" style="float:right; padding-left:2em;padding-right:2em;"  runat="server" OnClick="ScheduleButton_Click_Routine" />
								<asp:Label ID="lblnotfilled" class="notfilled" Text="" Style="color:red;" runat="server"></asp:Label>--%>
								</div>

							</div>
						</div>
					</div>
				</div>
				<div class="col-8" data-step="1" data-intro="Press SKIP. Click on See Reiview to check the the Reviews of other customers ">
					<div class="col-12" style="margin-bottom: 0.7em; background: linear-gradient(to left,#F09819,#FFC837,#F09819);">
						<asp:Label ID="Label13" runat="server" Text="*Additional information regarding Booking"></asp:Label>
					</div>
					<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Style="width: 100%;" GridLines="None" ShowHeader="False" DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand">
						<Columns>
							<asp:TemplateField>
								<ItemTemplate>
									<div class="container-fluid"  style="background-color: #f2f1ef; color: black;">
										<div class="row">
											<div class="col-12" style="color: white; background: linear-gradient(to left,#0c1f31,#173b5e,#0c1f31); padding-top: 0.5em; padding-bottom: 0.5em; font-family: 'Nova Square', cursive;">

												<asp:Label ID="sname" Style="float: left; padding-left: 1em;" runat="server" class="tablehead" Text='<%#Eval("name") %>'></asp:Label>
												&nbsp;<asp:Label ID="snum" runat="server" class="shipnum" Text='<%#Eval("id") %>'></asp:Label>
												<div style="text-align: right">
													<asp:Button Text="See Review >" runat="server" CommandName="Select" CommandArgument="<%# Container.DataItemIndex %>" />
												</div>

												<%--<asp:ButtonField CommandName="sendingid" Text="See Review" />--%>
												<%--<asp:HyperLink ID="rating" style="float:right;padding-right:1em; color:white;" runat="server" NavigateUrl="~/Comments.aspx">See Reviews ></asp:HyperLink>--%>
											</div>
										</div>
										<div class="row" style="background-color: white; height: 18vh; color: black; padding-top: 1em; margin-bottom: 1em;">
											<div class="col-2">
												<asp:Label ID="Label5" runat="server" class="tablehead"><b>DEPARTURE</b></asp:Label><br />
												<br />
												<asp:Label ID="Label6" runat="server" class="tablehead" Text='<%#Eval("depdate") %>'></asp:Label><br />
												<asp:Label ID="Label7" runat="server" class="shipnum" Text='<%#Eval("deptime") %>'></asp:Label><br />
											</div>
											<div class="col-1"></div>
											<div class="col-4" style="padding-top: 1em;">
												<img src="map/shipmiddle4new.png" />
												<%--<hr class="line" style="border:4px solid black;" />--%>
											</div>
											<div class="col-1"></div>
											<div class="col-2">
												<asp:Label ID="Label8" runat="server" class="tablehead"><b>ARRIVAL</b></asp:Label><br />
												<br />
												<asp:Label ID="Label9" runat="server" class="tablehead" Text='<%#Eval("arrdate") %>'></asp:Label><br />
												<asp:Label ID="Label10" runat="server" class="shipnum" Text='<%#Eval("arrtime") %>'></asp:Label><br />
											</div>
											<div class="col-2">
												<asp:Label ID="Label11" runat="server" class="tablehead"><b>PRICE</b></asp:Label><br />
												<br />
												<asp:Label ID="Label12" runat="server" class="tablehead" Text='<%#Eval("price") %>'></asp:Label><br />
											</div>
										</div>
								</ItemTemplate>
							</asp:TemplateField>

						</Columns>
						<EmptyDataTemplate>
							<div style="text-align: center; margin-top: 3em">
								<h1 style="color: red; font-family: 'Poller One', cursive; font-size: 3.5rem;">Sorry</h1>
								<h5 style="color: black">This Route is out of Service Currently</h5>
								<h5 style="color: black">Please choose other routes.</h5>
								<p style="margin-top: 30px">(*choose <span><b>Shanghai</b></span> to <span><b>Singaport</b></span> for better results)</p>
								<p style="margin-top: -20px">(You dora the explorer)</p>
							</div>
						</EmptyDataTemplate>
					</asp:GridView>
					<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:routesAndComments %>" SelectCommand="SearchRoutine" SelectCommandType="StoredProcedure">
						<SelectParameters>
							<asp:ControlParameter ControlID="txtloading" DefaultValue="null" Name="depcity" PropertyName="Text" Type="String" />
							<asp:ControlParameter ControlID="txtdischarge" DefaultValue="null" Name="arrcity" PropertyName="Text" Type="String" />
							<asp:ControlParameter ControlID="txtdate" DefaultValue="null" Name="depdate" PropertyName="Text" Type="Int32" />
						</SelectParameters>
					</asp:SqlDataSource>
				</div>
			</div>
		</div>
	</section>
</asp:Content>
