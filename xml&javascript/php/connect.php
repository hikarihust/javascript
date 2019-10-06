<?php
	$conn = mysqli_connect("localhost","root","");
	if(mysqli_connect_errno()){
		echo "Could not connect to mysql";
		exit;
	}
	
	if(!mysqli_select_db($conn, "jquery")){
		echo "Could not select database";
		exit;	
	}
	
	mysqli_query($conn, "set names 'utf8'");
?>