<table width='90%'>
<tr><td valign='top'>
<? //Fichero de ventas
//De perdidos al rio, a la primera no va si a la segunda
if (isset($_GET["cuenta"]))
unset($_SESSION["venta"]);
if (isset($_GET["hoy"]))
$_SESSION["venta"]=$_GET["hoy"];

/*********************************Fin venta e Imprimir factura******************************************/
if ((isset($_POST['ticket'])) || (isset($_POST['caja'])) || (isset($_POST['cati'])))
include ('ventas/ticket.php');
//Finalizamos la venta o imprimir factura
if ((isset($_POST['fivent'])) || (isset($_POST['impri'])))
{
//Actualizamos el total de venta
$tove = $_SESSION['venta'];
$cliente = $_POST['cliente'];
$cuenta = $_POST['acuenta'];
$tot = "SELECT sum( total ) AS total, sum( unidades ) AS items FROM detallesv WHERE idventa LIKE '$tove'"; 
$rtot = mysql_db_query($dbname,$tot,$con);
$rrtot = mysql_fetch_array($rtot);
$valor = $rrtot[total];
$items = $rrtot[items];
$acvent = "update ventas set cuenta='$cuenta', total = '$valor',idcliente = '$cliente', items = '$items' where id like '$tove'";
$aacvent = mysql_db_query($dbname,$acvent,$con);
//Solo imprimimos si le damos a imprimir
if (isset($_POST['impri']))
header ("Location: informes/factura.php?venta=$tove");
//Si es fin venta unregistered venta
if (isset($_POST['fivent']))
unset($_SESSION["venta"]);
}
/**************************************Parte Principal***************************************************/
//Si hemos seleccionado una venta existente, o bien la actual no modificamos horas ni fechas
//sino que mostramos las propias de la venta
if ((isset($_SESSION['venta'])) || (isset($_GET['cuenta'])))
{
	if (isset($_GET['cuenta']))
	$venta = $_GET['cuenta'];
	else
	$venta = $_SESSION['venta'];
$selec="Select * from ventas where id like '$venta'";
$rselec=mysql_db_query($dbname,$selec,$con);
$resul = mysql_fetch_array($rselec);
$hora = $resul[hora];
$dia = $resul[fecha];
$dia = cambiaf_a_normal($dia);
$cliente = $resul[idcliente];
$pago = $resul[pago];
$cuenta = $resul[cuenta];
$total = $resul[total];
$resto = $cuenta - $total;
} 
//Si no estamos en ninguna venta activa mostramos los actuales
else
{
$date = getdate();
$dia = $date['mday'] ."/". $date['mon'] ."/". $date['year'];
$ahora = "select curtime() as ahora";
$rhora = mysql_db_query($dbname,$ahora,$con);
$shora = mysql_fetch_array($rhora);
$hora = $shora[ahora];
$cliente = 0;
$cuenta = "";
$resto = "";
}
?>
<table width='100%'>
<tr <? print($_SESSION[color2]); ?>><th><b>Fecha</b></th><th><b>Hora</b></th><th><b>Cliente</b></th><th><b>Pago</b></th><th><b>A Cuenta</b></th><th><b>Resto</b></th></tr>
<tr <? print($_SESSION[color1]); ?>>
<td><form name='venta' action='index.php?id=4' method='post'>
<input type='text' name='fecha' size='10' readonly value='<? echo $dia; ?>'></input></td>
<td><input type='text' name='hora' size='10' readonly value='<? echo $hora; ?>'></input></td>
<td><select name='cliente'>
<option value='0'>- Cliente -</option>
<?
$clientes = "Select * from clientes order by Nombre";
$rclientes = mysql_db_query($dbname, $clientes, $con);
while ($celdac = mysql_fetch_array($rclientes))
{
if ($celdac[id] == $cliente)
print("<option selected value='$celdac[id]'>$celdac[Nombre]</option>");
else{
if($celdac[Nombre]!="")
print("<option value='$celdac[id]'>$celdac[Nombre]</option>");
}
}
?>
</select></td>
<td><select name='pago'>
<? 
if ($pago == 0)
{
print("<option selected value='0'>Efectivo</option>");
print("<option value='1'>Tarjeta</option>");
}
else
{
print("<option value='0'>Efectivo</option>");
print("<option selected value='1'>Tarjeta</option>");
}
?>
</select></td>
<td><input type='text' size='5' name='acuenta' value='<? echo $cuenta; ?>'></input>&#8364;</td>
<td><input type='text' size='5' readonly name='resto' value='<? echo $resto; ?>'></input>&#8364;</td></tr>
<tr <? print($_SESSION[colorc]); ?>><td colspan='6'><input type='submit' name='nuvent' value='Nueva Venta'/>
<? if ((isset($_SESSION["venta"])) || (isset($_GET['cuenta'])))
print("<input type='submit' name='fivent' value='Fin venta'/>");
print("<input type='submit' name='impri' value='Imprimir factura'/>");
print("<input type='submit' name='ticket' value='Ticket'/>");
//print("<input type='submit' name='caja' value='Caja'/>");
//print("<input type='submit' name='cati' value='Ticket y Caja'/>");
?>
</form></td></tr></table>
<? 

//Se recibe la orden de nueva venta
if (isset($_POST['nuvent']))
{
//Echo "Dentro de nuvent, me ha llegado";
$fecha = $_POST['fecha'];
$hora = $_POST['hora'];
$cliente = $_POST['cliente'];
$pago = $_POST['pago'];
$venta = "Insert into ventas (idcliente,fecha,hora,pago) values ('$cliente',curdate(),'$hora','$pago')";
$rventa = mysql_db_query($dbname,$venta,$con);
}
$codigov = "Select id from ventas where idcliente like '$cliente' and fecha like curdate() and hora like '$hora' and pago like '$pago'";
$rcodigov = mysql_db_query($dbname,$codigov,$con);
print("<table><tr><td>");
	while ($codigocli = mysql_fetch_array($rcodigov))
	$_SESSION["venta"] = $codigocli[id];
	$escogido = $codigocli[id];
		if ((isset($_POST['nuvent'])) || (isset($_POST['bprodu'])) || (isset($_GET['producto'])) || (isset($_SESSION['venta'])))	
		{
		print("<form name='busqueda' action='index.php?id=4' method='post'>");
		print("<table><tr>");
		print("<th>Referencia</th><th>Ref Prov</th><th>Descripcion</th><th>Precio</th></tr>");
		print("<tr><td><input type='hidden' value='$escogido' name='idventa'></input>");
		print("<input type='text' name='referencia'></input></td>");
		print("<td><input type='text' name='referenciap'></input></td>");
		print("<td><input type='text' name='descripcion'></input></td>
		<td><input type='text' name='precio' /></td>
		</td>");
		//Parte de tallas colores familias
		
		//FIn
		print("<td><input type='submit' name='bprodu' value='Buscar'/>
		");
		include("tacofa2.php");
		print("</table></form></td></tr><tr>");
		}
		/*if(isset($_POST['aprodu']))
		{
			print("</td><td valign='top'>");
			print("<tr><td>$_POST[referencia]</td><td>$_POST[rprov]</td><td>$_POST[descripcion]</td><td>$$_POST[fcolor]</td>");
			print("<td>$_POST[ncolor]</td><td>$_POST[ntalla]</td><td></td><td>$_POST[precio]</td><td>");
			print("</td></tr>");
			print("</table>");
		}*/
		if (isset($_POST['bprodu']))
		{
		print("</td><td valign='top'>");
		$referencia = $_POST['referencia'];
		$referenciap = $_POST['referenciap'];
		$descripcion = $_POST['descripcion'];
		$escogido = $_POST['idventa'];
		//$_SESSION["venta"] = $escogido;
		$talla = $_POST['talla'];
		$color = $_POST['color'];
		$familia = $_POST['familia'];
		/*Consideraciones en la busqueda del producto que queremos vender:
		Si ponemos la referencia nuestra en principio no pondremos nada mas y si se pone pasamos
		Si ponemos la referencia del proveedor no necesitamos poner nada mas y si se pone pasamos
		Si se pone algo en la descripcion las referencias las podemos necesitar aunque sea parcialmente
		Si ponemos familia talla o color las demas pueden servir de algo, aunque habra que considerar cuales estan vacias
		y cuales no
		asi que para todas estas cosas es mejor crear un fichero aparte que contemple todas estas consideraciones y devuelva resbu
		que sera la cadena de busqueda. al fichero lo llamare busvent.php
		*/
		include ("ventas/busvent.php");
		//echo $resbu;
		$resbus=mysql_db_query($dbname,$resbu,$con);
		//Deberiamos considerar que si no hay productos no muestre la cabezera
		print("<table><tr><th>Referencia</th><th>Ref Prov</th><th>Descripcion</th><th>Familia</th><th>Color</th><th>Talla</th><th>Stock</th><th>Precio</th><th></th></tr>");
		//Aqui muestra los resultados de la busqueda, si solo hay uno lo mete en la venta, opcion
		while ($conpro=mysql_fetch_array($resbus))
		{
		print("<tr><td><a href=index.php?id=4&producto=$conpro[pid]>$conpro[referencia]</td><td>$conpro[rprov]</td><td>$conpro[descripcion]</td><td>$conpro[fcolor]</td>");
		print("<td>$conpro[ncolor]</td><td>$conpro[ntalla]</td><td>$conpro[stock]</td><td>$conpro[preciov]</td><td>");
		//Colorines del stock
		if ($conpro[stock] == 1)
		print("<img src='imagenes/amarillo.png'></img>");
		else
		{	
		if($conpro[stock] <= 0)
		print("<img src='imagenes/rojo.png'></img>");
		else
		print("<img src='imagenes/verde.png'></img>");
}		print("</td></tr>");
		//fin de los colorines del stock
		}
		print("</table>");
		}
	print("</td></tr>");
	print("<tr><td colspan = '2'>");
	include("ventas/detvent.php");
	print("</td></tr></table>");

?>
</td>
<td valign='top' width='10%'>
<table><tr><td id = 'registradora'>
<?
//Mostramos el total de la venta actual y el numero de items eso si esta activa si no nada
if (isset($_SESSION['venta']))
{
$tove = $_SESSION['venta'];
$tot = "SELECT sum( total ) AS total, sum( unidades ) AS items FROM detallesv WHERE idventa LIKE '$tove'"; 
$rtot = mysql_db_query($dbname,$tot,$con);
$rrtot = mysql_fetch_array($rtot);
$valor = $rrtot[total];
$items = $rrtot[items];
//print("<div id='registradora'>");
print("<h3>Productos:$items</h3>");
print("<h3>Total:$valor &#8364;</h3>");
//Fin de la muestra, esto puedo ponerlo en todos los lados si quiero, hay que mirar la opcion de que la venta se mantenga
}
?>
</td></tr><tr>
<td valign='top'>
<table><tr><th colspan='4'>Listado de ventas a Cuenta</th></tr></table>
<? include ("ventas/lisvent.php"); ?>
</td></tr>
</table>

<table><tr><th colspan='4'>Listado de ventas hoy</th></tr></table>
<? include ("ventas/acuvent.php"); ?>
</td></tr>
</table>

</td></tr>
</table>


