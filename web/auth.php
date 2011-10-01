<?php

if (isset($_POST['user']) && isset($_POST['pass']))
{
	$user = trim($_POST['user']);
	$pass = ($_POST['pass']);
	
	if ($user=='israel' && $pass=='barcelona2011') {
		die('1');
	}
	
}


?>0
