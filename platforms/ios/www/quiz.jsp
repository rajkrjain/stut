<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.net.*"%>
<%@ page import="com.test.*"%>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<script type="text/javascript" src="media/js/jquery.tools.min.js"></script>
<link rel="stylesheet" href="media/css/tabs.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="media/css/tabs-panes.css" type="text/css"
	media="screen" />
<style>
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
	height: 15%;
	border-bottom: 1px solid #ddd;
}

.part2 {
	height: 85%;
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
	width: 40%;
	height: 46%;
	margin-left: 5%;
	margin-top: 1%;
	border-radius: 10px;
	opacity: 0.8;
	box-shadow: 0 4px 23px 5px rgba(0, 0, 0, 0.2), 0 2px 6px
		rgba(0, 0, 0, 0.15);
	float: left;
}

.unsel {
	background: white;
}

.sel {
	background: #ccc;
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
	width: 42px;
}

.block button {
	width: 50%;
	margin-left: 25%;
	height: 30px;
	margin-top: 20px;
}

.block_head {
	margin-top: 0px;
	margin-bottom: 0px;
	color: #fff;
	background-color: #6D84B4;
	padding: 2px 1px;
	width: 99%;
	border-radius: 5px 5px 0 0;
	text-align: center;
	border: 1px solid #3B5998;
	font-size: 14px;
	font-weight: normal;
}

.block div h2 {
	font-weight: 700;
	font-size: .9em;
	color: #07ade0;
	float: left;
	display: block;
	margin: .6em 0;
	padding: 5px;
	text-overflow: ellipsis;
	overflow: hidden;
}

.part1 h2 {
	font-weight: 700;
	font-size: .9em;
	color: #07ade0;
	float: left;
	display: block;
	margin: .6em 0;
	padding: 5px;
	text-overflow: ellipsis;
	overflow: hidden;
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
}

.success {
	border: 1px solid #aaa;
	display: none;
	padding: 5px;
	position: absolute;
	margin-left: 14%;
	margin-top: 5%;
	border-radius: 5px;
}

.failure {
	margin-left: 14%;
	padding: 5px;
	display: none;
	border: 1px solid #aaa;
	margin-top: 5%;
	position: absolute;
	border-radius: 5px;
}

.dialog {
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
	display: none;
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

.dialog .logo {
	color: #fff;
	font-size: 18px;
	text-align: center;
	font-family: "freight-sans-pro", "proxima-nova", "Helvetica Neue", Arial,
		Helvetica, sans-serif;
}
</style>

</head>
<body>
	<div class="mainview" align="left">
		<div class="head"></div>

		<div class="body">
			<div class="part1" id="Q"></div>
			<div class="part2">

				<div class="block unsel" id="P_OP1">
					<h2 class="block_head">Option 1</h2>
					<div id="OP1"></div>
					<img class="success" src="started.png" /> <img class="failure"
						src="stopped.png" />

				</div>
				<div class="block unsel" id="P_OP2">
					<h2 class="block_head">Option 2</h2>
					<div id="OP2"></div>
					<img class="success" src="started.png" /> <img class="failure"
						src="stopped.png" />


				</div>
				<div class="block unsel" id="P_OP3">
					<h2 class="block_head">Option 3</h2>
					<div id="OP3"></div>
					<img class="success" src="started.png" /> <img class="failure"
						src="stopped.png" />
				</div>

				<div class="block unsel" id="P_OP4">
					<h2 class="block_head">Option 4</h2>
					<div id="OP4"></div>
					<img class="success" src="started.png" /> <img class="failure"
						src="stopped.png" />
				</div>

			</div>



		</div>

		<div class="foot" align="center">
			<button onclick="next();" class="next">Submit</button>
		</div>


	</div>

	<div class="results dialog">
		<div class="header">
			<h1 class="logo">Quiz Statistics</h1>
		</div>

		<div>
			<h1>
				Total Correct Answers
				</h2>
				<h1>
					Total Wrong Answers
					</h2>
					<h1>
						Score(%)
						</h2>
						<h1>
							Status:
							</h2>
							<h1>
								You have to work hard
								</h2>
		</div>

	</div>
	<script>
			$(".results").overlay({

    // custom top position
    top: 0,

    // some mask tweaks suitable for facebox-looking dialogs
    mask: {

    // you might also consider a "transparent" color for the mask
    color: '#fff',

    // load mask a little faster
    loadSpeed: 200,

    // very transparent
    opacity: 0.5
    },
	onBeforeLoad:function() {
           
           
           $.get("actions.jsp?action=STATS",function(data){
				
				
		   });
            
        },

    // disable this for modal dialog-type of overlays
    closeOnClick: false,

    // load it immediately after the construction
    load: false

    });

	function showResults(){
				$(".results").overlay().load();
				
			}
		
			var questions=new Array();
			var index=0;
			<%
				QuizSession qs=new QuizSession("123","Test","Quiz");
				session.setAttribute("QuizSession",qs);
				//out.println();
			%>
			// var js =  JSON.parse("{\"questions\":{\"question\":[{\"OP2\":\"DD00\",\"id\":100,\"OP1\":\"Dhhh\",\"OP4\":\"DDsss\",\"OP3\":\"DDmm\",\"Q\":\"Who are U?\",\"A\":\"OP2\",\"multiple\":true},{\"OP2\":\"DD2\",\"id\":100,\"OP1\":\"DD1\",\"OP4\":\"DD4\",\"OP3\":\"DD3\",\"Q\":\"What  U want?\",\"A\":\"OP2\",\"multiple\":false}]}}");
			 
			  var js =  JSON.parse("<%=qs.loadQuestions().replace("\"","\\\"")%>");
				$.each(js,function(i,j){
				
					questions[questions.length]=j;
					
					
				});
				next();
				function next(){
				
					if($(".next").html()=="Finish"){
						
						showResults();
						
						return;
					}
				
					if($(".next").html()=="Submit"){					
					
					if(index>0){
					$.get("actions.jsp?action=VALIDATE_ANSWER&qid="+questions[index-1].id+"&option="+$(".block.sel div").attr("id"),function(data){
							
							if(data.indexOf("SUCCESS")!=-1){
								$(".block.sel .success").css("display","block");
							}else{
								$(".block.sel .failure").css("display","block");
								$("#P_"+data.split(":")[1]+" .success").css("display","block");
							}
							if(index==questions.length){
								$(".next").html("Finish");
							}else
								$(".next").html("Next");
							//proceed();
					});
					
					}else{
						proceed();
					}
					
					}else{
					
						proceed();
					}
					
				}
				
				function proceed(){
					
					$(".block").removeClass("sel");
					$(".block .success").css("display","none");
					$(".block .failure").css("display","none");
					var j=questions[index++];
				
					$("#OP1").html("<h2>"+j.OP1+"<h2>");
					$("#OP2").html("<h2>"+j.OP2+"<h2>");
					$("#OP3").html("<h2>"+j.OP3+"<h2>");
					$("#OP4").html("<h2>"+j.OP4+"<h2>");
					
					$("#Q").html("<h2>"+j.Q+"<h2>");
					$(".next").html("Submit");
				}
				
				$(".block").click(function(){
					if($(".next").html()=="Submit"){
				
					//$("div",$(this)).attr("id");
					$(".block").removeClass("sel");
					$(".block").addClass("unsel");
					$(this).removeClass("unsel");
					$(this).addClass("sel");//attr("id");
					
					}
					
				});
			
			 
			 
			</script>

</body>
</html>