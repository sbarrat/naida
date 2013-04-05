<? //Fichero que va a mostrar el listado de productos en pdf y lo mandara
//a la impresora
//Mostrara descripcion, Codigo de barras, Referencia propia y precio
//Ejemplo: Naida modas
//Paseo de la constitucion 6, 50008 Zaragoza / NIF: 17.696.600-D
//Referencia Propia
//Codigo de barras
//Precio
require_once('../conexion.php');
require('../fpdf.php');
//Consultamos los datos de los productos
//$prod="Select * from productos";
//$rprod=mysql_db_query($dbname,$prod,$con);
//Fin consulta mas adelante mostramos datos
//Vamos a definir el tamaño de las etiquetas, idea hacerlo con excel
$empresa = "Naida Moda";
$dempresa = "Paseo de la constitucion 6, 50008 Zaragoza / NIF: 17.696.600-D";
$pdf=new FPDF('L','mm','A4');
$pdf->AddFont('code3de9','','code39.php');
//Clase para dibujar tablas
class PDF extends FPDF
{
function tabla($referencia,$precio)
	{
	$this->referencia($referencia);
	$this->codigo($referencia);
	$this->precio($precio);
	}
function referencia($referencia)
	{
	//Datos
	$this->SetFont('Arial','',12)
	foreach($referencia as $referencia)
	$this->Cell(40,7,$referencia,1,0,'C');
	$this->Ln();
	}
	
function codigo($referencia)
	{
	//Datos
	$this->SetFont('code3de9','',24);
	foreach($referencia as $referencia)
	$this->Cell(40,7,$referencia,1,0,'C');
	$this->Ln();
	}
	
function precio($precio)
	{
	//Datos
	$this->SetFont('Arial','',12);
	foreach($precio as $precio)
	$this->Cell(40,7,$precio,1,0,'C');
	$this->Ln();
	}
	
}
			
$pdf->AddPage();
//Tamaño de las etiquetas 48,5 mm de ancho por 16,9mm de alto, 68 por pagina
//Consulta que coje los datos
$prod="Select * from productos";
$rprod=mysql_db_query($dbname,$prod,$con);
$a=0;
while ($mprod=mysql_fetch_array($rprod))
{
$referencia[$a] = $mprod[referencia];
$precio[$a] = $mprod[preciov];
$a++;
}
$pdf->tabla($referencia,$precio);
//$pdf->SetAutoPageBreak(true,40);
//}

$pdf->Output();
?>