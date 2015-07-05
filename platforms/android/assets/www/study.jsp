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
	height: 13%;
	border-right-width: 1px;
	border-left-width: 1px;
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
	height: 77%;
	margin-top: -1px;
	padding: 0px;
}

.speak {
	
}

.text1 {
	font-weight: 700;
	font-size: .9em;
	color: #07ade0;
	float: left;
	display: block;
	margin: .6em 0;
	margin-top: .1em;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}

.part1 {
	height: 12%;
}

.part1 .content {
	padding: 8px;
	height: 100%;
	width: 100%;
}

.part2 {
	height: 88%;
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
	max-height: 50px;
	max-width: 50px;
	width: 40px;
	height: 38px;
	border: 3px solid #666;
	margin-top: 3px;
	background: #ccc;
	border-radius: 30px;
	margin-left: 2px;
	cursor: pointer;
}

.buttonmaskbig {
	max-height: 60px;
	max-width: 60px;
	cursor: pointer;
	width: 48px;
	height: 48px;
	border: 3px solid #666;
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
</style>

</head>
<body>
	<input type="hidden" value="<%=request.getParameter("layout")%>"
		id="layout" />
	<div class="mainview" align="left">
		<div class="head">
			<div class="btw" align="left">
				<div class="buttonmask" id="one"></div>
			</div>
			<div class="btw" align="left">
				<div class="buttonmask" id="two"></div>
			</div>
			<div class="btw" align="center">
				<div class="buttonmaskbig" id="three"></div>
			</div>
			<div class="btw" align="right">
				<div class="buttonmask" id="four"></div>
			</div>

			<div class="btw" align="right">
				<div class="buttonmask" id="five"></div>
			</div>
		</div>

		<div class="body">
			<div class="part1">
				<div class="content">
					<h2 class="text1" id="primary_field">Test</h2>
					<h2 class="text1" id="primary_type">(Test)</h2>
					<img src="info.png" /> <img class="speak" src="info.png" />
				</div>
			</div>
			<div class="part2">
				<ul class="tabs">
					<li><a href="#first">Tab 1</a></li>
					<li><a href="#second">Tab 2</a></li>
					<li><a href="#third">Tab 3</a></li>
				</ul>

				<!-- tab "panes" -->
				<div class="panes">
					<div class="ddiv">
						First pane. <a href="#third">open third tab</a>
					</div>
					<div class="ddiv">
						Second pane. You can open other tabs with normal <a href="#first">anchor
							links</a>
					</div>
					<div class="ddiv">Third tab content</div>
				</div>

				<script>
			var lastLeft=null;
			//alert($(".head").height());
			$(document).ready(function(){
				//alert($(".head").height()-6);
				$(".btw").height($(".head").height()-6);
				$(".buttonmask").height($(".head").height()-12);
				$(".buttonmaskbig").height($(".head").height()-6);
				$(".buttonmaskbig").width($(".head").height()-6);
				$(".buttonmask").width($(".head").height()-12);
				next(true);
			});
			
			
			$(".poptb").animate({"height":"toggle"},0);
			  $(".buttonmaskbig").click(function(){
					
					$(".poptb").width($(this).width());
					$(".poptb").css({"left":$(this).position().left});
					$(".poptb").css({"top":$(this).position().top + 6+$(this).height()});
					if($(".poptb").css("display")!="none" && lastLeft!=$(this).attr("id")){
						
						}else
							$(".poptb").animate({"height":"toggle"},500);
						lastLeft=$(this).attr("id");
			  });
			  $(".buttonmask").click(function(){
					$(".poptb").width($(this).width());
					$(".poptb").css({"left":$(this).position().left});
					$(".poptb").css({"top":$(this).position().top + 12+$(this).height()});
					//if($(".poptb").css("display")=="none")
						if($(".poptb").css("display")!="none" && lastLeft!=$(this).attr("id")){
						}else
							$(".poptb").animate({"height":"toggle"},500);
						lastLeft=$(this).attr("id");
			  });
				$(function() {
			  // setup ul.tabs to work as tabs for each div directly under div.panes
			  $("ul.tabs").tabs("div.panes > div");
			 
			  });
			  var appMessage = JSON.parse("{\"layouts\":[{\"template\":\"study.jsp\",\"logo\":\"tools.png\",\"default_field\":\"Meaning\",\"primary_category\":\"category\",\"name\":\"Study\",\"infotabs\":\"Meaning,Synonym,Antonym,Usage\",\"primary_type\":\"Type\",\"format\":\"info\",\"primary_field\":\"Word\",\"dataFile\":\"info_data.xml\"},{\"template\":\"quiz.jsp\",\"logo\":\"tools.png\",\"name\":\"Quiz\",\"format\":\"quiz\",\"dataFile\":\"quiz_data.xml\"},{\"template\":\"browse.jsp\",\"logo\":\"tools.png\",\"primary_category\":\"category\",\"name\":\"Browse\",\"primary_type\":\"Type\",\"format\":\"browse\",\"primary_field\":\"Word\",\"dataFile\":\"info_data.xml\"}]}");
			  var layObj=null;
			  var js=JSON.parse("{\"data\":{\"info\":{\"Meaning\":\"\",\"category\":\"L\",\"index\":1,\"Synonym\":\"dddd\",\"Word\":\"TT\",\"Type\":\"TT\",\"Usage\":\"\",\"Antonym\":\"\"}}}");
			   $.each(appMessage.layouts,function(i,j){
						
						if(j.name==$("#layout").val()){
						
							layObj=j;
							
						}
						
						
				});
				
				var data=new Array();
			 $.each(js.data,function(i,j){
				
				data[data.length]=j;
			})  
			createTabs(layObj);
			var index=-1;
			
			function next(val){
			
				var cData=null;
				
				if(val){
					index++;
					
				}else{
				
					index--;
					
				}
				
				cData=data[index];
				
				if(data.length==(index+1)){
				
					$("#next_b").css("opacity","0.5");
					
				}
				
				if(index<=0){
					$("#prev").css("opacity","0.5");
					
				}
				
				
				
				$("#primary_field").html(cData[layObj.primary_field]);
				$("#primary_type").html("&nbsp;( "+cData[layObj.primary_type]+" ) ");
				
				
				var tabs=layObj.infotabs.split(",");
				$(".part2 .panes").html("");
				for(var i=0;i<tabs.length;i++){
					$(".part2 .panes").append("<div class=\"ddiv\"><a style=\"display:none\" id=\"tablink_"+tabs[i]+"\"  href=\"#"+tabs[i]+"\">"+tabs[2]+"</a>"+cData[tabs[i]]+"</div>");
					
					
				}
				
				
			}
			
			function createTabs(layout){
					var tabs=layout.infotabs.split(",");
					$(".part2 .tabs").html("");
					
					for(var i=0;i<tabs.length;i++){
						$(".part2 .tabs").append("<li id=\""+tabs[i]+"\"><a href=\"#"+tabs[i]+"\">"+tabs[i]+"</a></li>");
						/*$(".part2 .panes").append("<div class=\"ddiv\">"+tabs[i]+"</div>");
						<div class="ddiv">
						First pane. <a href="#third">open third tab</a>
						</div>*/
					
					}
					
			}
			
			
			</script>
			</div>

		</div>

		<div class="foot" align="center">
			<button onclick="next(true);" class="next" id="prev">Prev</button>
			<button onclick="next(false);" class="next" id="next_b">Next</button>
		</div>


	</div>
	<div class="poptb"></div>
</body>
</html>