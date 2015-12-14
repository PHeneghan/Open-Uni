<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="CSS1.css" />	<!-- External CSS file -->
	<style type="text/css">
		
		table {margin-left: auto; margin-right: auto; text-align: center;}
		body {text-align: center;}
		
</style>
	
	
	<title>Course Texts Lists</title>
</head>
<body>
<?php
$con = mysql_connect("localhost","root");
if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  }

mysql_select_db("student", $con);

$result = mysql_query("SELECT `Title`,`Publiser`,`Revison` \n"
    . "FROM `coursetexts`");


echo "<table border='1'>
<tr>
<th>Title</th>
<th>Publisher</th>
<th>Revision</th>
</tr>";

while($row = mysql_fetch_array($result))
  {
  echo "<tr>";
  echo "<td>" . $row['Title'] . "</td>";
  echo "<td>" . $row['Publiser'] . "</td>";
  echo "<td>" . $row['Revison'] ."</td>";
  echo "</tr>";
  }
echo "</table>";

mysql_close($con);
?> 

<a href="./home page.html" title="Home">
Home
</a>

</body>