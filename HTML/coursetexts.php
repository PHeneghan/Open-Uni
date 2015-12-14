<html lang="en-US">
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="CSS1.css" />
<title>ODDLU Course Texts</title>
</head>

<body>

<?php
$con = mysql_connect("localhost","root");
if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  }

mysql_select_db("student", $con);

$sql="INSERT INTO coursetexts (Title,Publiser,Revison, CourseID)
VALUES
('$_POST[Title]','$_POST[Publiser]','$_POST[Revison]','$_POST[CourseID]')";

if (!mysql_query($sql,$con))
  {
  die('Error: ' . mysql_error());
  }
echo "1 record added";

mysql_close($con);
?> 
<a  href="./home page.html" title="Home" >
Home
</a>

</body>
</html>