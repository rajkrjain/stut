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
	height: 100%;
	width: 90%;
	float: left;
}

.part3 {
	width: 10%;
	height: 100%;
	float: left;
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
	cursor: pointer;
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
	width: auto;
	height: 40px;
	float: right;
}

.poptb {
	display: none;
	width: 52px;
	z-index: 1000px;
	width: 300px;
	height: 40px;
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
	width: 42px;
}

.block button {
	width: 50%;
	margin-left: 25%;
	height: 30px;
	margin-top: 20px;
}

.innerD {
	width: 100%;
	height: 15%;
	border-bottom: 1px solid #eee;
	background-color: #fff;;
}

table {
	width: 100%;
}

td {
	width: 50%;
	text-align: center;
}

.primary {
	font-weight: 700;
	font-size: .9em;
	color: #07ade0;
	display: block;
	margin: .6em 0;
	margin-top: .1em;
	margin-left: 4px;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
	cursor: pointer;
}

.type {
	font-weight: 700;
	font-size: .7em;
	color: #07ade0;
	display: block;
	margin: .6em 0;
	margin-top: .1em;
	margin-left: 4px;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}

.left_align {
	float: left;
}

.right_align {
	float: right;
}

.part3 table td {
	cursor: pointer;
	font-size: 12pt;
	background: #ddd;
	border-radius: 5px;
	font-weight: bold;
}

.part3 table td:hover {
	background: #ccc;
	color: red;
	cursor: pointer;
	font-weight: bold;
	border-radius: 5px;
}

.head input {
	border: 1px solid #ccc;
	padding: 9px 8px 7px;
	width: 40%;
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
	<input type="hidden" value="<%=request.getParameter("layout")%>"
		id="layout" />
	<div class="mainview" align="left">
		<div class="head" align="center">
			<input type="text" placeholder="Search..........." />
		</div>

		<div class="body">

			<div class="part2">

				<div class="innerD"></div>
				<div class="innerD"></div>


			</div>

			<div class="part3">

				<table>
					<tr>
						<td>A</td>
						<td>B</td>
					</tr>
					<tr>
						<td>C</td>
						<td>D</td>
					</tr>
					<tr>
						<td>E</td>
						<td>F</td>
					</tr>
					<tr>
						<td>G</td>
						<td>H</td>
					</tr>
					<tr>
						<td>I</td>
						<td>J</td>
					</tr>
					<tr>
						<td>K</td>
						<td>L</td>
					</tr>
					<tr>
						<td>M</td>
						<td>N</td>
					</tr>
					<tr>
						<td>O</td>
						<td>P</td>
					</tr>
					<tr>
						<td>Q</td>
						<td>R</td>
					</tr>
					<tr>
						<td>S</td>
						<td>T</td>
					</tr>
					<tr>
						<td>U</td>
						<td>V</td>
					</tr>
					<tr>
						<td>W</td>
						<td>X</td>
					</tr>
					<tr>
						<td>Y</td>
						<td>Z</td>
					</tr>
				</table>
			</div>



		</div>

		<div class="foot"></div>


	</div>
	<script>
		
			var appMessage = JSON.parse("{\"layouts\":[{\"template\":\"study.jsp\",\"logo\":\"tools.png\",\"default_field\":\"Meaning\",\"primary_category\":\"category\",\"name\":\"Study\",\"infotabs\":\"Meaning,Synonym,Antonym,Usage\",\"primary_type\":\"Type\",\"format\":\"info\",\"primary_field\":\"Word\",\"dataFile\":\"info_data.xml\"},{\"template\":\"quiz.jsp\",\"logo\":\"tools.png\",\"name\":\"Quiz\",\"format\":\"quiz\",\"dataFile\":\"quiz_data.xml\"},{\"template\":\"browse.jsp\",\"logo\":\"tools.png\",\"primary_category\":\"category\",\"name\":\"Browse\",\"primary_type\":\"Type\",\"format\":\"browse\",\"primary_field\":\"Word\",\"dataFile\":\"info_data.xml\"}]}");
			  var layObj=null;
			  var js=JSON.parse("{\"data\":{\"info\":{\"Meaning\":\"\",\"category\":\"L\",\"index\":1,\"Synonym\":\"dddd\",\"Word\":\"TT\",\"Type\":\"TT\",\"Usage\":\"\",\"Antonym\":\"\"}}}");
			   $.each(appMessage.layouts,function(i,j){
						
						if(j.name==$("#layout").val()){
						
							layObj=j;
							
						}
						
						
				});
				
				var data=new Array();
				$(".part2").html("");
			 $.each(js.data,function(i,j){
				
				data[data.length]=j;			
				
				
				
				$(".part2").append("<div class=\"innerD\"><div class=\"left_align\"><h2 class=\"primary\">"+j[layObj.primary_field]+"</h2><h2 class=\"type\">"+j[layObj.primary_type]+"</h2></div><div class=\"btw right_align\"><div class=\"buttonmask\"></div></div></div>");
				
			});
			
			$(".buttonmask").click(function(){
					$(".poptb").height($(this).height());
					$(".poptb").css({"left":$(this).position().left-306});
					$(".poptb").css({"top":$(this).position().top+6});
					//if($(".poptb").css("display")=="none")
						if($(".poptb").css("display")!="none" && lastLeft!=$(this).attr("id")){
						}else
							$(".poptb").animate({"width":"toggle"},500);
						lastLeft=$(this).attr("id");
			  });

			
			</script>

	<div class="poptb"></div>

</body>
</html>