<? //lista2.php generacion de etiquetas via fichero html
//Las etiquetas son 55 por hoja
//36,8mm de ancho por 23,8mm de alto
//separacion a lo ancho entre entiquetas 2,5mm
//separacion a lo alto entre etiquetas 1,6mm
//separacion en la esquina 8mm ancho 10,30mm alto
//once a lo alto 5 a lo ancho
require_once("conexion.php");
$sql = "Select * from productos";
$consulta = mysql_db_query($dbname,$sql,$con);
print("<table width='100%' border=1>");
for ($i=0;$i<=200;$i++)
{
//while ($resultado = mysql_fetch_array($consulta))
//{
$filas++;
if ($filas == 6)
	{
	print("</tr>");
	$filas = 0;
	}
else
	if ($filas == 1)
	print("<tr>");
if ($filas != 0)
print("<td>celda $filas</td>");
//}
}
print("</table>");