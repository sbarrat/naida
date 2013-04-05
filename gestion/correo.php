<center><h3><img src='imagenes/mailb.png' alt='correo'></img> Envio de consultas tecnicas (solo si internet esta habilitado en el ordenador)</h3>
<form name='enviar' method='post' action='index.php?id=5'>
<table><tr><td valign='top'><b>Asunto:</b></td><td>
<input type='text' name='asunto' size='47'></input></td></tr>
<tr><td valign='top'><b>Cuerpo:</b></td><td>
<textarea name ='cuerpo' rows='8' cols='40'></textarea></td></tr>
<tr><td colspan='2'><center><input type='submit' name='enviar' value='Enviar'></input></center>
</td></tr></table>
</form></center>
<?
if (isset($_POST['enviar']))
{
$destinatario = "ruben@ensenalia.com";
$asunto = $_POST['asunto'];
$cuerpo = $_POST['cuerpo'];
//para el envío en formato HTML
$headers = "MIME-Version: 1.0\r\n";
$headers .= "Content-type: text/html; charset=iso-8859-1\r\n";
//dirección del remitente
$headers .= "From: Aplicacion Naida modas <rosben@ensenalia.com\r\n";
if (mail($destinatario,$asunto,$cuerpo,$headers))
echo "<span class='ok'>Mensaje Enviado</span>";
else
echo "<span class='nok'>No se ha podido enviar el mensaje, compruebe su conexión a internet</span>";
}
?>