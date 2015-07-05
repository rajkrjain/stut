<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<script type="text/javascript" src="jquery.tools.min.js"></script>
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
	width: 42px;
}

.block button {
	width: 50%;
	margin-left: 25%;
	height: 30px;
	margin-top: 20px;
}
</style>

</head>
<body>
	<div class="mainview" align="left">
		<div class="head"></div>

		<div class="body">

			<div class="part2">

				<div id="chart_div"></div>


			</div>



		</div>

		<div class="foot"></div>


	</div>
	<script type="text/javascript" src="https://www.google.com/jsapi"></script>
	<script type="text/javascript">

      // Load the Visualization API and the piechart package.
      google.load('visualization', '1.0', {'packages':['corechart']});

      // Set a callback to run when the Google Visualization API is loaded.
      google.setOnLoadCallback(drawChart);

      // Callback that creates and populates a data table,
      // instantiates the pie chart, passes in the data and
      // draws it.
      function drawChart() {

        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Topping');
        data.addColumn('number', 'Slices');
        data.addRows([
          ['Mushrooms', 3],
          ['Onions', 1],
          ['Olives', 1],
          ['Zucchini', 1],
          ['Pepperoni', 2]
        ]);

        // Set chart options
        var options = {'title':'How Much Pizza I Ate Last Night',
                       'width':400,
                       'height':300};

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      }
    </script>

</body>
</html>