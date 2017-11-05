<?php 
session_start();

include ("dbconnector.php");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Online Justice :: Uganda Constitution</title>
<link href="css/page-styling.css" rel="stylesheet" type="text/css" media="screen"  />
<link href="css/jquery_notification.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/themes/cupertino/jquery.ui.all.css" type="text/css">

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.watermarkinput.js"></script>
<script type="text/javascript" src="js/jquery_notification_v.1.js"></script>
<script type="text/javascript" src="js/jquery.watermarkinput.js"></script>
<script type="text/javascript" src="js/ui/jquery.ui.core.js"></script>
<script type="text/javascript" src="js/ui/jquery.ui.widget.js"></script>
<script type="text/javascript" src="js/ui/jquery.ui.tabs.js"></script>
<script type="text/javascript" src="js/ui/jquery.ui.datepicker.js"></script>
<script type="text/javascript" src="js/modernizr-2.0.6.js"></script>
<script type="text/javascript" src="js/webforms2-0.5.4/webforms2.js"></script>
<script src="js/tooltip-inputboxes.js" type="text/javascript"></script>
<script type="text/javascript">
	$(function() {
		$("#tabs").tabs();
	});
	</script>
<script type="text/javascript">
            $(document).ready(function(){
			 showErrorMessage();
            });
</script>
 
<script type="text/javascript">
	$(function() {
		$('#datepicker').datepicker();
	});
	</script>

<script type="text/javascript">
$(document).ready(function(){

$("#search").keyup(function() 
{
var searchbox = $(this).val();
var dataString = 'searchword='+ searchbox;

if(searchbox=='')
{
}
else
{
$.ajax({
type: "POST",
url: "search.php",
data: dataString,
cache: false,
success: function(html)
{

$("#display").html(html).show();
}
});
}return false;    
});
});
$(document).mouseup(function()
{
$('.search').show();
$('#display').hide();
});
jQuery(function($){
   $("#search").Watermark("Search");
   });
</script>

</head>

<body>
<script type="text/javascript">
        function showErrorMessage(){
        showNotification({
        type : "information",
        message: "Welcome Guest to Online Justice :: Uganda  and have A good time",
		autoClose: true,
        duration: 5 
                                    });    
                                }                                
        </script> 
<table width="980" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td colspan="3">
    <div class="logo"> <img src="images/logo.png" alt="logo" /></div>
    <div class="tagline"><h2> Electronic Ugandan Penal Codes </h2></div>
    </td>
  </tr>
  <tr>
     <td width="300">
     </td>
    <td align="" width="380">
    <div id="error" style="width:380px;">
    <?php
	if( isset($_SESSION['ERRMSG_ARR']) && is_array($_SESSION['ERRMSG_ARR']) && count($_SESSION['ERRMSG_ARR']) >0 ) {
		
		foreach($_SESSION['ERRMSG_ARR'] as $msg) {
			echo '<img src="images/ex.png"> - <strong><font color="red">',$msg ,'</font></strong>'; 
		}
		unset($_SESSION['ERRMSG_ARR']);
	}
?>
	
    </div>
    <div id="tabs" style="font-size:12px; width:580px; ">
    
    <ul>
	<li><a href="#tabs-1">Welcome Guest - Search Alligation</a></li>
	</ul>
    
    <div id="tabs-1">
    <div>
    <p> 1. Type in the below search box a title of the chapter </p>
    <p> 2. Search results will automatically be filled in for you </p>
    <p> 3. An empty screen means a missing result for the search string</p>
    </div>
   <div style=" height:50px;">
    <form action="" method="post" name="search" style="">
 <div><input name="search" type="text" id="search" value="" style=" float:left" /><img src="images/search_btn.gif" alt="search"  style="float:left"/> </div>
    </form>
   </div>
      
    
    <div style="width:580px;" >
    </div> <span id="display"> </span> 
    </div>
    
    </div>    
    </div>
    </td>
    <td width="300">
    </td>
  </tr>
    <tr>
    <td colspan="3">
    <div>
    &nbsp;
    </div>
    </td>
  </tr>
  <tr>
    <td colspan="3">
    <div class="footer" style="background-image:url(images/footer.png); float:right; width:230px; height:170px; ">
    
    </div>
    </td>
  </tr>
  
</table>
</body>
</html>

