<? /*Pijadica de turno cambiar el tema que se esta mostrando por pantalla
esto es solo aplicable para cada usuario, el usuario creado nuevo tendra
como tema predeterminado el 2 salmon */
//Opcion de modificar y borrar temas, excepto el salmon y el otoño
//Si le hemos dado para que cambie el tema
//Agregamos tema
if (isset($_POST[agretema]))
{
$agrega = "Insert into gamas (nombre,colorc,colorb,color1,color2,fuente) values ('$_POST[notema]','$_POST[cabezera]','$_POST[fondo]','$_POST[color1]','$_POST[color2]','$_POST[fuente]')";
$ragrega = mysql_db_query($dbname,$agrega,$con);
}
//

?>
<table><tr><td valign='top'>
<form name='temas' action='index.php?id=9' method='post'>
<table><tr>
<td colspan='2'><h3>Seleccion de tema de colores</h3></td></tr>
<tr><td>Tema</td><td>
<select name='gama'>
<?
$mtem = "Select * from gamas";
$rmtem = mysql_db_query($dbname,$mtem,$con);
while ($cmtem = mysql_fetch_array($rmtem))
{
if($cmtem[nombre]!=""){
print("<option value=$cmtem[id]>$cmtem[nombre]</option>");
}
}
?>
</select>
</td></tr>
<tr><td colspan='2'><input type='submit' name='protem' value='Mostrar tema'></input>
</td></tr>
<?
print("<tr><td colspan ='2' $_SESSION[colorc]>Color de cabezera</td></tr>");
print("<tr><td colspan ='2' $_SESSION[color1]>Color uno</td></tr>");
print("<tr><td colspan ='2' $_SESSION[color2]>Color dos</td></tr>");
print("<tr><td colspan ='2' $_SESSION[colorb]>Fondo</td></tr>");
print("<tr><td colspan ='2' $_SESSION[fuente]>Fuente</td></tr>");
?>
</table></form></td><td valign='top'> 
<form name='etitem' action='index.php?id=9' method='post'>
<table><tr><td colspan='2'><h3>Creacion de temas</h3></td></tr>
<tr><td>Seleccione parte</td>
<td><select name='partes'>
<option selected value='0'>--Seleccione la parte y pulse Aceptar--</option>
<option value = '1'>Cabezera</option>
<option value = '2'>Color 1</option>
<option value = '3'>Color 2</option>
<option value = '4'>Fondo</option>
<option value = '5'>Fuente</option>
</select>
<input type='submit' name='parsel' value='Seleccionar'></input>
</td></tr>
<? 
if ((isset($_POST['parsel'])) || (isset($_GET['selec'])))
{
$seleccionado = $_POST['partes'];
	if (isset($_GET[selec]))
	{
	$seleccionado = $_GET['selec'];
	$selecolor = $_GET['crecol'];
	}
switch ($seleccionado)
{
case 0: print("<h4><font color='red'>Debe seleccionar una parte</font></h4>");break;
case 1: $hasele = 'Cabezera';$_SESSION[rmodicap]="#". $selecolor;break;
case 2: $hasele = 'Color 1';$_SESSION[rmodicol1]="#". $selecolor;break;
case 3: $hasele = 'Color 2';$_SESSION[rmodicol2]="#". $selecolor;break;
case 4: $hasele = 'Fondo';$_SESSION[rmodifon]="#". $selecolor;break;
case 5: $hasele = 'Fuente';$_SESSION[rmodifont]="#". $selecolor;break;
}
}

?>
<tr><td>Cabezera</td><td bgcolor='<? echo $_SESSION[rmodicap]; ?>'><input type = 'text' name = 'cabezera' value='<? echo $_SESSION[rmodicap]; ?>'></input></td><td></tr>
<tr><td>Color 1</td><td bgcolor='<? echo $_SESSION[rmodicol1]; ?>'><input type = 'text' name = 'color1' value='<? echo $_SESSION[rmodicol1]; ?>'></input></td></tr>
<tr><td>Color 2</td><td bgcolor='<? echo $_SESSION[rmodicol2]; ?>'><input type = 'text' name = 'color2' value='<? echo $_SESSION[rmodicol2]; ?>'></input></td></tr>
<tr><td>Fondo</td><td bgcolor='<? echo $_SESSION[rmodifon]; ?>'><input type = 'text' name = 'fondo' value='<? echo $_SESSION[rmodifon]; ?>'></input></td></tr>
<tr><td>Fuente</td><td bgcolor='<? echo $_SESSION[rmodifont]; ?>'><input type = 'text' name = 'fuente' value='<? echo $_SESSION[rmodifont]; ?>'></input></td></tr>
<tr><td>Nombre del tema (Obligatorio)</td><td><input type = 'text' name = 'notema'></input></td></tr>
<tr><td colspan='2'><input type='submit' name='agretema' value = 'Agregar tema'/></td></tr>
</table></form>
</td></tr></table>
<? 
print("<center><table><tr><td>");
if ((isset($_POST['parsel'])) || (isset($_GET['selec'])))
include("gencolor.php");
print("</td></tr></table></center>");
?>