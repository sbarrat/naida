<? //Fichero ticket.php aqui generaremos el ticket y abriremos la caja

//Tendremos que establecer la impresora epson para los tickets
//Segun la fuente del de visual basic la fuente para abrir la caja es control
//Este imprime ok a 27/09/05
$ticket = $_SESSION['venta'];
//Cojemos los items de la venta
$tticket = "Select d.precio as precio, d.unidades as unidades, d.total as total, v.hora, v.fecha as fecha, v.total as suma, v.pago as pago, p.descripcion as descripcion from detallesv as d
join ventas as v on d.idventa = v.id 
join productos as p on d.idproducto = p.id 
where d.idventa = '$ticket'";
$vticket = mysql_db_query($dbname,$tticket,$con);
//Iniciamos la impresora
$handle = printer_open();
printer_set_option($handle, PRINTER_MODE, "RAW");
printer_set_option($handle,PRINTER_PAPER_FORMAT,PRINTER_FORMAT_CUSTOM);
printer_set_option($handle,PRINTER_PAPER_WIDTH, 76);
//Cabezera del ticket
$cabezera .= "\t   MODAS NAIDA\n";
$cabezera .= "--------------------------------------";
$cabezera .= "\nMaria Luisa Rived Peman";
$cabezera .= "\nNIF: 17.696.600-D";
$cabezera .= "\nP Constitucion, 6 - 50008 Zaragoza";
$cabezera .= "\n--------------------------------------";
$cabezera .= "\nProducto\t\tPre   Un  Tot";
$cabezera .= "\n--------------------------------------";
printer_write($handle, $cabezera);
while ($rticket = mysql_fetch_array($vticket))
{
$pago = $rticket[pago];
$suma = $total + $rticket[total];
$dia = cambiaf_a_normal($rticket[fecha]);
$descripcion = substr($rticket[descripcion],0,20);
$precio = $rticket[precio];
$unidades = $rticket[unidades];
$total = $rticket[total];
$muestra = sprintf("\n%20s  %5d€ %2d %5d€",$descripcion,$precio,$unidades,$total); 
printer_write($handle, $muestra);
}
if ($pago == 0)
$pago = "Contado";
else
$pago = "Tarjeta";
$pie = "\n--------------------------------------";
$pie .= "\t\t\t\t   Total: ". $suma ."€";
$pie .= "\nFecha: ". $fecha ." Forma de Pago: ". $pago;
$pie .= "\n\tImpuestos Incluidos";
//$pie .= "\nNo se admitiran devoluciones pasados 15 dias";
$pie .= "\n\n\tGRACIAS POR SU VISITA\n\n\n\n\n\n";
printer_write($handle, $pie);
printer_close($handle);
?>