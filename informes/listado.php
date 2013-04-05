<? //Genera los informes ok a 27/09/05
function cambiaf_a_normal($fecha)
{
    ereg( "([0-9]{2,4})-([0-9]{1,2})-([0-9]{1,2})", $fecha, $mifecha);
    $lafecha=$mifecha[3]."/".$mifecha[2]."/".$mifecha[1];
    return $lafecha;
}
session_start(SESSION);
$date=getdate();
$informe = $_SESSION['informe'];
$detalle = $_SESSION['detalle'];
require_once('conexion.php');

require('fpdf.php');

class PDF extends FPDF
{
//Cabecera de página
function Header()
{
    //Logo
    $this->Image('undia.jpg',10,8,33);
    //Arial bold 15
    $this->SetFont('Arial','B',15);
    //Movernos a la derecha
    $this->Cell(80);
    //Título
    $this->Cell(30,10,'Title',1,0,'C');
    //Salto de línea
    $this->Ln(20);
}

//Pie de página
function Footer()
{
    //Posición: a 1,5 cm del final
    $this->SetY(-15);
    //Arial italic 8
    $this->SetFont('Arial','I',8);
    //Número de página
    $this->Cell(0,10,'Page '.$this->PageNo().'/{nb}',0,0,'C');
}
}

$pdf=new FPDF();
$pdf->AliasNbPages();
$pdf->AddPage();
/*******************************************************************************************************************************/
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
/******************************************************************************************************************************/
//Cabezera con el tipo de informe generado*****************************************************************************/
$pdf->SetFont('Arial','B',10);
$pdf->setxy(130,11);
$pdf->Cell(60,6,$detalle,0,1,'L');
$diita = $date['mday'] ."/". $date['mon'] ."/". $date['year'];
$pdf->setx(130);
$pdf->Cell(60,6,"Generado el ". $diita,0,1,'L');
$pdf->Rect(10,10,190,30);
//Fin de la cabezera*******************************************************************************************************/
//Cabezera de la descripcion*********************************************************************************************/
$posx=10;
/*Coloreamos la parte de la descripcion*************************/
$pdf->setxy($posx,50);
$pdf->SetFillColor(150,150,150);
$pdf->SetTextColor(255);

/****************************************************/
$pdf->SetFont('Arial','B',9);
$pdf->Cell(20,4,"Fecha",1,1,'C',1);
$posx=$posx+20;
$pdf->Setxy($posx,50);
$pdf->Cell(20,4,"Id",1,1,'C',1);
$posx=$posx+20;
$pdf->Setxy($posx,50);
//$pdf->Cell(30,4,"Hora",1,1,'C',1);
$posx=$posx+30;
$pdf->Setxy($posx,50);
$pdf->Cell(20,4,"Articulos",1,1,'C',1);
$posx=$posx+20;
$pdf->Setxy($posx,50);
$pdf->Cell(30,4,"Total",1,1,'C',1);
$posx=$posx+30;
$pdf->Setxy($posx,50);
$pdf->Cell(30,4,"A cuenta",1,1,'C',1);
$posx=$posx+30;
$pdf->Setxy($posx,50);
$pdf->Cell(30,4,"Resto",1,1,'C',1);
$posx=$posx+30;
$pdf->Setxy($posx,50);
//Ponemos el color anterior ****************************/
$pdf->SetFillColor(224,235,255);
$pdf->SetTextColor(0);
//Fin de la cabezera de la descripcion*****************************************************************************************/
//Principio de la muestra de resultados*************************************************************************************///Ejecutamos la consulta
$cinforme = mysql_db_query($dbname,$informe,$con);
//$pdf->$Setxy(10,60);
$pdf->Setxy(10,54);
$cacho = 4;
$posy = 54;
$posx = 10;
while ($rinforme = mysql_fetch_array($cinforme))
{
	if ($fsel == $rinforme[fecha])
	{
	$posx=30;
	$pdf->setxy($posx,$posy);
	$chiv=1;
	}
	else
	{
	//Aqui pondermos los totales del dia anterior, la pregunta es, y si es un solo dia, o el ultimo de la lista....
		if ($chiv==1)
		{
		$pdf->SetTextColor(255);
		$titems = $titems + $sitems;
		$ttotal = $ttotal + $stotal;
		$tcuenta = $scuenta + $tcuenta;
		$tresto = $tresto + $sresto;
		$pdf->SetFillColor(255,0,0);
		$pdf->setxy(50,$posy);
		$pdf->Cell(30,4,"TOTAL DIA",1,1,'C',1);
		$pdf->setxy(80,$posy);
		$pdf->Cell(20,4,$sitems,1,1,'C',1);
		$pdf->setxy(100,$posy);
		$pdf->Cell(30,4,$stotal ."€",1,1,'C',1);
		$pdf->setxy(130,$posy);
		if ($scuenta == 0)
		$pdf->Cell(30,4,"",1,1,'C',1);
		else
		$pdf->Cell(30,4,$scuenta ."€",1,1,'C',1);
		$pdf->setxy(160,$posy);
		if ($scuenta == 0)
		$pdf->Cell(30,4,"",1,1,'C',1);
		else
		{
		$pdf->Cell(30,4,$stotal - $scuenta ."€",1,1,'C',1);
		$sresto = $stotal - $scuenta;
		}
		//Iniciamos contadores
		
		$sitems = 0;
		$stotal = 0;
		$scuenta = 0;
		/****************************/
		$pdf->SetTextColor(0);
		$pdf->SetFillColor(224,235,255);
		$posy = $posy+$cacho;
		}
		else
		{
		$titems = $titems + $sitems;
		$ttotal = $ttotal + $stotal;
		$tcuenta = $tcuenta + $scuenta;
		$tresto = $tresto + $sresto;
		}
	//Reiniciamos los subtotales, antes almacenamos en los genericos
	$pdf->Cell(20,4,cambiaf_a_normal($rinforme[fecha]),1,1,'C',1);
	$posx=30;
	$posy = $posy+$cacho;
	$pdf->setxy($posx,$posy);
	}
	$pdf->Cell(20,4,$rinforme[id],1,1,'C',1);
	$posx=$posx+20;
	$pdf->setxy($posx,$posy);
	//$pdf->Cell(30,4,$rinforme[hora],1,1,'C',1);
	$posx=$posx+30;
	$pdf->setxy($posx,$posy);
	$pdf->Cell(20,4,$rinforme[items],1,1,'C',1);
	//Sumamos items
	$sitems = $sitems + $rinforme[items];
	/**********************/
	$posx=$posx+20;
	$pdf->setxy($posx,$posy);
	$pdf->Cell(30,4,$rinforme[total] ."€",1,1,'C',1);
	//Sumamos totales
	$stotal = $stotal + $rinforme[total];
	/*********************/
	$posx=$posx+30;
	$pdf->setxy($posx,$posy);
	if ($rinforme[cuenta] == 0)
	$pdf->Cell(30,4,"",1,1,'C',1);
	else
	$pdf->Cell(30,4,$rinforme[cuenta] ."€",1,1,'C',1);
	//Sumamos cuenta
	$scuenta = $scuenta + $rinforme[cuenta];
	/*********************/
	$posx=$posx+30;
	$pdf->setxy($posx,$posy);
	$pdf->SetTextColor(255,0,0);
	if ($rinforme[cuenta] == 0)
	$pdf->Cell(30,4,"",1,1,'C',1);
	else
	$pdf->Cell(30,4,$rinforme[total]-$rinforme[cuenta] ."€",1,1,'C',1);
	$pdf->SetTextColor(0);
	$posy = $posy + $cacho;
	$fsel = $rinforme[fecha];
	$chiv=1;
	
//$pdf->setx($cacho);
}
//Ultima linea correspondiente al ultimo dia, y debajo de esta el total de los totales
$pdf->SetFillColor(255,0,0);
		$titems = $titems + $sitems;
		$ttotal = $ttotal + $stotal;
		$tcuenta = $tcuenta + $scuenta;
		
		//$pdf->SetFillColor(255,0,0);
		$pdf->SetTextColor(255);
		$pdf->setxy(50,$posy);
		$pdf->Cell(30,4,"TOTAL DIA",1,1,'C',1);
		$pdf->setxy(80,$posy);
		$pdf->Cell(20,4,$sitems,1,1,'C',1);
		$pdf->setxy(100,$posy);
		$pdf->Cell(30,4,$stotal ."€",1,1,'C',1);
		$pdf->setxy(130,$posy);
		if ($scuenta == 0)
		$pdf->Cell(30,4,"",1,1,'C',1);
		else
		$pdf->Cell(30,4,$scuenta ."€",1,1,'C',1);
		$pdf->setxy(160,$posy);
		if ($scuenta == 0)
		$pdf->Cell(30,4,"",1,1,'C',1);
		else
		{
		$pdf->Cell(30,4,$stotal - $scuenta ."€",1,1,'C',1);
		$sresto = $stotal -$scuenta;
		}
		$tresto = $tresto + $sresto;
		$pdf->SetTextColor(0);
		$pdf->SetFillColor(224,235,255);
/**********Fin linea del ultimo dia, ahora vienen los totales****************************/
		$pdf->SetFont('Arial','B',11);
		$posy = $posy + $cacho + $cacho;
		$pdf->SetFillColor(255,0,0);
		$pdf->SetTextColor(255);
		$pdf->setxy(50,$posy);
		$pdf->Cell(30,6,"TOTALES",1,1,'C',1);
		$pdf->setxy(80,$posy);
		$pdf->Cell(20,6,$titems,1,1,'C',1);
		$pdf->setxy(100,$posy);
		$pdf->Cell(30,6,$ttotal ."€",1,1,'C',1);
		$pdf->setxy(130,$posy);
		if ($tcuenta == 0)
		$pdf->Cell(30,6,"",1,1,'C',1);
		else
		$pdf->Cell(30,6,$tcuenta ."€",1,1,'C',1);
		$pdf->setxy(160,$posy);
		if ($tcuenta == 0)
		$pdf->Cell(30,6,"",1,1,'C',1);
		else
		$pdf->Cell(30,6,$tresto ."€",1,1,'C',1);
		$pdf->SetTextColor(0);
		$pdf->SetFillColor(224,235,255);
/*********************************************************************************************/
//Fin del pdf
$pdf->Output();
?>


