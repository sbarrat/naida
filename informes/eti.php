<? 
require_once('../conexion.php');
require('../fpdf.php');
//Nuevas medidas 
$pdf=new FPDF('P','mm','A4');
$pdf->AddFont('code3de9','','code39.php');
$pdf->AddPage();
//caracteristicas de las etiquetas
$ejex = "4.525";//distancia de las x
$ejey = "8"; //distancia de la y
$largo = "36.8"; //largo de la etiqueta
$alto = "23.8"; //ancho de la etiqueta
$columnas = "5"; //Columnas en la pagina
$etiquetas = "55"; //etiquetas totales
$espaciov = "1.6";//Espacio entre etiquetas vertical
$espacioh = "2.5";//Espacion entre etiquetas horizotal
//Modelo de apli 03051 con chaflan 55 etiquetas por pagina 5 columnas 11 filas
//fin de los datos de la etiqueta

$pdf->Setxy($ejex,$ejey);//Principio de la pagina
//Parte de los datos
$empresa = "Naida Moda";
$dempresa = "Paseo de la constitucion 6, 50008 Zaragoza / NIF: 17.696.600-D";
//Parte de la consulta
$prod="Select * from productos";
$rprod=mysql_db_query($dbname,$prod,$con);
//Volcamos todos los datos en dos arrays
while ($mprod=mysql_fetch_array($rprod))
{
$referencia[$a] = $mprod[referencia];
$precio[$a] = $mprod[preciov];
$a++;
}
//Fin de la consulta y llenado de array
//Llenado del documento
//for ($b;$b<=$a;$b++) //esta es la buena 
$posx=$ejex;
$posy=$ejey;
for ($b;$b<=70;$b++) //esta es para evaluar
{
$pdf->Setxy($posx,$posy);
$pdf->SetFont('Arial','',8);
$pdf->Cell($largo,4,$empresa ."$b",TRL,1,'C');
$pdf->Setx($posx);
$pdf->SetFont('Arial','',3);
$pdf->Cell($largo,2,$dempresa,RL,1,'C');
$pdf->Setx($posx);
$pdf->SetFont('Arial','',5);
$pdf->Cell($largo,3,"REF: ". $referencia[$b],RL,1,'C');
$pdf->Setx($posx);
$pdf->SetFont('code3de9','',17);
$pdf->Cell($largo,8.9,$referencia[$b],RL,1,'C');
$pdf->Setx($posx);
$pdf->SetFont('Arial','B',10);
$pdf->Cell($largo,6,$precio[$b] ." EUR",BRL,1,'C');
$celda++;

if ($celda == $columnas)
{
$posx=$ejex;
$posy=$posy+$alto;
$celda=0;
}
else
$posx=$posx+$largo+$espaciov;
}
$pdf->SetAutoPageBreak(auto,$ejey);
$pdf->Output();
?>