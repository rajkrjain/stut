<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<script type="text/javascript" src="media/js/jquery.tools.min.js"></script>
<link rel="stylesheet" href="media/css/tabs.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="media/css/tabs-panes.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="css/srijna.css" type="text/css"
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
	width: 100%;
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
	display: block;
	border-bottom: 1px solid #eee;
	background: #ccc;
	background-color: #ccc;
}

td.left {
	width: 70%;
}

td.right {
	width: 30%;
}

.tabs1 {
	width: 100%;
	height: auto;
	padding: 0px;
	margin: 0px;
}

.part2 div a {
	height: 100%;
	float: left;
	color: black;
	text-align: center;
	text-decoration: none;
	font-size: 14px;
	font-weight: bold;
	width: 70%;
}

.part2 .tiopdiv {
	background: url('image_data/topnav-bg.gif');
	height: 14%;
	border: 1px solid #aaa;
	border-radius: 7px;
}

.part2 img {
	float: left;
	max-height: 100%;
}

.subhead {
	width: 100%;
	float: left;
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
	width: 98%;
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

.dialog .header img {
	float: left;
	position: absolute;
	max-height: 100%;
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



			<div class="part2">






				<!-- 
				<div class="panes">
				<div class="ddiv">
  
  <h2 class="subhead">Audio  Mode</h2>
  <table>
    <tr>
      <td class="left">All</td>
      <td class="right"><input type="checkbox" name="chk_settings_study_audio_mode_all" id="chk_settings_study_audio_mode_all" /></td>
    </tr>
    <tr>
      <td>Usage</td>
      <td><input type="checkbox" name="chk_settings_study_audio_mode_usage" id="chk_settings_study_audio_mode_usage" />
      <label for="chk_settings_study_audio_mode_usage"></label></td>
    </tr>
    <tr>
      <td>Antonyms</td>
      <td><input type="checkbox" name="chk_settings_study_audio_mode_antynyms" id="chk_settings_study_audio_mode_antynyms" />
      <label for="chk_settings_study_audio_mode_antynyms"></label></td>
    </tr>
    <tr>
      <td>Synomyms</td>
      <td><input type="checkbox" name="chk_settings_study_audio_mode_synonyms" id="chk_settings_study_audio_mode_synonyms" />
      <label for="chk_settings_study_audio_mode_synonyms"></label></td>
    </tr>
    <tr>
      <td>Pause between words in seconds</td>
      <td><input type="checkbox" name="chk_settings_study_audio_mode_pause_words" id="chk_settings_study_audio_mode_pause_words" />
      <label for="chk_settings_study_audio_mode_pause_words"></label></td>
    </tr>
    <tr>
      <td>Pause between Usage / Antonyms / Synonyms in seconds</td>
      <td><input type="checkbox" name="chk_settings_study_audio_mode_pause_usage" id="chk_settings_study_audio_mode_pause_usage" />
      <label for="chk_settings_study_audio_mode_pause_usage"></label></td>
    </tr>
  </table>
  <h2 class="subhead">Study Timer</h2>
  <table>
    <tr>
      <td width="440">Time before word details are displayed in seconds</td>
      <td><label for="txt_settings_study_timer"></label>
      <input name="txt_settings_study_timer" type="text" id="txt_settings_study_timer" maxlength="2" /></td>
    </tr>
  </table>
  
  
  
				</div>
				<div class="ddiv">
					<p><strong>Test</strong></p>
  <table>
    <tr>
      <td class="left">Auto move to next question</td>
      <td class="right"><input type="checkbox" name="chk_settings_test_auto_move" id="chk_settings_test_auto_move" />
      <label for="chk_settings_test_auto_move"></label></td>
    </tr>
    <tr>
      <td>Result display duration in seconds</td>
      <td><label for="txt_settings_test_result_display_in_seconds"></label>
      <input type="text" name="txt_settings_test_result_display_in_seconds" id="txt_settings_test_result_display_in_seconds" /></td>
    </tr>
    <tr>
      <td>Vibrate for incorrect answers?</td>
      <td><input type="checkbox" name="chk_settings_study_test_vibrate" id="chk_settings_study_test_vibrate" />
      <label for="chk_settings_study_test_vibrate"></label></td>
    </tr>
  </table>
				</div>
				<div class="ddiv">
					<strong>Browse</strong></p>
<p>Knowledge Level</p>
<table>
  <tr>
    <td>Show level for each word</td>
    <td><input type="checkbox" name="chk_settings_browse_show_level" id="chk_settings_browse_show_level" />
      <label for="chk_settings_browse_show_level"></label></td>
  </tr>
</table>
				</div>
				
				
				<div class="ddiv">
					<p><strong>Progress</strong></p>
<p>Target completion date</p>
<p>&nbsp;</p>

				</div>
				
				<div class="ddiv">
					<strong>Application</strong></p>
<p>Reset</p>
<table>
  <tr>
    <td>Do you want to reset the application including customization, filter and knowledge levels of the barely?</td>
    <td><input type="submit" name="btn_settings_application_reset_ok" id="btn_settings_application_reset_ok" value="Ok" />
      <input type="submit" name="btn_settings_application_reset_cancel" id="btn_settings_application_reset_cancel" value="Cancel" /></td>
  </tr>
  <tr>
    <td>Enable 3D flip rotation</td>
    <td><input type="checkbox" name="chk_settings_application_flip_3d" id="chk_settings_application_flip_3d" />
      <label for="chk_settings_application_flip_3d"></label></td>
  </tr>
</table>

				</div>
			
			</div>
			
		-->


			</div>



			<div class="foot"></div>


		</div>

		<div class="settings dialog">
			<div class="header">
				<img src="" />
				<h1 class="logo">Quiz Statistics</h1>
			</div>

			<div></div>

		</div>
		<script>
				$(".settings").overlay({
				top: 0,
				left:0,
				mask: {  color: '#fff',   loadSpeed: 200,   opacity: 0.5  },
				onBeforeLoad:function() {
                      $.get("actions.jsp?action=STATS",function(data){
			
					  });          
				},

				closeOnClick: false,
				load: false

			});
				function loadSettings(){
					
					$(".settings").overlay().load();
				}
			  processLayouts();
			  
			  function processLayouts(){
			  
				$.getJSON('json/application.json', function(appMessage) {
				
					$(".part2 .tabs1").html("");
				
					$.each(appMessage.layouts,function(i,j){
					
						if(j.format!="settings"){
				
							$(".part2").append("<div class=\"tiopdiv\"><img class=\"logo\" src=\"image_data/"+j.logo+"\"></img><a class=\"s_header\" href=\"#first\">"+j.name+"</a></div>");
						}
									
					});
					$(".part2").append("<div class=\"tiopdiv\"><img class=\"logo\" src=\"image_data/"+appMessage.logo+"\"></img><a class=\"s_header\" href=\"#first\">Application</a></div>");
					
					
					$(".part2 .tiopdiv").click(function(){
					
						$(".settings .header img").attr("src",$(".logo",$(this)).attr("src"));
						$(".settings .header .logo").html($(".s_header",$(this)).html());
						loadSettings();
					});
			
				});
			
				
			  }
			   
			</script>
</body>
</html>