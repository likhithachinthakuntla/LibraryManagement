<?php
	include("../dbConfig.php");

	$selectedBookId = $_REQUEST['selectedBookId'];

	$query = mysql_query("Select bookId,title,author,price,publisher From books Where bookId = '$selectedBookId'");
	$result = mysql_fetch_assoc($query);

	$query1 = mysql_query("Select issueId From borrow Where bookId = '$selectedBookId'");
	$result1 = mysql_fetch_assoc($query1);

	$issueId = $result1['issueId'];

	if($issueId){
		$query2 = mysql_query("Select firstName,lastName From members Where id = '$issueId'");
		$result2 = mysql_fetch_assoc($query2);
		//print_r($result2);
	}


?>

<!DOCTYPE html>
<html>
	<head>
		<title></title>
		<link rel="stylesheet" type="text/css" href="../../css/title.css">
		<link rel="stylesheet" type="text/css" href="../../css/bookDetails.css">
	</head>
	<body>
		<div class="title">Book Information</div>
		<div class="infoContainer">
			<div class="bookName">
				<?php echo ucfirst($result['title']); ?>[<?php echo $selectedBookId; ?>]
			</div>
			<?php
			if($issueId){
			?>
			<div class="issuingInfo">
				<?php
					
					if($result2['firstName'] && $result2['lastName']){
						?>
						Sorry! This book is already issued to 
						<a href="home.php?activity=memberDetails&selectedMemberId=<?php echo $issueId; ?>"><?php echo ucfirst($result2['firstName'])." ".ucfirst($result2['lastName']); ?>.
						</a>
						<?php
					}
				?>
			</div>
			<?php
			}
			?>
			<div class="bookInfo">
				<hr>
				<div class="label">Author</div>
				<div class="details"><?php echo ucfirst($result['author']); ?></div>
				<hr>
				<div class="label">Price</div>
				<div class="details"><?php echo $result['price']; ?></div>
				<hr>
				<div class="label">Publisher</div>
				<div class="details"><?php echo ucfirst($result['publisher']); ?></div>
				<hr>
			</div>

			<div class="issuedBookDetails">
				<div class="issuedBookTitle">
					
				</div>
			</div>
		</div>
	</body>
</html>  
