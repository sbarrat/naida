<?
$iva = 1;
//Si he seleccionado alguna venta anterior
if (isset($_GET["hoy"]))
$_SESSION["venta"]=$_GET["hoy"];
//Fin de la seleccion de venta anterior
$venta=$_SESSION["venta"];
//si es una venta a cuenta*************MUY ALFA***************
if (isset($_GET["cuenta"]))
{
$venta=$_GET["cuenta"];
unset($_SESSION["venta"]);
}
//Borrado del producto de la venta
if (isset($_POST['devent']))
{
$pid = $_POST['pid'];
$deid = $_POST['deid'];
$unidades = $_POST['unidades'];
//echo $pid ." ". $unidades;
//Añadimos lo borrado al stock
$astock="update productos set stock = stock + '$unidades' where id like '$pid'";
$actstock = mysql_db_query($dbname,$astock,$con);
$bavent="Delete from detallesv where id like '$deid'";
$rbavent = mysql_db_query($dbname, $bavent, $con);
}
//Modificacion de la venta
if (isset($_POST['modivent']))
{
$deid = $_POST['deid'];
$precio = $_POST['precio'];
$unidades = $_POST['unidades'];
$total = $_POST['total'];
//echo "Total es ". $total ." y Unidades es ". $unidades;
//Comprobamos si hemos modificado el total
$moto = "Select idproducto,unidades,total from detallesv where id like '$deid'";
$mmoto = mysql_db_query($dbname,$moto,$con);
$mmmoto = mysql_fetch_array($mmoto);

	if ($mmmoto[total] != $total)
	{
	
	$uto = "update detallesv set total='$total' where id like '$deid'";
	$uuto = mysql_db_query($dbname,$uto,$con);
	}
	if ($mmmoto[unidades] != $unidades)
	{
	
	
	$total = $precio * $unidades * $iva;
	
	$uto = "update detallesv set unidades = '$unidades', total = '$total' where id like '$deid'";
	$uuto = mysql_db_query($dbname,$uto,$con);
	//Aqui deberiamos actualizar el stock, tambien mostrar si hay o no en stock
	//Debemos comprobar tambien si el numero es mayor o menor que el teniamos antes
		if ($mmmoto[unidades] < $unidades)
		{
		$dif = $unidades - $mmmoto[unidades];
		$astock="update productos set stock = stock - '$dif' where id like '$mmmoto[idproducto]'";
		//echo $astock;
		$aastock = mysql_db_query($dbname,$astock,$con);
		}
		else
		{
		$dif = $mmmoto[unidades] - $unidades;
		$astock="update productos set stock = stock + '$dif' where id like '$mmmoto[idproducto]'";
		echo $astock;
		$aastock = mysql_db_query($dbname,$astock,$con);
		}
	}
}
//Fin de la modificacion de la venta
if (isset($_GET['producto']))
{
//Esta es la parte de la venta
$producto=$_GET['producto'];
//$venta=$_GET['venta'];

//echo "La venta es ". $venta;
//Buscamos el precio de venta
$bpre="Select * from productos where id like '$producto'";
$bbpre = mysql_db_query($dbname,$bpre,$con);
$bbbpre = mysql_fetch_array($bbpre);
//Insertamos el producto

$total = $bbbpre[preciov] * $iva;
$inspro="insert into detallesv (idventa,idproducto,precio,unidades,total) values ('$venta','$producto','$bbbpre[preciov]',1,'$total')";
$iinspro = mysql_db_query($dbname,$inspro,$con);
//Aqui deberiamos actualizar el stock, tambien mostrar si hay o no en stock
$astock="update productos set stock = stock - 1 where id like '$producto'";
$aastock = mysql_db_query($dbname,$astock,$con);
//Mostramos todos los que estan en esta venta
}
//Si existe venta muestra lo que hay en la venta
//Puede ser que queramos ver una de hoy

if ((isset($_SESSION["venta"])) || ($venta != 0))
{
$venact="select d.id as deid, d.idventa, d.idproducto, d.precio as precio, d.unidades as unidades, d.total as total,p.id as pid, p.stock as stock, p.referencia as referencia, p.referenciap as proveedor, p.color, p.talla, p.familia, p.descripcion as descripcion, c.nombre as color, t.nombre as talla, f.nombre as familia from detallesv as d join productos as p on d.idproducto = p.id join tallas as t on p.talla = t.id join color as c on p.color = c.id join familias as f on p.familia = f.id where d.idventa like '$venta'";
$vvenact = mysql_db_query($dbname,$venact,$con);
print ("<table width='100%'><tr><th>Referencia</th><th>Ref Prov</th><th>Descripcion</th><th>Familia</th><th>Talla</th><th>Color</th><th>Stock</th><th>Precio<th>Cant</th><th>Total</th><th></th><th></th></tr>");
while ($vvvenact = mysql_fetch_array($vvenact))
{
print("<tr><td>$vvvenact[referencia]</td><td>$vvvenact[proveedor]</td><td>$vvvenact[descripcion]</td><td>$vvvenact[familia]</td><td>$vvvenact[talla]</td><td>$vvvenact[color]</td><td><b>$vvvenact[stock]&nbsp;</b>");

if ($vvvenact[stock] == 1)
print("<img src='imagenes/amarillo.png'>");
else
{	
if($vvvenact[stock] <= 0)
	print("<img src='imagenes/rojo.png'>");
	else
	print("<img src='imagenes/verde.png'>");
}	
//print("</td><td colspan='4'>");
print("</td><td>");
print("<form name='movent' action='index.php?id=4' method='post'>");
print("<input type = 'hidden' value='$vvvenact[pid]' name='pid'></input>");
print("<input type = 'hidden' value='$vvvenact[deid]' name='deid'></input>");
print("<input type = 'text' readonly name='precio' size='7' value='$vvvenact[precio]'></input>&#8364;</td>");
print("<td><input type = 'text' name='unidades' size='2' value='$vvvenact[unidades]'></input></td>");
//print("<label>  </label>");
print("<td><input type = 'text' name='total' size='7' value='$vvvenact[total]'></input>&#8364;</td>");
print("<td><input type = 'submit' name='modivent' value='Modificar'></input></td>");
print("<td><input type = 'submit' name='devent' value='Eliminar'></input></form></td></tr>");
}
print("</table>");
}
?>