<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
	<div class="container mt-5">
		<?php 
			$this->load->view('cafe-page/includes/cafe_list', array('cafes' => $cafes, 'my_city' => true)); 
			$this->load->view('cafe-page/includes/cafe_list', array('cafes' => $other_cafes, 'my_city' => false)); 
		?>
	</div>
</body>
</html>