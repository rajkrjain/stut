<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<script type="text/javascript" src="media/js/jquery.tools.min.js"></script>
<link rel="stylesheet" href="media/css/tabs.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="media/css/tabs-panes.css" type="text/css"
	media="screen" />
<style>
.block h2 {
	margin-top: 0px;
	margin-bottom: 0px;
	color: #fff;
	background-color: #6D84B4;
	padding: 10px 5px;
	width: 95%;
	text-align: center;
	border: 1px solid #3B5998;
	font-size: 14px;
	font-weight: normal;
}

body {
	background: #fff;
}

.mainview {
	-webkit-background-clip: padding;
	background-clip: padding-box;
	-webkit-border-radius: .6em /*{global-radii-blocks}*/;
	border-radius: .6em /*{global-radii-blocks}*/;
	color: #333 /*{c-body-color}*/;
	text-shadow: 0 /*{c-body-shadow-x}*/   1px /*{c-body-shadow-y}*/   0
		/*{c-body-shadow-radius}*/   #fff /*{c-body-shadow-color}*/;
	font-family: 'Open Sans', sans-serif;
	font-weight: 300;
	font-size: 0.95em;
	border-top: none;
	width: 80%;
	margin-left: 10%;
	box-shadow: 0 4px 23px 5px rgba(0, 0, 0, 0.2), 0 2px 6px
		rgba(0, 0, 0, 0.15);
	height: 100%;
}

.head {
	font-weight: 700;
	font-size: .9em;
	color: #07ade0;
	margin-top: .1em;
	height: 10%;
	text-overflow: ellipsis;
	border: 1px solid #eee /*{d-bup-border}*/;
	border-width: 0;
	border-radius: .6em .6em 0 0;
	border-top-width: 1px;
	margin-top: 0px;
	background: url('image_data/topnav-bg.gif');
	font-weight: bold;
	color: #333 /*{d-bup-color}*/;
	text-shadow: 0 /*{d-bup-shadow-x}*/   1px /*{d-bup-shadow-y}*/   0
		/*{d-bup-shadow-radius}*/   #fff /*{d-bup-shadow-color}*/;
}

.foot {
	font-weight: 700;
	font-size: .9em;
	color: #07ade0;
	margin-top: .1em;
	height: 10%;
	border-right-width: 1px;
	border-left-width: 1px;
	text-overflow: ellipsis;
	border: 1px solid #eee /*{d-bup-border}*/;
	border-width: 0;
	border-radius: 0 0 .6em .6em;
	border-top-width: 1px;
	margin-top: 0px;
	background: url('image_data/topnav-bg.gif');
	/*{d-bup-background-color}*/;
	font-weight: bold;
	color: #333 /*{d-bup-color}*/;
	text-shadow: 0 /*{d-bup-shadow-x}*/   1px /*{d-bup-shadow-y}*/   0
		/*{d-bup-shadow-radius}*/   #fff /*{d-bup-shadow-color}*/;
}

.body {
	background: #f7f7f7;
	height: 80%;
	margin-top: -1px;
	padding: 0px;
}

.text1 {
	font-weight: 700;
	font-size: .9em;
	color: #07ade0;
	display: block;
	margin: .6em 0;
	margin-top: .1em;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}

.part1 {
	height: 10%;
	border-bottom: 1px solid #ddd;
}

.part2 {
	height: 90%;
	padding: 10px;
}

.part3 {
	height: 10%;
}

.part2 p {
	font-weight: 300;
	color: #777;
	margin-bottom: .1em;
	display: block;
	margin: 0;
	font-family: 'Open Sans', sans-serif;
	white-space: normal;
	font-size: 1.05em;
}

.buttonmask {
	width: 40px;
	height: 38px;
	border: 3px solid #666;
	padding: 3px;
	background: #ccc;
	border-radius: 25px;
	margin-left: 2px;
	margin-top: 3px;
}

.buttonmaskbig {
	width: 48px;
	height: 48px;
	border: 3px solid #666;
	padding: 3px;
	background: #ccc;
	border-radius: 30px;
	margin-left: 2px;
}

.btw {
	width: 20%;
	height: 40px;
	float: left;
}

.poptb {
	display: none;
	width: 52px;
	z-index: 1000px;
	height: 300px;
	position: absolute;
	background: #ccc;
	top: 11%;
	left: 10.6%;
	border: 3px solid #aaa;
	border-radius: 10px;
}

.block {
	width: 225px;
	height: 135px;
	background: white;
	margin-left: 10px;
	border: 5px solid #aaa;
	border-radius: 10px;
	opacity: 0.8;
	box-shadow: 0 4px 23px 5px rgba(0, 0, 0, 0.2), 0 2px 6px
		rgba(0, 0, 0, 0.15);
	float: left;
}

.block p {
	text-align: left;
	font-size: 12px;
	font-weight: normal;
	width: 50%;
	float: left;
}

.block .alg {
	position: absolute;
	margin-left: 0px;
	margin-top: 0px;
	width: 46px;
}

.block button {
	width: 50%;
	margin-left: 25%;
	height: 30px;
	margin-top: 20px;
}

.block .more_icon {
	background: url(more-icon.png) no-repeat;
	margin-top: 30px;
	margin-left: 40%;
	height: 41px;
	width: 40px;
}

.next:hover {
	background: #04608E;
	background: -moz-linear-gradient(top, #69a0b6 0, #69a0b6 1px, #277696 1px, #04608e
		100%);
	background: -o-linear-gradient(top, #69a0b6 0, #69a0b6 1px, #277696 1px, #04608e
		100%);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0, #69a0b6),
		color-stop(5%, #69a0b6), color-stop(5%, #277696),
		color-stop(100%, #04608e));
	background: linear-gradient(top, #69a0b6 0%, #69a0b6 1px, #277696 1px, #04608e 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#277696',
		endColorstr='#04608E', GradientType=0);
	border-color: #004a73;
}

.next {
	float: right;
	height: 30px;
	background: #0571A6;
	background: -moz-linear-gradient(top, #73aec9 0, #73aec9 1px, #338ab0 1px, #0571a6
		100%);
	background: -o-linear-gradient(top, #73aec9 0, #73aec9 1px, #338ab0 1px, #0571a6
		100%);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0, #73aec9),
		color-stop(5%, #73aec9), color-stop(5%, #338ab0),
		color-stop(100%, #0571a6));
	background: linear-gradient(top, #73aec9 0%, #73aec9 1px, #338ab0 1px, #0571a6 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#338AB0',
		endColorstr='#0571A6', GradientType=0);
	border-color: #045a8b;
	color: #fff !important;
	border-width: 1px;
	border-style: solid;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;
	border-radius: 3px;
	cursor: pointer;
	font-size: 12px;
	line-height: 1.35;
	margin-top: 10;
	overflow: visible;
	padding: 3px 10px 2px;
	text-decoration: none !important;
	vertical-align: top;
	width: auto;
	font-weight: bold;
	width: auto !important;
	float: right;
}

.dialog-main {
	padding-bottom: 10px;
	padding: 25px 30px 20px;
}

.login {
	width: 100%;
	position: absolute;
	margin: 0 auto 30px;
	display: none;
}

.dialog {
	margin: 0 auto 30px;
	border: 1px solid #a4baca;
	background: #fdfdfd;
	-webkit-border-radius: 4px;
	border-radius: 4px;
	-webkit-box-shadow: 0 1px 5px rgba(0, 0, 0, 0.1);
	-moz-box-shadow: 0 1px 5px rgba(0, 0, 0, 0.1);
	box-shadow: 0 1px 5px rgba(0, 0, 0, 0.1);
	-webkit-background-clip: padding-box;
	background-clip: padding-box;
	width: 400px;
}

.dialog .header {
	position: relative;
	background: #517fa4;
	height: 44px;
	border: 1px solid #1c5380;
	border-width: 1px 1px 0;
	-webkit-box-shadow: 0 -1px 0 #06365f inset, 0 1px 0
		rgba(255, 255, 255, 0.2) inset;
	-moz-box-shadow: 0 -1px 0 #06365f inset, 0 1px 0
		rgba(255, 255, 255, 0.2) inset;
	box-shadow: 0 -1px 0 #06365f inset, 0 1px 0 rgba(255, 255, 255, 0.2)
		inset;
	-webkit-border-radius: 4px 4px 0 0;
	border-radius: 4px 4px 0 0;
	background-color: #517fa4;
	background: #517fa4;
	background-position: 50% 50%;
	margin: -1px -1px 1px;
}

.dialog label {
	width: 35%;
	padding-top: 5px;
	float: left;
	display: inline;
	margin: 0 0 5px;
	font-weight: bold;
}

body {
	font-family: "proxima-nova", "Helvetica Neue", Arial, Helvetica,
		sans-serif;
}

a {
	margin-top: 8px;
	-webkit-tap-highlight-color: rgba(63, 114, 155, 0.3);
	color: #3f729b;
}

.dialog .logo {
	color: #fff;
	font-size: 18px;
	text-align: center;
	font-family: "freight-sans-pro", "proxima-nova", "Helvetica Neue", Arial,
		Helvetica, sans-serif;
}

.dialog input,.dialog .field-group {
	width: 65%;
}

input[type=submit],input.submit {
	font-weight: bold;
	width: auto !important;
	float: right;
}

input,select,textarea {
	border: 1px solid #ccc;
	padding: 9px 8px 7px;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	-ms-box-sizing: border-box;
	box-sizing: border-box;
	-webkit-border-radius: 3px;
	border-radius: 3px;
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
	-moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
}
</style>



</head>
<body>
	<div class="login">
		<section class="dialog-outer">
			<div class="dialog">

				<div class="header">
					<h1 class="logo">Srijna Login</h1>

				</div>

				<div class="dialog-main">



					<form method="POST" id="login-form" class="adjacent"
						action="login.jsp">
						<input type="hidden" name="csrfmiddlewaretoken"
							value="289c87a5bcb74465fadfa49a7e155e8b" />
						<p>
							<label for="id_username">Username:</label> <input name="username"
								maxlength="30" autocapitalize="off" autocorrect="off"
								type="text" id="id_username" />
						</p>
						<p>
							<label for="id_password">Password:</label> <input
								autocapitalize="off" autocorrect="off" type="password"
								name="password" id="id_password" />
						</p>
						<p class="form-actions">
							<a href="/accounts/password/reset/">Forgot password?</a> <input
								type="submit" class="button-green next" value="Log in" />
							<button class="button-green next close" type="button">Cancel</button>
						</p>
					</form>
				</div>

			</div>
		</section>
	</div>

	<div class="mainview" align="left">
		<div class="head">
			<img src="srijna_logo_tagline_small.png" />
			<button class="next" onclick="login();">Login</button>
		</div>

		<div class="body">

			<div class="part2"></div>



		</div>

		<div class="foot"></div>


	</div>


	<script>
			function login(){
				$(".login").overlay().load();
				
			}
			var appLayOuts=[];
			  processApps();
			  
			  
			  
			  function processApps(){
				
				var appMessage = JSON.parse("{\"Test\":{\"logo\":\"stutor.png\",\"category\":\"\",\"layout\":\"applayout.xml\",\"name\":\"Test\",\"owner\":\"Test.com\",\"type\":\"quiz\",\"layouts\":[{\"template\":\"study.html\",\"default_field\":\"Meaning\",\"primary_category\":\"category\",\"infotabs\":\"Meaning,Synonym,Antonym,Usage\",\"primary_type\":\"Type\",\"format\":\"info\",\"primary_field\":\"Word\",\"dataFile\":\"info_data.xml\"}]}}");
			  
				$.each(appMessage,function(i,j){
						
						$(".body .part2").append("<div class=\"block\"><img class=\"alg\" src=\"image_data/"+i+"/"+j.logo+"\"/><h2>"+j.name+"</h2><br><p>Developed By:</p><p>"+j.owner+"</p><p>Category :</p><p>"+j.category+"</p><div  align=\"center\" class=\"more_icon\" onclick=\"launch('"+j.name+"');\"></div></div>");						
						
						appLayOuts[i]=j.layouts;
						
						
				});
			  }
			   function launch(name){
				
					window.open("template.jsp?name="+name,"_self");
				
				}
				
				
	$(".login").overlay({

    // custom top position
    top: 50,

    // some mask tweaks suitable for facebox-looking dialogs
    mask: {

    // you might also consider a "transparent" color for the mask
    color: '#fff',

    // load mask a little faster
    loadSpeed: 200,

    // very transparent
    opacity: 0.5
    },

    // disable this for modal dialog-type of overlays
    closeOnClick: false,

    // load it immediately after the construction
    load: false

    });

	
			</script>

</body>
</html>