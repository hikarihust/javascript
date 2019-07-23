<?php 
	include("connection.php");
	// Đưa dữ liệu trong bảng City vào 1 mảng
	$citySql = "SELECT * FROM `cities` WHERE `status`=1 ORDER BY `order` ASC, `name` ASC";
	$cityData = mysqli_query($link, $citySql);
	$cityArr = array();

	while ($row=mysqli_fetch_assoc($cityData)) {
		$cityArr[] = array('id' => $row['id'], 'name' => $row['name']);
	}

	$cityObj = json_encode($cityArr);
	// =========================================================================================
	// Đưa dữ liệu trong bảng District vào 1 mảng
	$districtSql = "SELECT * FROM `districts` WHERE `status`=1 ORDER BY `order` ASC, `name` ASC";
	$districtData = mysqli_query($link, $districtSql);
	$districtArr = array();

	while ($row=mysqli_fetch_assoc($districtData)) {
		$districtArr[$row['cityid']][] = array('id' => $row['id'], 'name' => $row['name']);
	}

	$districtObj = json_encode($districtArr);
	// =========================================================================================
	// Đưa dữ liệu trong bảng Ward vào 1 mảng
	$wardSql = "SELECT * FROM `ward` WHERE `status`=1 ORDER BY `order` ASC, `name` ASC";
	$wardData = mysqli_query($link, $wardSql);
	$wardArr = array();

	while ($row=mysqli_fetch_assoc($wardData)) {
		$wardArr[$row['districtid']][] = array('id' => $row['id'], 'name' => $row['name']);
	}

	$wardObj = json_encode($wardArr);
?>