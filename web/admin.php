<?php

if (isset($_POST['r'])) {
	if (isset($_POST['a']) && $_POST['a'] == 'deface') {
		file_put_contents('files/theme.txt', 'defaced');
	} else {
		file_put_contents('files/theme.txt', 'normal');
	}
	header("location: index.php");
	exit;
}

echo '<?xml version="1.0" encoding="utf-8"?>';
?>
<h1>Administration</h1>

<form action="admin.php" method="POST">
<p><input type="checkbox" name="a" value="deface"> Deface?</p>
<p><input type="submit" name="r" value="Enviar"></p>
</div>
</form>
</p>
