<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeBehind="Index.aspx.cs" Inherits="LoginWithBootstrap.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">Index</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />
	<link rel="stylesheet" href="/resources/demos/style.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
	<script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
	<link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
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


	<style>
		.mfoot {
			margin: 0;
			padding: 0;
			display: flex;
			padding-top: 10px;
			padding-bottom: 10px;
			flex-direction: row;
			justify-content: space-around;
			align-items: center;
			background: black;
		}


		.glow-on-hover {
			width: 220px;
			height: 50px;
			border: none;
			outline: none;
			color: #fff;
			background: #111;
			cursor: pointer;
			position: relative;
			z-index: 0;
			border-radius: 10px;
		}

			.glow-on-hover:before {
				content: '';
				background: linear-gradient(45deg, #ff0000, #ff7300, #fffb00, #48ff00, #00ffd5, #002bff, #7a00ff, #ff00c8, #ff0000);
				position: absolute;
				top: -2px;
				left: -2px;
				background-size: 400%;
				z-index: -1;
				filter: blur(5px);
				width: calc(100% + 4px);
				height: calc(100% + 4px);
				animation: glowing 20s linear infinite;
				opacity: 0;
				transition: opacity .3s ease-in-out;
				border-radius: 10px;
			}

			.glow-on-hover:active {
				color: #000;
			}

				.glow-on-hover:active:after {
					background: transparent;
				}

			.glow-on-hover:hover:before {
				opacity: 1;
			}

			.glow-on-hover:after {
				z-index: -1;
				content: '';
				position: absolute;
				width: 100%;
				height: 100%;
				background: #111;
				left: 0;
				top: 0;
				border-radius: 10px;
			}

		@keyframes glowing {
			0% {
				background-position: 0 0;
			}

			50% {
				background-position: 400% 0;
			}

			100% {
				background-position: 0 0;
			}
		}
	</style>

	<script type="text/javascript">
		jQuery(function () {
			jQuery('#lauching').click();
		});

		//$("#exampleModalCenter").on('hide.bs.modal', function () {
		//    console.log('inside')
		//    $('#ytvideo').attr('src', '');
		//})
		$(document).ready(function () {
			$('.closemodal').click(function () {
				console.log('kdj')
				$('#ytvideo').each(function () {
					var el_src = $(this).attr("src");
					$(this).attr("src", el_src);
				});
			});
		});

		<%--$(document).ready(function () {
			$("#<%=loadingsend.ClientID %>").change(function () {
				console.log('aslkjlsdfl');
				$("#<%=dischargesend.ClientID %>").trigger('mousedown');
			});
		});--%>
		function Validate() {
			console.log("in validate")
			var txt1 = document.getElementById("loadingsend");
			var txt2 = document.getElementById("dischargesend");
			var txt3 = document.getElementById("datesend");
			document.getElementById("loadingsendErrorTag").innerHTML = "";
			document.getElementById("dischargesendErrorTag").innerHTML = "";
			document.getElementById("datesendErrorTag").innerHTML = "";

			if (txt1.value == "nothing") {
				document.getElementById("loadingsendErrorTag").innerHTML = "*Enter a Port";
				return false;
			}
			else if (txt2.value == "nothing") {
				document.getElementById("dischargesendErrorTag").innerHTML = "*Enter a Port";
				return false;
			}
			else if (txt3.value == "") {
				document.getElementById("datesendErrorTag").innerHTML = "*Enter date";
				return false;
			}
		}
	</script>
	<script type="text/javascript">

	    <%--function shutintro() {
	        //alert('alkf');
	        var ans = "no";
	        '<%Session["playintro"] = "no"; %>';
	        alert('<%=Session["playintro"] %>');
	        console.log('<%=Session["playintro"] %>');
	    }--%>

		function introScript() {
			introJs().setOption('showProgress', true);
			introJs().setOption("hideNext", true);
			//introJs().setOption("showBullets", true);
			//introJs().setOption("showButtons", true);
			introJs().setOption("scrollToElement", true);

			introJs().start();
		}
		function loginsendError() {
			console.log("lskjlask")
			document.getElementById("loadingsendErrorTag").innerHTML = "*Enter a Port";

		}
		function dischargesendError() {
			document.getElementById("dischargesendErrorTag").innerHTML = "*Enter a Port";

		}
		function datesendError() {
			console.log('in date error')
			document.getElementById("datesendErrorTag").innerHTML = "*Enter date";
		}


		var a = 0;
		$(window).scroll(function () {

			var oTop = $('#counter').offset().top - window.innerHeight;
			if (a == 0 && $(window).scrollTop() > oTop) {
				$('.counter-value').each(function () {
					var $this = $(this),
						countTo = $this.attr('data-count');
					$({
						countNum: $this.text()
					}).animate({
						countNum: countTo
					},

						{

							duration: 2000,
							easing: 'swing',
							step: function () {
								$this.text(Math.floor(this.countNum));
							},
							complete: function () {
								$this.text(this.countNum);
								//alert('finished');
							}

						});
				});
				a = 1;
			}
		});
	</script>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphmain" runat="server">
	<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered modal-lg" role="document">
			<div class="modal-content">

				<div class="modal-body mb-0 p-0">
					<div class="embed-responsive embed-responsive-16by9 z-depth-1-half">
						<iframe class="embed-responsive-item" id="ytvideo" src="https://www.youtube.com/embed/puKLUMISk0o"
							allowfullscreen></iframe>
					</div>
				</div>
				<div class="modal-footer mfoot">
					<button class="glow-on-hover closemodal" type="button" data-dismiss="modal">Close</button>

					<%--<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>--%>
					<%--<button type="button" class="btn btn-primary">Save changes</button>--%>
					<button type="button" class="glow-on-hover closemodal" id="tourId" data-dismiss="modal"
						href="javascript:void(0);"
						onclick="javascript:return introScript();">
						Take a Ride</button>
					<%--<a class="btn btn-large btn-success" id="tourId" data-dismiss="modal"
						href="javascript:void(0);"
						onclick="javascript:introJs().start();">Take a Ride</a>--%>
				</div>

			</div>
		</div>
	</div>

	<section id="Home" class="IndexS1">
		<div class="tag1" data-step="1" data-intro="Welcome to Lannister Shipping. People call me IntroJs. I will be your Guide. Press Next ">
			<button type="button" class="btn btn-primary" style="display: none" id="lauching" data-toggle="modal" data-target="#exampleModalCenter">
				L
			</button>
			<%--MARGIN IS ADDED FORCEFULLY COZ StyleIndex not functioning properly--%>
			<div class="title" style="font-family: 'Poller One', cursive;">
				<h1><strong>THE LANNISTER SHIPPING</strong></h1>
			</div>
			<div class="imgText" style="font-family: 'Candal', cursive;">
				<%--font-family: 'Press Start 2P', cursive;--%>
				<h1>The rougher the</h1>
				<h1>seas, the smoother</h1>
				<h1>we sail. Ahoy!</h1>
				<br />
				<h5 style="font-family: 'Nova Square', cursive;">Titanic was Shit, We don't Sink.</h5>
			</div>
		</div>
	</section>
	<section class="NewsSource" data-step="2" data-intro="These are some of the Authentic News Agencies and their opinion about Us. Press Next " style="background-color: #eef3f3; height: auto; font-family: 'Zhi Mang Xing', cursive;">
		<div class="row">
			<div class="col-3" style="color: #091725; padding: 3em 0 2em 9em;">
				<h3>What They </h3>
				<h3>Say !!!</h3>
			</div>
			<div class="col-9 NewsColumn" style="padding: 2em 0 2em 0;">
				<div class="row">
					<div class="col-3 ">
						<asp:ImageButton ID="img1" class="NewsImage" ImageUrl="newsimage/forbes11png.png" Style="height: 100px; display: block;" runat="server" />
					</div>
					<div class="col-3 ">
						<asp:ImageButton ID="ImageButton2" class="NewsImage" ImageUrl="newsimage/usa-today-logo-png-8-original.png" Style="height: 110px; display: block;" runat="server" />
					</div>
					<div class="col-3 ">
						<asp:ImageButton ID="ImageButton1" class="NewsImage" ImageUrl="newsimage/the-guardian.svg" Style="height: 110px; display: block;" runat="server" />
					</div>

					<div class="col-3 ">
						<asp:ImageButton ID="ImageButton3" class="NewsImage" ImageUrl="newsimage/cnet.png" Style="height: 120px; display: block;" runat="server" />
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="IndexS2" data-step="3" data-intro="This is Your shipment details. (1)Our Ports near by you. (2)Shipping Routines (3)Track your shipments.  Press Next ">
		<div class="container-lg tag2" style="padding: 4em 0 4em 0;">
			<%--<div class="tag2">--%>
			<div class="row">
				<div class="col-3">
					<div class="col-12 colstyle">
						<div class="location">
							<img src="icons/pin.png" style="height: 30px; width: 30px;" />
							<asp:Label ID="LabelLocation" class="LocationLabel" runat="server" Style="font-family: 'Nova Square', cursive; font-size: larger;" Text="Location"></asp:Label>
							<br />
							<br />
							<div class="row LocationDetails" style="margin-top: 1em;">
								<div class="col-12">
									<asp:Label ID="TextLocation" class="LocationLabel" runat="server" Text="Find offices and shipping"></asp:Label><br />
									<asp:Label ID="Label2" class="LocationLabel" runat="server" Text="information for your origin"></asp:Label><br />
									<asp:Label ID="Label7" class="LocationLabel" runat="server" Text="origin or destination."></asp:Label>
									<br />
									<div class="LocationBut">
										<asp:Button ID="LocationButton" class="btn btn-block rounded-0" Style="margin-top: 1em;" Text="Find" target="_blank" runat="server" OnClick="LocationButton_Click" OnClientClick="target ='_blank';" />
										<br />
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-5" id="step-two" data-step="8" data-intro="Ship Routes. Press Done then Checkout the page, come back and choose a route.">
					<div class="col-12 colstyle">
						<asp:Panel runat="server" DefaultButton="btnsend">
							<%--<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
							<asp:Button ID="Button2" runat="server" Style="display: none" OnClick="Button1_Click" />--%>
							<div class="GetSchedule">
								<img src="icons/schedule.png" style="height: 30px; width: 30px;" />
								<asp:Label ID="Label1" class="GetScheduleLabel" runat="server" Style="font-family: 'Nova Square', cursive; font-size: larger;" Text="Get Schedule"></asp:Label><br />
								<div class="ScheduleDetails">
									<div class="row" style="margin: 3%;">
										<div class="col-6">
											<asp:Label ID="Label3" class="FormLabel" runat="server" Text="From"></asp:Label>
											<%--<asp:TextBox ID="loadingsend" class="form-control txt1" placeholder="Place of Loading" runat="server"></asp:TextBox>--%>
											<asp:DropDownList ID="loadingsend" class="form-control txt1" placeholder="Place of Loading" runat="server" ClientIDMode="Static">
												<asp:ListItem Selected="True" Value="nothing">Loading Port</asp:ListItem>
												<asp:ListItem>SHANGHAI</asp:ListItem>
												<asp:ListItem>SHENZEN</asp:ListItem>
												<asp:ListItem>TIANJIN</asp:ListItem>
												<asp:ListItem>DALIAN</asp:ListItem>
											</asp:DropDownList>

											<small id="loadingsendErrorTag" style="color: red"></small>
										</div>
										<div class="col-6">
											<asp:Label ID="Label4" class="FormLabel" runat="server" Text="To"></asp:Label>
											<%--<asp:TextBox ID="dischargesend" class="form-control txt1" placeholder="Place of Discharge" runat="server"></asp:TextBox>--%>
											<asp:DropDownList ID="dischargesend" class="form-control txt1" placeholder="Place of Discharge" runat="server" ClientIDMode="Static">
												<asp:ListItem Selected="True" Value="nothing">Arrival Port</asp:ListItem>
												<asp:ListItem>SINGAPORE</asp:ListItem>
												<asp:ListItem>BUSAN</asp:ListItem>
												<asp:ListItem>QINGDAO</asp:ListItem>
												<asp:ListItem>XIAMEN</asp:ListItem>
											</asp:DropDownList>
											<small id="dischargesendErrorTag" style="color: red"></small>
										</div>
									</div>
									<div class="row" style="margin: 3%;">
										<div class="col-6" style="text-align: right;">
											<asp:Label ID="Label5" class="FormLabel" runat="server" Text="Departs :"></asp:Label>
										</div>
										<div class="col-6">
											<asp:TextBox ID="datesend" autocomplete="off" class="form-control txt1" placeholder="dd/mm/yyyy" runat="server" ClientIDMode="Static"></asp:TextBox>
											<script>
												var today, datepicker;
												today = new Date(new Date().getFullYear(), new Date().getMonth(), new Date().getDate());
												datepicker = $("[id*=datesend]").datepicker({
													minDate: today
												});
											</script>
											<small id="datesendErrorTag" style="color: red"></small>
										</div>
									</div>
									<div class="row" style="margin: 3%;">
										<div class="col-6"></div>
										<div class="col-6">
											<asp:Button ID="btnsend" class="btn rounded-0" Text="Search" Style="float: right; padding-left: 2em; padding-right: 2em;" runat="server" OnClientClick="javascript:return Validate()" OnClick="btnsend_Click" />
										</div>
									</div>
								</div>
							</div>
						</asp:Panel>

					</div>
				</div>
				<div class="col-4">
					<div class="col-12 colstyle">
						<div class="track">
							<img src="icons/track.png" style="height: 30px; width: 30px;" />
							<asp:Label ID="TrackLabel" class="FormLabel" Style="font-family: 'Nova Square', cursive; font-size: larger;" Text="Track Shipment" runat="server"></asp:Label><br />
							<br />
							<div class="row">
								<div class="col-12" style="padding-bottom: 0.7em;">
									<div class="TrackDetails" style="margin-top: 1em;">
										<asp:Label ID="Label6" Class="FormLabel" Text="Container no." runat="server"></asp:Label>
										<asp:TextBox ID="TrackText" class="form-control txt1" placeholder="Ex:12345ABCD" runat="server"></asp:TextBox><br />
										<asp:Button ID="Button1" Class="btn rounded-0" Text="Track" Style="float: right; padding-left: 2em; padding-right: 2em; margin-top: 0.7em" runat="server" />
										<br />
										<br />
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<%--</div>--%>
		</div>
	</section>


	<section id="Service" class="IndexS3" style="background-color: #f2f1ef;">
		<div class="container" data-step="5" data-intro="Professional website have these kind of showCards.Simple and professional. Press Next ">
			<div class="row newfont" style="padding: 5rem 0 5rem 0;">
				<div class="col-4">
					<div class="card" style="width: 20rem;">
						<img class="card-img-top" src="cardpics/award.jpg" alt="Card image cap" />
						<div class="card-body">
							<h3 class="card-title awards"><b>Awards</b></h3>
							<h6 class="card-text">I have never received a single award for studies in my life but here i can write anything.</h6>
							<br />
							<br />
							<br />
							<br />
							<a href="#" class="btn rounded-0 btn-lg cardbtn" style="/*background: linear-gradient(to left, #0F2027, #203A43,#2C5364); */ float: left; color: white; padding-left: 1.5em; padding-right: 1.5em;">View All</a>
						</div>
					</div>
				</div>
				<div class="col-4">
					<div class="card" style="width: 20rem;">
						<img class="card-img-top" src="cardpics/cargo.jpg" alt="Card image cap" />
						<div class="card-body">
							<h3 class="card-title services"><b>Services</b></h3>
							<h6 class="card-text">We provide the best service in the world in universe in this f milky way galaxy.No one's gonna read this.</h6>
							<br />
							<br />
							<br />
							<br />
							<a href="#" class="btn rounded-0 btn-lg cardbtn" style="float: left; color: white; padding-left: 1.5em; padding-right: 1.5em;">View All</a>
						</div>
					</div>
				</div>
				<div class="col-4">
					<div class="card" style="width: 20rem;">
						<img class="card-img-top" src="cardpics/p8.jpg" alt="Card image cap" />
						<div class="card-body">
							<h3 class="card-title nature"><b>Nature</b></h3>
							<h6 class="card-text">I do care about nature i love nature, it's just i am so lazy to plant a tree. Trump doesn't believe in Global warming. AH</h6>
							<br />
							<br />
							<br />
							<br />
							<a href="#" class="btn rounded-0 btn-lg cardbtn" style="float: left; color: white; padding-left: 1.5em; padding-right: 1.5em;">View All</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section id="s3" style="background-color: white; height: 15vh;"></section>

	<section id="About" class="IndexS4" data-step="6" data-intro="This is About us why we are so famous. Lannister always pay their debts. Press Next " style="background-color: #f2f1ef; background-image: url('map/finalworld.png'); background-repeat: no-repeat; background-size: cover; color: #091725;">
		<div class="container">
			<div class="row">
				<div class="col-8" style="padding-top: 2em; padding-bottom: 2em;">
					<div class="row">
						<div class="col-10">
							<div>
								<h2>Browse Our Network</h2>
							</div>
							<div>
								We carry millions of tons of cargo every single day. Our vast network covers over 300 ports in more than 120 countries, giving you a fast, reliable and regular connection to all corners of the globe.
							</div>
							<div>
								<asp:Button ID="browse" class="btn rounded-0" Style="margin: 1em 0 0 0;" Text="Browse Network" target="_blank" runat="server" />
							</div>
							<br />
							<div class="row counter">
								<div class="grey-bg c-no container-fluid">
									<div class="container">
										<div class="row" id="counter">
											<div class="col-4 counter-Txt">
												<h3 class="counter-value" data-count="2020"><b>1800</b></h3>
												<h3><b>Established</b></h3>
											</div>
											<div class="col-4 counter-Txt">
												<h3 class="counter-value" data-count="6114"><b>5000</b></h3>
												<h3><b>Customers</b></h3>
											</div>
											<div class="col-4 counter-Txt margin-bot-35">
												<h3 class="counter-value" data-count="120"><b>0</b></h3>
												<h3><b>Ports</b></h3>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-4  newfont" style="background-color: hsla(206, 100%, 6%, 0.82); padding-top: 3em; padding-bottom: 2em; color: white;">
					<h3>WHY US?</h3>
					<br />
					<h5>Lannister's are a world leader in global container shipping and a company offering global service with local knowledge. We also provides integrated network of road, rail and sea transport resources which stretches across the globe.</h5>
				</div>
			</div>
		</div>
	</section>
	<section id="s5" style="background-color: white; height: 10vh;"></section>

</asp:Content>
