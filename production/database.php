<?php
	/*$server="localhost";
	$username="root";
	$password="";
	$dbname="test_db";*/

	$con=mysqli_connect("localhost","root","root","test");
	//$db=mysqli_select_db("db_res_allocation",$con);

	// Check connection
	if (!($con))
	{
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
	}
	//else
	//{
	//	echo "Connection established";
	//}
?>
