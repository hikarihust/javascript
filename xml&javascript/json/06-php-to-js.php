<?php
	require_once("connect.php");

	// Tạo câu truy vấn
	$query = "SELECT * FROM books";

	// Lấy ra kết quả truy vấn
	$result = mysqli_query($conn, $query);
	$books = array();
	while ($row = mysqli_fetch_assoc($result)) {
		$books[] = $row;
	}

	// Mảng books
	echo "<pre>";
	print_r($books);
	echo "</pre>";

	$strBooks = json_encode($books);
	echo "<br>" . $strBooks;
	
	// Mảng
    $phpArray = array(
        0 => "Mon", 
        1 => "Tue", 
        2 => "Wed", 
        3 => "Thu",
        4 => "Fri", 
        5 => "Sat",
        6 => "Sun",
    )
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<link rel="stylesheet" type="text/css" href="css/style.css"/>
<!-- <script type="text/javascript" src="js/json2.js"></script> -->
<script type="text/javascript" src="js/xml.js"></script>
<script type="text/javascript">
	// Nhận chuỗi Json từ PHP
	var myObj = eval('<?php echo $strBooks ?>');
	console.log(myObj);
	console.log(myObj[0].title);

	// Nhận mảng books từ PHP
	var books = <?php echo json_encode($books); ?>;
	console.log(books);
	console.log(books[0].title);

	// Nhận mảng từ PHP
	var jArray = <?php echo json_encode($phpArray); ?>;
	console.log(jArray);
    for(var i=0; i<jArray.length; i++){
        console.log(jArray[i]);
    }
</script>
</head>

<body>
</body>
</html>
