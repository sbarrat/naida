<? //Fichero que va a mostrar el listado de productos en pdf y lo mandara
//a la impresora
//Mostrara descripcion, Codigo de barras, Referencia propia y precio
require_once('conexion.php');
require('fpdf.php');
//Consultamos los datos de los productos
$prod="Select * from productos";
$rprod=mysql_db_query($dbname,$prod,$con);
//Fin consulta mas adelante mostramos datos
$pdf=new FPDF();
$pdf->AddFont('code3de9','','code39.php');
$pdf->AddPage();

$posx=10;
$posy=10;
$linea;
//Usando Cell
while ($mprod=mysql_fetch_array($rprod))
{
$cont++;

//Primera columna
if ($cont == 1)
{
	//Descripcion
	$pdf->SetXY($posx,$posy);
	$pdf->SetFont('Arial','B',6);
	$pdf->Cell(60,10,$mprod[descripcion],1,1,'L');
	//Precio
	$pdf->SetFont('Arial','B',12);
	$precio = $mprod[preciov]*1.16;
	$precio = $precio ."€";
	$pdf->Cell(60,6,$precio,1,1,'R');
	//Referencia
	$pdf->SetFont('Arial','',8);
	$pdf->Cell(60,6,$mprod[referencia],1,1,'L');
	//Codigo de barras
	$codigo = "*". $mprod[referencia] ."*";
	$pdf->SetFont('code3de9','',24);
	$pdf->Cell(60,12,$codigo,1,1,'C');
	//Fin de la etiqueta
}
//Segunda Columna
if ($cont == 2)
{
	//Descripcion
	$posx=$posx+65;
	$pdf->SetXY($posx,$posy);
	$pdf->SetFont('Arial','B',6);
	$pdf->Cell(60,10,$mprod[descripcion],1,1,'L');
	//Precio
	$pdf->SetX($posx);
	$pdf->SetFont('Arial','B',12);
	$precio = $mprod[preciov]*1.16;
	$precio = $precio ."€";
	$pdf->Cell(60,6,$precio,1,1,'R');
	//Referencia
	$pdf->SetX($posx);
	$pdf->SetFont('Arial','',8);
	$pdf->Cell(60,6,$mprod[referencia],1,1,'L');
	//Codigo de barras
	$pdf->SetX($posx);
	$codigo = "*". $mprod[referencia] ."*";
	$pdf->SetFont('code3de9','',24);
	$pdf->Cell(60,12,$codigo,1,1,'C');
	//Fin de la etiqueta
}
//Tercera columna
if ($cont == 3)
{
	$posx=$posx+65;
	$pdf->SetXY($posx,$posy);
	//Descripcion
	$pdf->SetFont('Arial','B',6);
	$pdf->Cell(60,10,$mprod[descripcion],1,1,'L');
	//Precio
	$pdf->SetX($posx);
	$pdf->SetFont('Arial','B',12);
	$precio = $mprod[preciov]*1.16;
	$precio = $precio ."€";
	$pdf->Cell(60,6,$precio,1,1,'R');
	//Referencia
	$pdf->SetX($posx);
	$pdf->SetFont('Arial','',8);
	$pdf->Cell(60,6,$mprod[referencia],1,1,'L');
	//Codigo de barras
	$pdf->SetX($posx);
	$codigo = "*". $mprod[referencia] ."*";
	$pdf->SetFont('code3de9','',24);
	$pdf->Cell(60,12,$codigo,1,1,'C');
	//Fin de la etiqueta
	$posx=10;
	$posy=$posy+40;
	$linea++;
	$cont=0;
}
}
$pdf->Output();
?>