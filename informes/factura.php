<? //Fichero que imprime la factura en pdf
function cambiaf_a_normal($fecha)
{
    ereg( "([0-9]{2,4})-([0-9]{1,2})-([0-9]{1,2})", $fecha, $mifecha);
    $lafecha=$mifecha[3]."/".$mifecha[2]."/".$mifecha[1];
    return $lafecha;
}
require_once('conexion.php');

$venta = $_GET['venta'];
$cfecha = "Select fecha from ventas where id like '$venta'";
$rfecha = mysql_db_query($dbname,$cfecha,$con);
$dfecha = mysql_fetch_array($rfecha);
$fecha = $dfecha[fecha];
$fecha = cambiaf_a_normal($fecha);

require('fpdf.php');
$pdf=new FPDF();
$pdf->AddPage();
//Cabercera de la factura
$pdf->SetFont('Arial','B',18);
$pdf->Cell(60,7,"NAIDA",0,1,'L');
$pdf->SetFont('Arial','B',12);
$pdf->Cell(60,5,"Moda",0,1,'L');
$pdf->SetFont('Arial','',8);
$pdf->Cell(60,3,"Maria Luisa Rived Peman",0,1,'L');
$pdf->SetFont('Arial','',8);
$pdf->Cell(60,3,"NIF: 17.696.600-D",0,1,'L');
$pdf->SetFont('Arial','',8);
$pdf->Cell(60,3,"Pº Constitucion,6",0,1,'L');
$pdf->SetFont('Arial','',8);
$pdf->Cell(60,3,"50008 Zaragoza",0,1,'L');
$pdf->SetFont('Arial','',8);
$pdf->Cell(60,3,"Telefono 976158566",0,1,'L');
$pdf->Rect(10,10,190,30);
//Fin de la cabezera
//Cabezera de la descripcion
$posx=10;

$pdf->setxy($posx,50);
$pdf->SetFillColor(150,150,150);
$pdf->SetTextColor(255);


$pdf->SetFont('Arial','B',9);
$pdf->Cell(30,4,"Referencia",1,1,'C',1);
$posx=$posx+30;
$pdf->Setxy($posx,50);
$pdf->Cell(30,4,"Ref Prov",1,1,'C',1);
$posx=$posx+30;
$pdf->Setxy($posx,50);
$pdf->Cell(70,4,"Descripcion",1,1,'C',1);
$posx=$posx+70;
$pdf->Setxy($posx,50);
$pdf->Cell(20,4,"Unidades",1,1,'C',1);
$posx=$posx+20;
$pdf->Setxy($posx,50);
$pdf->Cell(20,4,"Precio/U",1,1,'C',1);
$posx=$posx+20;
$pdf->Setxy($posx,50);
$pdf->Cell(20,4,"Importe",1,1,'C',1);
$posx=$posx+20;
$pdf->Setxy($posx,50);
$pdf->SetFillColor(224,235,255);
$pdf->SetTextColor(0);
//Fin de la cabezera de la descripcion
//Mostramos los articulos de la venta
$posy=55;
$posx=10;
//$venta = $_SESSION['venta'];
$venact="SELECT p.id, p.descripcion as descripcion, p.referencia as referencia, p.referenciap as proveedor, d.idventa, d.idproducto, d.precio as preciov, d.unidades as unidades, d.total
FROM productos AS p
JOIN detallesv AS d ON p.id = d.idproducto where d.idventa like '$venta'";
$pdf->Setxy(70,55);
//$detalle = "La venta es ". $venta;
$pdf->Cell(20,4,$detalle,0,1,'C');
//$pdf->Cell(20,4,$venact,0,1,'C');

$vvenact = mysql_db_query($dbname,$venact,$con);
while ($vvvenact = mysql_fetch_array($vvenact))
{
$pdf->setxy($posx,$posy);
$pdf->SetFont('Arial','B',9);
$pdf->Cell(30,4,$vvvenact[referencia],0,1,'C');
$posx=$posx+30;
$pdf->setxy($posx,$posy);
$pdf->Cell(30,4,$vvvenact[proveedor],0,1,'C');
$posx=$posx+30;
$pdf->setxy($posx,$posy);
$pdf->Cell(70,4,$vvvenact[descripcion],0,1,'C');
$posx=$posx+70;
$pdf->setxy($posx,$posy);
$pdf->Cell(20,4,$vvvenact[unidades],0,1,'C');
$posx=$posx+20;
$pdf->setxy($posx,$posy);

$precio=$vvvenact[preciov];
$precio=$precio ."€";
$pdf->Cell(20,4,$precio,0,1,'C');
$posx=$posx+20;
$pdf->setxy($posx,$posy);

$subtotal=$vvvenact[preciov]*$vvvenact[unidades];
$totalventa = $totalventa + $subtotal;
$subtotal = $subtotal ."€";
$pdf->Cell(20,4,$subtotal,0,1,'C');

$posy=$posy+8;
$posx=10;

//$pdf->setxy($posx,$posy);

}
//Diseño de las cajas de los productos
//Referencia
$pdf->Rect(10,50,30,$posy-50);
//Referencia Proveedor
$pdf->Rect(10,50,60,$posy-50);
//Descripcion
$pdf->Rect(10,50,130,$posy-50);
//Precio
$pdf->Rect(10,50,150,$posy-50);
//Unidades
$pdf->Rect(10,50,170,$posy-50);
//Subtotal
$pdf->Rect(10,50,190,$posy-50);
//Fin del diseño de las cajas
//Parte del cliente si es que lo hay
$cliente = "Select c.id as cid,c.nombre as nombre, c.direccion as direccion,c.nif as nif, c.cp as cp, c.ciudad as ciudad, c.telefono as telefono, c.id,v.id,v.idcliente from clientes as c join ventas as v on c.id like v.idcliente where v.id like '$venta'";
$rcliente = mysql_db_query($dbname,$cliente,$con);
$vcliente = mysql_fetch_array($rcliente);
//Cuadro de la ficha de cliente
$pdf->Rect(100,12,90,25);
$pdf->Setxy(100,12);
//Nombre
$pdf->SetFont('Arial','B',10);
$pdf->Cell(60,5,"Cliente: ". $vcliente[cid],0,1,'L');
$pdf->setx(100);
$pdf->SetFont('Arial','',8);
$pdf->Cell(60,3,$vcliente[nombre],0,1,'L');
$pdf->setx(100);
$pdf->Cell(60,3,"NIF/CIF: ". $vcliente[nif],0,1,'L');
$pdf->setx(100);
$pdf->Cell(60,3,$vcliente[direccion],0,1,'L');
$pdf->setx(100);
$pdf->Cell(10,3,$vcliente[cp],0,1,'L');
$pdf->setxy(110,26);
$pdf->Cell(30,3,$vcliente[ciudad],0,1,'L');
$pdf->setx(100);
$pdf->Cell(20,3,"Telef: ".$vcliente[telefono],0,1,'L');
//Fin de la parte de cliente
//Parte del numero de factura y fecha de esta
$pdf->SetFont('Arial','B',10);
$pdf->setxy(60,30);
$pdf->Cell(20,4,"Factura Nº: ".$venta,0,1,'L');
$pdf->setx(60);
$pdf->Cell(20,4,$fecha,0,1,'L');
//Parte del total de la venta
$pdf->setxy(10,$posy+10);
$pdf->SetFont('Arial','BU',8);
$pdf->Cell(20,4,"Base Imponible",0,1,'L');
$pdf->Setxy(50,$posy+10);
$pdf->Cell(20,4,"IVA 16%",0,1,'L');
$pdf->Setxy(80,$posy+10);
$pdf->Cell(20,4,"Recargo Equivalencia 4%",0,1,'L');
$pdf->Setxy(170,$posy+10);
$pdf->SetFont('Arial','BU',10);
$pdf->Cell(20,4,"TOTAL",0,1,'L');
//Fin de la cabezera de los totales de la venta
//Cierre de venta y resultados
$pago = $_POST['pago'];
$iva = $totalventa * 0.16;
$req = $totalventa * 0.04;
$rtoto = $totalventa + $iva + $req;
$pdf->SetFont('Arial','B',8);
$pdf->sety($posy+15);
$pdf->Cell(20,4,$totalventa ." €",0,1,'L');
$pdf->Setxy(50,$posy+15);
$pdf->Cell(20,4,$iva ." €",0,1,'L');
$pdf->Setxy(80,$posy+15);
$pdf->Cell(20,4,$req ." €",0,1,'L');
$pdf->Setxy(170,$posy+15);
$pdf->SetFont('Arial','B',12);
$pdf->Cell(20,4,$rtoto ." €",0,1,'L');
$pdf->Setxy(10,$posy+20);
$pdf->SetFont('Arial','BU',10);
$pdf->Cell(20,4,"Forma de Pago",0,1,'L');
$pdf->SetFont('Arial','B',8);
if ($pago == 0)
$pdf->Cell(20,4,"Efectivo",0,1,'L');
else
$pdf->Cell(20,4,"Tarjeta",0,1,'L');
$pdf->Output();










?>