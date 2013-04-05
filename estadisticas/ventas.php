<? //Fichero de estadisticas de ventas
switch($muestra)
{
//10 Productos mas vendidos***********************************************************************
case 1:
$topventas = "SELECT sum( d.unidades ) AS total,p.stock as stock, p.descripcion as descripcion,p.referencia as referencia, t.nombre as talla, c.nombre as color, f.nombre as familia
FROM detallesv AS d
JOIN productos AS p ON d.idproducto = p.id
JOIN color AS c ON p.color = c.id
JOIN familias AS f ON p.familia = f.id
JOIN tallas AS t ON p.talla = t.id
GROUP BY idproducto
ORDER BY total DESC limit 10";
$rtop = mysql_db_query($dbname,$topventas,$con);
print("<center><h3>10 Productos Mas vendidos</h3>");
print("<table><tr><th>Referencia</th><th>Descripcion</th><th>Familia</th><th>Talla</th><th>Color</th><th>Total</th><th>Stock</th><th></th></tr>");

while ($drop = mysql_fetch_array($rtop)){
/*semaforo*/
	if ($drop[stock] >= 2)
	$imagen = "<img src=imagenes/verde.png alt=disponible/>";
	else
	if ($drop[stock] == 1)
	$imagen = "<img src=imagenes/amarillo.png alt=amarillo/>";
	else
	$imagen = "<img src=imagenes/rojo.png alt=rojo/>";
	/*Fin del semaforo*/
print("<tr><td>$drop[referencia]</td><td>$drop[descripcion]</td><td>$drop[familia]</td><td>$drop[talla]</td><td>$drop[color]</td><td>$drop[total]</td><td>$drop[stock]</td><td>$imagen</td></tr>");
}
print("</table></center>");
break;
/*************************************************************/
//10 Productos menos vendidos*********************************************************************************************************/
case 2:
$topventas = "SELECT sum( d.unidades ) AS total, p.stock as stock,p.descripcion as descripcion,p.referencia as referencia, t.nombre as talla, c.nombre as color, f.nombre as familia
FROM detallesv AS d
JOIN productos AS p ON d.idproducto = p.id
JOIN color AS c ON p.color = c.id
JOIN familias AS f ON p.familia = f.id
JOIN tallas AS t ON p.talla = t.id
GROUP BY idproducto
ORDER BY total ASC limit 10";
$rtop = mysql_db_query($dbname,$topventas,$con);
print("<center><h3>10 Productos menos vendidos</h3>");
print("<table><tr><th>Referencia</th><th>Descripcion</th><th>Familia</th><th>Talla</th><th>Color</th><th>Total</th><th>Stock</th><th></th></tr>");
while ($drop = mysql_fetch_array($rtop)){
	/*semaforo*/
	if ($drop[stock] >= 2)
	$imagen = "<img src=imagenes/verde.png alt=verde/>";
	else
	if ($drop[stock] == 1)
	$imagen = "<img src=imagenes/amarillo.png alt=amarillo/>";
	else
	$imagen = "<img src=imagenes/rojo.png alt=rojo/>";
	/*Fin del semaforo*/
print("<tr><td>$drop[referencia]</td><td>$drop[descripcion]</td><td>$drop[familia]</td><td>$drop[talla]</td><td>$drop[color]</td><td>$drop[total]</td><td>$drop[stock]</td><td>$imagen</td></tr>");
}
print("</table></center>");
break;
/*************************Los no vendidos***********************************************/
case 3:
print("<center><h3>Productos no vendidos</h3>");
//Finalmente buscamos los que no han sido vendidos*/
print("<table><tr>");
print("<th>Referencia</th><th>Descripcion</th><th>Familia</th><th>Talla</th><th>Color</th><th>Stock</th><th></th></tr>");
$novend = "SELECT p.referencia, p.descripcion, p.stock, f.nombre as familia, c.nombre as color , t.nombre as talla FROM productos p LEFT JOIN detallesv d ON (p.id = d.idproducto)  join tallas as t on p.talla = t.id 
join color as c on p.color = c.id
join familias as f on p.familia = f.id
WHERE d.idproducto IS NULL";
$rnovend = mysql_db_query($dbname,$novend,$con);
while($vnovend = mysql_fetch_array($rnovend))
	{
	/*semaforo*/
	if ($vnovend[stock] >= 2)
	$imagen = "<img src=imagenes/verde.png alt=verde/>";
	else
	if ($vnovend[stock] == 1)
	$imagen = "<img src=imagenes/amarillo.png alt=amarillo/>";
	else
	$imagen = "<img src=imagenes/rojo.png alt=rojo/>";
	/*Fin del semaforo*/
	print("<tr><td>$vnovend[referencia]</td><td>$vnovend[descripcion]</td><td>$vnovend[familia]</td><td>$vnovend[talla]</td><td>$vnovend[color]</td><td>$vnovend[stock]</td><td>$imagen</td></tr>");
	}
print("</table></center>");
break;
/********************************Fin de los no vendidos ********************************************************************************************/
/********************************Ultimas unidades*********************************************************************************/
case 4:
print("<center><h3>Productos con una sola unidad</h3>");
$unasol="Select p.referencia as referencia, p.descripcion as descripcion ,p.stock as stock,t.nombre as talla, f.nombre as familia, c.nombre as color from productos as p 
	join tallas as t on p.talla = t.id 
	join color as c on p.color = c.id
	join familias as f on p.familia = f.id
	where p.stock like 1";
$runasol = mysql_db_query($dbname,$unasol,$con);
print("<table><tr>");
print("<th>Referencia</th><th>Descripcion</th><th>Familia</th><th>Talla</th><th>Color</th><th>Stock</th><th></th></tr>");

while ($vunasol=mysql_fetch_array($runasol))
{
/*semaforo*/
	if ($vunasol[stock] >= 2)
	$imagen = "<img src=imagenes/verde.png alt=verde/>";
	else
	if ($vunasol[stock] == 1)
	$imagen = "<img src=imagenes/amarillo.png alt=amarillo/>";
	else
	$imagen = "<img src=imagenes/rojo.png alt=rojo/>";
/*Fin del semaforo*/
print("<tr><td>$vunasol[referencia]</td><td>$vunasol[descripcion]</td><td>$vunasol[familia]</td><td>$vunasol[talla]</td><td>$vunasol[color]</td><td>$vunasol[stock]</td><td>$imagen</td></tr>");

}
print("</table></center>");
break; 
/********************************Stock 0 o negativo*********************************************************************************/
case 5:
print("<center><h3>Productos sin stock</h3>");
$niuna = "Select p.referencia as referencia, p.descripcion as descripcion ,p.stock as stock,t.nombre as talla, f.nombre as familia, c.nombre as color from productos as p 
	join tallas as t on p.talla = t.id 
	join color as c on p.color = c.id
	join familias as f on p.familia = f.id
	where p.stock <= 0";
$rniuna = mysql_db_query($dbname,$niuna,$con);
print("<table><tr>");
print("<th>Referencia</th><th>Descripcion</th><th>Familia</th><th>Talla</th><th>Color</th><th>Stock</th><th></th></tr>");
while ($vniuna=mysql_fetch_array($rniuna))
{
/*semaforo*/
	if ($vniuna[stock] >= 2)
	$imagen = "<img src=imagenes/verde.png alt=verde/>";
	else
	if ($vniuna[stock] == 1)
	$imagen = "<img src=imagenes/amarillo.png alt=amarillo/>";
	else
	$imagen = "<img src=imagenes/rojo.png alt=rojo/>";
/*Fin del semaforo*/
print("<tr><td>$vniuna[referencia]</td><td>$vniuna[descripcion]</td><td>$vniuna[familia]</td><td>$vniuna[talla]</td><td>$vniuna[color]</td><td>$vniuna[stock]</td><td>$imagen</td></tr>");
}
print("</table></center>");
break;
/*****************************fin stock negativo o 0************************************/
/*Dias de la semana que mas se vende*/
case 6:
print("<center><h3>Ventas/dia semana</h3>");
$vensem = "SELECT date_format( fecha, '%a' ) as dia, count(date_format( fecha, '%a' )) as total
FROM ventas group by dia order by total desc";
$rvensem = mysql_db_query($dbname,$vensem,$con);
print("<table><tr>");
print("<th>Dia</th><th>Total</th></tr>");
while( $vvensem = mysql_fetch_array($rvensem))
{
//Los dias vienen en ingles asi que habra que comparar
	switch($vvensem[dia])
	{
	case 'Mon': $dia = "Lunes";break;
	case 'Tue': $dia = "Martes";break;
	case 'Wed': $dia = "Miercoles";break;
	case 'Thu': $dia = "Jueves";break;
	case 'Fri': $dia = "Viernes";break;
	case 'Sat': $dia = "Sabado";break;
	case 'Sun': $dia = "Domingo";break;
	}
print("<tr><td>$dia</td><td><center>$vvensem[total]</center></td></tr>");
}
print("</table></center>");
break;
/**************************************************************************************************************************/
/*Horas que mas se vende*/
/*case 7:
print("<center><h3>Ventas/Rango horas</h3>");
$vensem = "SELECT DATE_FORMAT(hora,'%H') as hora, count(date_format( hora, '%H' )) as total
FROM ventas group by hora order by total desc";
$rvensem = mysql_db_query($dbname,$vensem,$con);
print("<table><tr>");
print("<th>Rango Horas</th><th>Total</th></tr>");
while( $vvensem = mysql_fetch_array($rvensem))
{
if ($vvensem[hora] == 23)
$sgt = 0;
else
$sgt= $vvensem[hora] + 1;
print("<tr><td><center>$vvensem[hora] - $sgt</center></td><td><center>$vvensem[total]</center></td></tr>");
}
print("</table></center>");
break;
/***********************************************Aqui se acaba el switch****************************************************/
}
?>