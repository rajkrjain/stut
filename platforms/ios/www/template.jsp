<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<script type="text/javascript" src="media/js/jquery.tools.min.js"></script>
<link rel="stylesheet" href="media/css/tabs.css"
      type="text/css" media="screen" />
<link rel="stylesheet" href="media/css/tabs-panes.css"
      type="text/css" media="screen" />
<style>
	.vt h2 {
    margin-top:0px;
    margin-bottom:0px;
    color:#fff;
    background-color:#6D84B4;
    padding:2px 1px;
	width:95%;
	border-radius:5px 5px 0 0;	
	text-align:center;
    border:1px solid #3B5998;
    font-size:14px;
	font-weight:normal;
  }
  
	body{
		background:#fff;
	
	}

	.mainview{
	
		
		
		-webkit-background-clip: padding;
		background-clip: padding-box;
		-webkit-border-radius: .6em /*{global-radii-blocks}*/;
		border-radius: .6em /*{global-radii-blocks}*/;
		color: #333 /*{c-body-color}*/;
		text-shadow: 0 /*{c-body-shadow-x}*/ 1px /*{c-body-shadow-y}*/ 0 /*{c-body-shadow-radius}*/ #fff /*{c-body-shadow-color}*/;
		
		font-family: 'Open Sans', sans-serif;
		font-weight: 300;
		font-size: 0.95em;
		border-top: none;
		width: 80%;
		margin-left:10%;
		box-shadow: 0 4px 23px 5px rgba(0, 0, 0, 0.2), 0 2px 6px rgba(0,0,0,0.15);
		height:100%;
		
	}
	.head{
		font-weight: 700;
		font-size: .9em;
		color: #07ade0;
		margin-top: .1em;
		
		height:10%;
		
		text-overflow: ellipsis;
		border: 1px solid #eee /*{d-bup-border}*/;
		border-width: 0;
		border-radius: .6em .6em 0 0;
border-top-width: 1px;
margin-top:0px;
background: url('image_data/topnav-bg.gif'); 
font-weight: bold;
color: #333 /*{d-bup-color}*/;
text-shadow: 0 /*{d-bup-shadow-x}*/ 1px /*{d-bup-shadow-y}*/ 0 /*{d-bup-shadow-radius}*/ #fff /*{d-bup-shadow-color}*/;
		
	}
	.foot{
		font-weight: 700;
		font-size: .9em;
		color: #07ade0;
		margin-top: .1em;
		
		height:10%;
		border-right-width: 1px;
		border-left-width: 1px;
		
		text-overflow: ellipsis;
		border: 1px solid #eee /*{d-bup-border}*/;
		border-width: 0;
		border-radius: 0 0 .6em .6em ;
border-top-width: 1px;
margin-top:0px;
background: url('image_data/topnav-bg.gif'); /*{d-bup-background-color}*/;
font-weight: bold;
color: #333 /*{d-bup-color}*/;
text-shadow: 0 /*{d-bup-shadow-x}*/ 1px /*{d-bup-shadow-y}*/ 0 /*{d-bup-shadow-radius}*/ #fff /*{d-bup-shadow-color}*/;

	}
	.body{
		
		height:80%;
		margin-top:-1px;
		padding:0px;
		
		
	}
	
	.text1{
		
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
	.part1{
		
		height:10%;
		border-bottom:1px solid #ddd;
	}
	
	.part2{
		
		height:100%;
		
	}
	
	.part3{
	
		height:10%;
	}
	.part2 p{
	
		font-weight: 300;

color: #777;
margin-bottom: .1em;
display: block;
margin:0;
font-family: 'Open Sans', sans-serif;
white-space: normal;
font-size: 1.05em;
	}
	
	.buttonmask{
	
		width:40px;
		height:38px;
		border:3px solid #666;
		padding:3px;
		background:#ccc;
		border-radius:25px;
		margin-left:2px;
		margin-top:3px;
		
	}
	.buttonmaskbig{
	
		width:48px;
		height:48px;
		border:3px solid #666;
		padding:3px;
		background:#ccc;
		border-radius:30px;
		margin-left:2px;
		
	}
	.btw{
		width:20%;
		height:40px;
		float:left;
	}
	.poptb{
		display:none;
		width:52px;
		z-index:1000px;
		height:300px;
		
		position:absolute;
		background:#ccc;
		top:11%;
		left:10.6%;
		border:3px solid #aaa;
		border-radius:10px;
		
	}
	.block{
	
		width:225px;
		height:135px;
		background:white;
		margin-left:10px;
		border:5px solid #aaa;
		border-radius:10px;
		opacity:0.8;
		box-shadow: 0 4px 23px 5px rgba(0, 0, 0, 0.2), 0 2px 6px rgba(0,0,0,0.15);
		float:left;
	}
	
	.block p {
   
   
	text-align:left;
    
    font-size:12px;
	font-weight:normal;
	width:50%;
	float:left;
	
  }
  .block .alg{
  
	position:absolute;
	width:42px;
  }
  .block button{
  
	
	width:50%;
	margin-left:25%;
	height:30px;
	margin-top:20px;
  }
  
  .part2_left{
  
	width:10%;
	height:100%;
	
	border:1px solid #f0f0f0;
	
	float:left;
  }
  
  .part2_left .vt{
	padding:4%;
	margin:4%;
	margin-top:7%;
	float:left;
	width:82%;
	height:15%;
	background-color: #f0f0f0;
	border:1px solid #aaa;
	border-radius:10px;
	cursor:pointer;
  }
  .part2_right{
  
	width:89%;
	height:99%;
	float:left;
	
  }
  .part2_right iframe{
  
	width:100%;
	height:100%;
	border: none;
	
  }
  
  .head h2{
	margin:0px;
	padding:0px;
	
		
  }
  .left{
	float:right;
  }
</style>

</head>
<body >
	<div class="mainview" align="left" >
		<div class="head" align="center" >
			<div style="height:100%">
				<h2><%=request.getParameter("name")%></h2>
				<h2 class="left"><%=request.getParameter("name")%>@test.com</h2>
			</div>
		</div>
		
		<div class="body">
			
			<div class="part2">				
				
				<div class="part2_left">
					<div class="vt" layout="progress.html">
					</div>
					
					<div class="vt" layout="hihi.html">
					</div>
					<div class="vt" layout="quiz.html">
					</div>
					<div class="vt" layout="browse.html">
					</div>
					
					<div class="vt"  layout="settings.html">
					</div>
					
				</div>
				<div class="part2_right">
					<iframe src=""></iframe>
				</div>
			</div>

			
			
		</div>
		
		<div class="foot">
		</div>
		
		
	</div>
		<script>
			//layout=[{"template":"study.html","default_field":"Meaning","primary_category":"category","infotabs":"Meaning,Synonym,Antonym,Usage","primary_type":"Type","format":"info","primary_field":"Word","dataFile":"info_data.xml"}]/
			
				processLayouts();
			  
			  
			  
			  function processLayouts(){
				
				var appMessage = JSON.parse("{\"layouts\":[{\"template\":\"study.jsp\",\"logo\":\"tools.png\",\"default_field\":\"Meaning\",\"primary_category\":\"category\",\"name\":\"Study\",\"infotabs\":\"Meaning,Synonym,Antonym,Usage\",\"primary_type\":\"Type\",\"format\":\"info\",\"primary_field\":\"Word\",\"dataFile\":\"info_data.xml\"},{\"template\":\"quiz.jsp\",\"logo\":\"tools.png\",\"name\":\"Quiz\",\"format\":\"quiz\",\"dataFile\":\"quiz_data.xml\"},{\"template\":\"browse.jsp\",\"logo\":\"tools.png\",\"primary_category\":\"category\",\"name\":\"Browse\",\"primary_type\":\"Type\",\"format\":\"browse\",\"primary_field\":\"Word\",\"dataFile\":\"info_data.xml\"}]}");
			  
				$(".part2_left").html("<div class=\"vt\" layout=\"progress.jsp\"><h2>Progress</h2><img src=\"image_data/<%=request.getParameter("name")%>/tools.png\"/></div> ");	
				
				$.each(appMessage.layouts,function(i,j){
						
						$(".part2_left").append("<div class=\"vt\" layout=\""+j.template+"?layout="+j.name+"\"><h2>"+j.name+"</h2><img src=\"image_data/<%=request.getParameter("name")%>/"+j.logo+"\"/></div> ");					
						
				});
				$(".part2_left").append("<div class=\"vt\" layout=\"settings.jsp\"><h2>Settings</h2><img src=\"image_data/<%=request.getParameter("name")%>/tools.png\"/></div> ");					
			  }
			  
			  $(".part2_left .vt").click(function(){
				$(".part2_right iframe").attr("src",$(this).attr("layout"));
			});
			</script>
		
</body>
</html>