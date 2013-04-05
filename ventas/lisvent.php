<? //Fichero lisvent.php que muestra las ventas del dia de hoy
//En realidad lo que mostramos es la hora y el total, si se hace clic se muestra la venta
$vhoy = "select * from ventas where cuenta not like 0 AND total NOT LIKE cuenta";
$vvhoy = mysql_db_query($dbname,$vhoy,$con);
print("<table><tr><th>Ticket</th><th>Dia</th></tr>");
while ($vvvhoy=mysql_fetch_array($vvhoy))
{
$i++;
$dia = cambiaf_a_normal($vvvhoy[fecha]);
print("<tr><td><a href=index.php?id=4&amp;cuenta=$vvvhoy[id]>$vvvhoy[id]</a></td><td>$dia</td></tr>");
}
print("</table>");

?>
