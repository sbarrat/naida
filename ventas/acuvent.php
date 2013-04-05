<? //Fichero Acuvent, todas las que tengan importe en cuenta apareceran aqui
//Mostraremos el idventa, fecha , hora , items, debe
$vhoy = "select * from ventas where fecha like curdate()";
$vvhoy = mysql_db_query($dbname,$vhoy,$con);
print("<table><tr><th>Ticket</th><th>Prod<th>Total</th></tr>");
while ($vvvhoy=mysql_fetch_array($vvhoy))
{
$i++;
print("<tr><td><a href=index.php?id=4&hoy=$vvvhoy[id]>$vvvhoy[id]</a></td><td>$vvvhoy[items]</td><td>$vvvhoy[total]&#8364;</td></tr>");
}
print("</table>");
?>
