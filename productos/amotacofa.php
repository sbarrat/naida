<?
//Fichero amotacofa, para modificacion de familias colores y tallas

//Parte de altas

//Alta de colores

if (isset($_POST['colorin']))
{
	$acolor = $_POST['colorin'];
	if ($acolor == '')
	{
	$mensaje = "<h4><font color = 'red' >Nuevo Color no puede ser un campo nulo</font></h4>";
	echo $mensaje;
	}
	else
	{
	$colorin="insert into color (nombre) values ('$acolor')";
	$rcolorin=mysql_db_query ($dbname, $colorin, $con);
	}
	
}
//Alta de familias
if (isset($_POST['families']))
{
	$families = $_POST['families'];
	if ($families == '')
	{
	$mensaje = "<h4><font color = 'red' >Nueva Familia no puede ser un campo nulo</font></h4>";
	echo $mensaje;
	}
	else
	{
	$afamilies="insert into familias (nombre) values ('$families')";
	$rfamilies=mysql_db_query ($dbname, $afamilies, $con);
	}
}
//Alta de tallas
if (isset($_POST['tallita']))
{
	$tallita = $_POST["tallita"];
	if ($tallita == '')
	{
	$mensaje = "<h4><font color = 'red' >Nueva Talla no puede ser un campo nulo</font></h4>";
	echo $mensaje;
	}
	else
	{
	$atallita="insert into tallas (nombre) values ('$tallita')";
	$rtallita=mysql_db_query ($dbname, $atallita, $con);
	}
}
?>
<table><tr><td valign='top'>
<table>
<tr><th colspan='2'><img src='imagenes/modfam.png' alt='imagen'/><h3>Modificaciones opciones</h3></th></tr>

<tr>
<td <? print($_SESSION[color2]); ?>><b>Nueva Familia</b></td>
<td <? print($_SESSION[color1]); ?>>
<form name="families" method="post" action="index.php?id=1&amp;modifam=1">
<input type="text" name="families"></input>
<input type="submit" value="Añadir"></input>
</form>
</td>
</tr>

<tr>
<td <? print($_SESSION[color2]); ?>><b>Nueva Talla</b></td>
<td <? print($_SESSION[color1]); ?>>
<form name="tallita" method="post" action="index.php?id=1&amp;modifam=1">
<input type="text" name="tallita"></input>
<input type="submit" value="Añadir"></input>
</form>
</td>
</tr>

<tr><td <? print($_SESSION[color2]); ?>><b>Nuevo Color</b></td>
<td <? print($_SESSION[color1]); ?>>
<form name="acolor" method="post" action="index.php?id=1&amp;modifam=1">
<input type="text" name="colorin"></input>
<input type="submit" value="Añadir"></input>
</form>
</td>
</tr>
</table>
</td><td valign='top'>
<?include("productos/lista.php");?>