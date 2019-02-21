<?php
	include("connection.php");
	
	
	$keyword 	= (string)$_POST["keywords"];
	$limit		= (int)$_POST["limit"];
	
	$sql = "SELECT `id`,`name` 
			FROM `products` 
			WHERE `status` = 1 
			AND `name` LIKE '%{$keyword}%' 
			ORDER BY `order` ASC, `name` ASC 
			-- LIMIT {$limit};
			LIMIT " . $limit;
	
	$result = mysqli_query($link, $sql);

	$books = array();        /* Cần phải khai báo là 1 mảng rỗng từ ban đầu, để khi không có kết quả tìm kiếm thì vẫn trả dc về bên ajax là
								 một đối tượng ajax rỗng và kiểm tra dc length của đối tượng json trả về là 0 */
	while($row = mysqli_fetch_assoc($result)){
		$books[] = $row;	
	}
	
	$bookObj = json_encode($books);
	echo $bookObj;