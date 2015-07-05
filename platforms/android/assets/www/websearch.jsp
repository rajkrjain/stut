<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.net.*" %>
<%@ page import="com.test.*" %>

<%

	String word=request.getParameter("word");
	
	
	
	
%>


<!DOCTYPE html>
<html>
<!--
   This is a jQuery Tools standalone demo. Feel free to copy/paste.
   http://flowplayer.org/tools/demos/

   Do *not* reference CSS files and images from flowplayer.org when in
   production Enjoy!
-->
<head>
  <title>jQuery Tools standalone demo</title>

    <!-- include the Tools -->
 <script src="media/js/jquery.tools.min.js"></script>
  

<style>
	
/*
  root element for the scrollable.
  when scrolling occurs this element stays still.
  */
.scrollable {

    /* required settings */
    position:relative;
    overflow:hidden;
    
    height:120px;

    /* custom decorations */
    border:1px solid #ccc;
    background:url(image_data/h300.png) repeat-x;
}

/*
   root element for scrollable items. Must be absolutely positioned
   and it should have a extremely large width to accomodate scrollable
   items.  it's enough that you set the width and height for the root
   element and not for this element.
*/
.scrollable .items {
    /* this cannot be too large */
    width:20000em;
    position:absolute;
    clear:both;
}

.items div {
    float:left;
    width:680px;
}

/* single scrollable item */
.scrollable img {
    float:left;
    margin:20px 5px 20px 21px;
    background-color:#fff;
    padding:2px;
    border:1px solid #ccc;
    width:100px;
    height:75px;

    -moz-border-radius:4px;
    -webkit-border-radius:4px;
}

/* active item */
.scrollable .active {
    border:2px solid #000;
    position:relative;
    cursor:default;
}


/* this makes it possible to add next button beside scrollable */
.scrollable {
    float:left;
}

/* prev, next, prevPage and nextPage buttons */
a.browse {
    background:url(image_data/hori_large.png) no-repeat;
    display:block;
    width:30px;
    height:30px;
    float:left;
    margin:40px 0px;
    cursor:pointer;
    font-size:1px;
}

/* right */
a.right { background-position: 0 -30px; clear:right; margin-right: 0px;}
a.right:hover { background-position:-30px -30px; }
a.right:active { background-position:-60px -30px; }


/* left */
a.left { margin-left: 0px; }
a.left:hover  { background-position:-30px 0; }
a.left:active { background-position:-60px 0; }

/* up and down */
a.up, a.down  {
    background:url(image_data/vert_large.png) no-repeat;
    float: none;
    margin: 10px 50px;
}

/* up */
a.up:hover { background-position:-30px 0; }
a.up:active { background-position:-60px 0; }

/* down */
a.down { background-position: 0 -30px; }
a.down:hover { background-position:-30px -30px; }
a.down:active { background-position:-60px -30px; }


/* disabled navigational button */
a.disabled {
    visibility:hidden !important;
}


.dialog {

border: 1px solid #a4baca;
background: #fdfdfd;
-webkit-border-radius: 4px;
border-radius: 4px;
-webkit-box-shadow: 0 1px 5px rgba(0,0,0,0.1);
-moz-box-shadow: 0 1px 5px rgba(0,0,0,0.1);
box-shadow: 0 1px 5px rgba(0,0,0,0.1);
-webkit-background-clip: padding-box;
background-clip: padding-box;
width:80%;

margin-left:10%;

height:auto;
display:none;
}

.dialog .header {
position: relative;
background: #517fa4;
height: 25px;
border: 1px solid #1c5380;
border-width: 1px 1px 0;
-webkit-box-shadow: 0 -1px 0 #06365f inset, 0 1px 0 rgba(255,255,255,0.2) inset;
-moz-box-shadow: 0 -1px 0 #06365f inset, 0 1px 0 rgba(255,255,255,0.2) inset;
box-shadow: 0 -1px 0 #06365f inset, 0 1px 0 rgba(255,255,255,0.2) inset;
-webkit-border-radius: 4px 4px 0 0;
border-radius: 4px 4px 0 0;
background-color: #517fa4;
background: #517fa4;

margin: -1px -1px 1px;
}
.dialog textarea{

	width:100%;
	height:50%;
}
.dialog .logo {


color: #fff;
font-size: 12px;
text-align: center;

font-family: "freight-sans-pro","proxima-nova","Helvetica Neue",Arial,Helvetica,sans-serif;
}
.dialog .close {
    background-image:url(image_data/close.png);
    position:absolute; 
	right:-8px;
	z-index:100;
	top:-8px;
	
    cursor:pointer;
    height:35px;
    width:35px;
}

#imgData {
    float:left;
    margin:5px 5px 5px 5px;
    background-color:#fff;
    padding:2px;
    border:1px solid #f0f0f0;
   
    -moz-border-radius:4px;
    -webkit-border-radius:4px;
}

</style>
</head>
<body style="margin:2px"><!-- HTML structures -->
<div id="toppanel" style="margin:0 auto; height:120px;">
<!-- "previous page" action -->
<a class="prev browse left"></a>

<!-- root element for scrollable -->
<div class="scrollable" id="scrollable">

  <!-- root element for the items -->
  <div class="items">

    <!-- 1-5 -->
	<%
		Vector<String> images = WebUtilities.getImages(word,
				"http://ajax.googleapis.com/ajax/services/search/images?v=1.0&safe=active&filter=1&q=",
				"unescapedUrl");
	int i=0;
	int s=0;
	int e=1;
				out.println("<div class=\"images\">");
	for(String o:images){
			
			out.println("<img src=\""+o.toString()+"\"/>");
			
	}		
   out.println("</div>");



    
	%>

  </div>

</div>

<!-- "next page" action -->
<a class="next browse right"></a>
</div>
<div class="fullimage dialog">
		<a  class="close"></a>
		<div class="header">
			<h1 class="logo">Full Image</h1>
		</div>
		
		<div id="imgData">
			
			
			<img src="" style="width:100%;height:100%"/>
			
			
			
		</div>
		
	</div>
	
<%
Vector v = WebUtilities.extractFromDictionary(word);
	
	out.println("<div class=\"data\">");
	if(v!=null){
	
		for(Object o:v){
		
			out.println(o.toString().trim());
		}
	}
	out.println("</div>");
%>
<!-- javascript coding -->
<script>
$(function() {

$(".fullimage").overlay({left:0,top:120,
				
				
				onBeforeLoad:function() {
                          
				},

				closeOnClick: false,
				load: false

			});
			
  // initialize scrollable
 
  $("#toppanel").width($(window).width());
  var w = $(window).width()*80/100;
  
  var nn = parseInt(w/132);
  
  var ni = $(".images img").length;
  
  var  start=1,end=nn;
  var l=start;
  var html="";
  $(".images img").each(function(i,j){
  
  if(l==start){
  
	html=html+"<div class=\"images\">";
  }
  
  html=html+"<img onclick=\"load(this.src)\" src=\""+$(j).attr("src")+"\"/>";
  
  
  if(l==end){
  
	html=html+"</div>";
	l=start-1;
  }
  l++;
	//alert($(j).attr("src"));
  
  });
  
  $(".items").html(html);
  
  $(".scrollable").width(w); 
  $(".scrollable").scrollable();
});
function load(src){
	var ww=($(window).height()-130);
	$("#imgData").css("max-width",ww+"px");
	$(".fullimage").css("max-width",ww+"px");
	$("#imgData").css("max-height",(ww-20)+"px");
	$("#imgData img").css("max-height",(ww-35)+"px");
	$(".fullimage").css("max-height",ww+"px");
	$(".fullimage").css("margin-left",($(window).width()-ww)/2+"px");
	$(".fullimage .logo").html(src);
	$("#imgData img").attr("src",src);
	$(".fullimage").overlay().load();
}
</script>
</body>
</html>