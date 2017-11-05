<?php

include ("dbconnector.php");

$connector = new DbConnector();

if($_POST)
{

$q=$_POST['searchword'];

$qry="select * from chapters where title like '%$q%'  order by id";

$result = $connector->query($qry);

while($row=mysql_fetch_array($result))
{
$chapno=$row['capno'];
$chaptext=$row['title'];

?>

<div class="display_box" align="left" style="color:#000000;">
 <div id="chapters" style="border:thin; border-style:solid; border-color:#933;"> 
 <p> <strong>Chapter</strong></p>
 <p>Chapter Number : <?php echo $chapno; ?> </p>
 <p>Chapter Title: <?php echo $chaptext; ?> </p>
 </div>
 <p><strong>Sections for Chapter <?php echo $chapno; ?> </strong></p>
    <?php $qry2="select * from sections where capno='$chapno'"; 
	$result2 = $connector->query($qry2);
	    while($row2=mysql_fetch_array($result2))
{
	$secno=$row2['secno'];
	$sectext=$row2['title'];

	?>
 <div id="kids" style="border:thin; border-style:solid; border-color:#0F9;">
 <div id="sections"> 
 
 <p><u>Section <?php echo $secno; ?>, <?php echo $sectext; ?> </u></p>

 </div>
 <p><strong>Clauses for Section <?php echo $secno; ?></strong> </p> 
       <?php $qry3="select * from clauses where secno='$secno'"; 
	$result3 = $connector->query($qry3);
	    while($row3=mysql_fetch_array($result3))
{
	$clno=$row3['clno'];
	$cltext=$row3['title'];

	?>
 
 <div id="clauses" style="border:thin; border-style:solid; border-color:#0FF;"> 

 <p>Clause <?php echo $clno; ?>, <?php echo $cltext; ?> </p>
 
 </div>
 </div>
 <?php } ?>
 <?php } ?>
 <hr />
</div> 


<?php 
}
}
else
{
  echo "No march for your search query was found";
}


?>
