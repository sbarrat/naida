<?php
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
/*******************************************************************************************************************************/
//Cabercera de la factura
function Header()
{
$this->SetFont('Arial','B',18);
$this->Cell(60,7,"NAIDA",0,1,'L');
$this->SetFont('Arial','B',12);
$this->Cell(60,5,"Moda",0,1,'L');
$this->SetFont('Arial','',8);
$this->Cell(60,3,"Maria Luisa Rived Peman",0,1,'L');
$this->SetFont('Arial','',8);
$this->Cell(60,3,"NIF: 17.696.600-D",0,1,'L');
$this->SetFont('Arial','',8);
$this->Cell(60,3,"Pº Constitucion,6",0,1,'L');
$this->SetFont('Arial','',8);
$this->Cell(60,3,"50008 Zaragoza",0,1,'L');
$this->SetFont('Arial','',8);
$this->Cell(60,3,"Telefono 976158566",0,1,'L');
//Cabezera con el tipo de informe generado*****************************************************************************/
$this->SetFont('Arial','B',10);
$this->setxy(130,11);
$this->Cell(60,6,$detalle,0,1,'L');
$diita = $date['mday'] ."/". $date['mon'] ."/". $date['year'];
$this->setx(130);
$this->Cell(60,6,"Generado el ". $diita,0,1,'L');
$this->Rect(10,10,190,30);
//Cabezera de la descripcion*********************************************************************************************/
$posx=10;
/*Coloreamos la parte de la descripcion*************************/
$this->setxy($posx,50);
$this->SetFillColor(150,150,150);
$this->SetTextColor(255);

/**************PARTE DE LAS CABEZERAS DEL LISTADO**************************************/
/*fuente empleada*/
$this->SetFont('Arial','B',9);
/***************Fecha la primera sin posicion**/
$this->Cell(25,4,"Fecha",1,1,'C',1);
/****************Id con posicion*************************/
$posx=$posx+25;
$this->Setxy($posx,50);
$this->Cell(20,4,"Id",1,1,'C',1);
/****************Articulos con posicion***********************************/
$posx=$posx+19;
$this->Setxy($posx,50);
$this->Cell(55,4,"Articulos",1,1,'C',1);
/*****************Total con posicion**********************************/
$posx=$posx+55;
$this->Setxy($posx,50);
$this->Cell(30,4,"Total",1,1,'C',1);
/***********************A cuenta con posicion******************************/
$posx=$posx+30;
$this->Setxy($posx,50);
$this->Cell(30,4,"A cuenta",1,1,'C',1);
/*********************Resto con posicion*********************************/
$posx=$posx+30;
$this->Setxy($posx,50);
$this->Cell(30,4,"Resto",1,1,'C',1);
$this->Ln(54);
/*********************************************************************/
}
//Fin de la cabezera*******************************************************************************************************/
//Pie de página************************************************************************************************************/
function Footer()
{
    //Posición: a 1,5 cm del final
    $this->SetY(-15);
    //Arial italic 8
    $this->SetFont('Arial','I',8);
    //Número de página
    $this->Cell(0,10,'Pagina '.$this->PageNo().'/{nb}',0,0,'C');
}
}
//Fin del pie de la pagina***************************************************************************************************/
/*****************************************************************************************/
//Creación del objeto de la clase heredada
$pdf=new PDF();
$pdf->AliasNbPages();
$pdf->AddPage();
$pdf->SetFillColor(224,235,255);
$pdf->SetTextColor(0);
//Principio de la muestra de resultados*************************************************************************************
//Ejecutamos la consulta
$cinforme = mysql_db_query($dbname,$informe,$con);//Consulta sql
$posy=50;//Posicion inicial
/*********************PARTE ANTIGUA (DEPURAR)************************************/
while ($rinforme = mysql_fetch_array($cinforme))
{
	/******************SALTANDO*****************************/
	/************Parte del salto de pagina*/ 
	if ($posy >= 271) //Salto de pagina
	$posy = 54;
	else
	$posy=$posy + 4;
	$pdf->Setxy(10,$posy);
/*******Fin del salto de pagina*/
	/******************FIN DE LOS SALTOS*********************/
	
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
/********************FIN PARTE ANTIGUA*********************************************/



/*Final de los resultados************************************************************************/
$pdf->Output();
?> 