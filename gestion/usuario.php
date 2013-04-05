<? 
//Alta usuario,alta,borrar,modifi
if ((isset($_POST['alta'])) || (isset($_POST['modifi'])))
{
$usu = $_POST[usu];
$Nombre = $_POST[nombre];
$Apellidos = $_POST[apellidos];
$nick = $_POST[usuario];
$pass = $_POST[pass];
$pass = sha1($pass);
$tipo = $_POST[tipo];
if (isset($_POST['alta']))
{
if (($tipo == 'user') || ($tipo =='admin'))
{
	$ausu = "insert into usuarios (Nombre,Apellidos,nick,pass,tipo) values ('$Nombre','$Apellidos','$nick','$pass','$tipo')";
	if($eusu = mysql_db_query($dbname,$ausu,$con))
	echo "<span class='ok'>El usuario ". $Nombre ." ". $Apellidos ." con permisos de <b>". $tipo ."</b> ha sido agregado</span>";
	else
	echo "<span class='nok'>No se ha agregado el usuario ". $Nombre ." ". $Apellidos ."</span>";
}
else
echo "<span class='nok'>Debe seleccionar un tipo de usuario</span>";
}
else
if (isset($_POST['modifi']))
{
	if ($pass == "")
	$ausu = "update usuarios set Nombre = '$Nombre', Apellidos = '$Apellidos', nick = '$nick' ,tipo = '$tipo' where id like '$usu'";
	else
	$ausu = "update usuarios set Nombre = '$Nombre', Apellidos = '$Apellidos', nick = '$nick' ,tipo = '$tipo', pass = '$pass' where id like '$usu'";
	if($eusu = mysql_db_query($dbname,$ausu,$con))
	echo "<span class='ok'>El usuario ". $Nombre ." ". $Apellidos ." ha sido modificado</span>";
	else
	echo "<span class='nok'>No se ha modificado el usuario ". $Nombre ." ". $Apellidos ."</span>";

}
}
//Gestion de usuarios, opcion dentro de gestion, solo podra ver el contenido admin 
if (isset($_GET[rusu]))
{
$usu = $_GET[rusu];
$susu = "select * from usuarios where id like '$_GET[rusu]'";
$rsusu = mysql_db_query($dbname,$susu,$con);
$lsusu = mysql_fetch_array($rsusu);
$nrio = $lsusu[Nombre];
$ario = $lsusu[Apellidos];
$nirio = $lsusu[nick];
$trio = $lsusu[tipo];
}
else
{
$usu = "";
$nrio = "";
$ario = "";
$nirio = "";
$prio = "";
$trio = "";
}
?>
<form name='usuarios' method='post' action='index.php?id=5'>
<table>
<tr><td>Nombre</td>
<td><input type='hidden' name='usu' <? print("value='$usu'"); ?>></input>
<input type='text' name='nombre' <? print("value='$nrio'"); ?>></input></td></tr>
<tr><td>Apellidos</td>
<td><input type='text' name='apellidos'<? print("value='$ario'"); ?>></input></td></tr>
<tr><td>Usuario</td>
<td><input type='text' name='usuario'<? print("value='$nirio'"); ?>></input></td></tr>
<tr><td>*Contrase&ntilde;a</td>
<td><input type='password' name='pass'<? print("value='$prio'"); ?>></input></td></tr>
<tr><td>Tipo</td>
<td><select name='tipo'>
<?
if (isset($_GET[rusu]))
{
	print("<option value='0'>-- Seleccione tipo de usuario --</option>");
	if ($trio == 'user')
	{
	print("<option selected value='user'>Usuario</option>");
	print("<option value='admin'>Administrador</option>");
	}
	else
	{
	print("<option value='user'>Usuario</option>");
	print("<option selected value='admin'>Administrador</option>");
	}
}
else
print("<option selected value='0'>-- Seleccione tipo de usuario --</option>
<option value='user'>Usuario</option>
<option value='admin'>Administrador</option>
</select></td></tr>");
?>
<tr><td colspan='2'><input type='submit' name='alta' value='Dar de alta'></input>
<input type='reset' name='borrar' value='Limpiar'></input>
<? if (isset($_GET[rusu]))
print("<input type='submit' name='modifi' value='Modificar'></input>"); ?></td></tr>
<tr><td colspan='2'>*Si no se pone nada se mantiene la contraseña actual</td></tr>

</table></form>

<table><tr><th colspan='5'><h3>Usuarios existentes</h3></th></tr>
<?
$usu = "select * from usuarios where tipo not like 'root'";
$rusu = mysql_db_query($dbname,$usu,$con);
print ("<tr><th>Nombre</th><th>Apellidos</th><th>Usuario</th><th>Tipo</th><th>Modificar</th></tr>");
while($lusu = mysql_fetch_array($rusu))
{
if ($lusu[tipo] == 'user')
$tipo = 'Usuario';
else
$tipo = 'Administrador';
print("<tr><td>$lusu[Nombre]</td><td>$lusu[Apellidos]</td><td>$lusu[nick]</td><td>$tipo</td><td><a href=index.php?id=5&amp;rusu=$lusu[id]><img src='imagenes/modi.png' alt=modificar></img></a>");
}
print("</table>");
?>
