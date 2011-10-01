<?php

echo '<?xml version="1.0" encoding="utf-8"?>';

if (isset($_POST['r'])) {
	$num = trim(file_get_contents('files/count.txt')) +1;
	file_put_contents('files/count.txt', $num);
	file_put_contents('files/'.str_pad($num, 6, "0", STR_PAD_LEFT).'.entry', $_POST['r']);
}

$theme = trim(file_get_contents('files/theme.txt'));

if ($theme == "defaced") {
	echo '<p><center><img src="files/gtug-final.jpg" alt="gtug-logo"></center></p>';
} else {
	echo '<p><center><img src="files/gtug-final.png" alt="gtug-logo"></center></p>';
}

?>

<p>Bienvenidos al Barcelona Google Technology User Group
<p>El Barcelona GTUG está formado por un grupo de desarrolladores sin ánimo de lucro con ganas de realizar reuniones periódicas con el fin de difundir las tecnologías Google. Un foro de intercambio de conocimientos donde se realizan sesiones técnicas, charlas, mesas redondas... y donde además después de las reuniones podemos irnos a pasear por la bonita ciudad de Barcelona y así conocernos mejor.</p>
<p>La participación está abierta a novatos, desarrolladores, managers y organizaciones que estén interesadas en las tecnologías de Google o que las usan como parte de sus proyectos.</p>
<p>Mantente informado de las reuniones y de todo lo relacionado con el grupo en:</p>
<p>contacto: israel@gtugs.org</p>

<hr>

<form method='post' action='index.php'>
	<textarea name='r'></textarea>
	<input type='submit' name='Enviar' value='Enviar'>
</form>

<?php

foreach (glob("files/*.entry") as $f) {
	
	echo '<p>'.file_get_contents($f).'</p>'."\n";
	
}

?>
