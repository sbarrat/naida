<img src='imagenes/cinco.png' alt='cinco'/><h3>Ultimos 5 productos a&ntilde;adidos</h3>
<table><tr <? print($_SESSION[colorc]); ?>><th>Referencia</th><th>Ref Prov</th><th>Familia</th><th>Talla</th><th>Color</th>
<th>Proveedor</th><th>Descripcion</th><th>PCP</th><th>PVP</th><th>Stock</th></tr>
<? //Aqui mostramos los 5 ultimos productos añadidos, asi si hay que meter alguno muy parecido es mas sencillo
$bigsql="SELECT p.id AS codigo, p.referencia AS referencia, p.referenciap AS rproveedor, p.familia, p.talla, p.color, p.proveedor, p.descripcion AS descri, p.precioc AS precioc, p.preciov AS preciov, p.stock AS stock, f.id, f.nombre AS fnombre, c.id, c.nombre AS cnombre, t.id, t.nombre AS tnombre, r.id, r.nombre AS rnombre
FROM productos AS p
JOIN tallas AS t ON p.talla = t.id
JOIN color AS c ON p.color = c.id
JOIN familias AS f ON p.familia = f.id
JOIN proveedores AS r ON p.proveedor = r.id
ORDER BY p.id DESC
LIMIT 5 ";
$bbigsql = mysql_db_query($dbname,$bigsql,$con);
$color = $color1;
$cont = 1;
while ($rbig = mysql_fetch_array($bbigsql))
{
$cont++;
print("<tr $color><td><a href=index.php?id=1&amp;ref=$rbig[codigo]>$rbig[referencia]</a></td>");
print("<td>$rbig[rproveedor]</td>");
print("<td>$rbig[fnombre]</td>");
print("<td>$rbig[tnombre]</td>");
print("<td>$rbig[cnombre]</td>");
print("<td>$rbig[rnombre]</td>");
print("<td>$rbig[descri]</td>");
print("<td>$rbig[precioc]</td>");
print("<td>$rbig[preciov]</td>");
print("<td>$rbig[stock]</td>");
print("</tr>");
if ($cont % 2 == 0)
$color = $_SESSION[color2];
else
$color = $_SESSION[color1];
}
print("</table>");

?>
</tr></table>