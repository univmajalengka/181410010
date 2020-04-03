<?php
	header('Content-type:application/json; charset=utf8');
	$link = mysqli_connect('localhost','root','','db_andy');
	
	$query = mysqli_query($link,"select * from t_org");
	$array = array();
	while($data=mysqli_fetch_array($query))
		$array[]=$data;
		
	echo JSON_encode($array);
	
?>