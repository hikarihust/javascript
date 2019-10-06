<?php
	require_once("connect.php");

	// Tạo câu truy vấn
	$query = "SELECT * FROM books";

	// Lấy ra kết quả truy vấn
	$result = mysqli_query($conn, $query);

	header("Content-type:text/xml");
	$xml  = '<?xml version="1.0" encoding="utf-8"?>';
	$xml .= '<book_shop>';
	while ($row = mysqli_fetch_assoc($result)) {
		$xml .= '<book id="' . $row["id"] . '">
					<title>' . $row["title"] . '</title>
					<author>' . $row["author"] . '</author>
					<pages>' . $row["pages"] . '</pages>
					<weight units="' . $row["units"] . '">' . $row["weight"] . '</weight>
					<price>
						<real>' . $row["real"] . '</real>
						<saleoff>' . $row["saleoff"] . '</saleoff>
					</price>
					<shipping>
						<US>' . $row["US"] . '</US>
						<EU>' . $row["EU"] . '</EU>
						<VN>' . $row["VN"] . '</VN>
					</shipping>
				</book>';
	}

	$xml .= '</book_shop>';
	
	echo $xml;