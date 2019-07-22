<?php
	$link = mysqli_connect("localhost", "root","");
	if (!$link) {
		echo "Can not connect to mysql";
		exit();
	}

	if (!mysqli_select_db($link, "location")) {
		echo "can not select Database";
		exit();
	}
?>