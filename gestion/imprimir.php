<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
<title>Version para imprimir</title></head>
<?
session_start(SESSION);
require_once("conexion.php");
echo "<p align=center><input type=\"button\" name=\"imprimir\" value=\"Imprimir\" onclick=\"window.print();\"/></p>";
$informe = $_SESSION['informe'];
$consulta = $_SESSION['consulta'];
//include("gestion/listado.php");
echo "<hr /><b>NAIDA<br></br>";
echo "Moda<br></br>";
echo "Maria Luisa Rived Peman<br></br>";
echo "NIF: 17.696.600-D<br></br>";
echo "Pº Constitucion,6<br></br>";
echo "50008 Zaragoza<br></br>";
echo "Telefono 976158566</b><br></br><hr />";
Echo "<br></br><b>Informe </b>";
$ini = $_SESSION['ini'];
		switch ($ini)
		{
			case 1:
			{
				Echo "<b>hoy:</b>";
				break;
			}
			case 2:
			{
				Echo "<b>semana:</b>";
				break;
			}
			case 3:
			{
				Echo "<b>mes:</b>";
				break;
			}	
			case 4:
			{Echo "<b>año:</b>";
				break;
			}
			case 5:
			{Echo "<b>por fecha seleccionada:</b>";
				break;
			}
		}

if ($consulta ==""){
	$resultado = mysql_db_query($dbname,$informe,$con);
	}
if ($informe == ""){
	$resultado = mysql_db_query($dbname,$consulta,$con);
}
if (!$resultado){
		echo "No se pudo ejecutar la consulta<br>";
	}	
	else{
	$cont=1;$contg=1;$imp=0;$it=0;$ni=0;$nit=0;$r=0;
	echo "<table border=\"1\" align=\"center\"><tr bgcolor=#aaaaaa><th>Numero venta</th><th>Nº venta del dia</th><th colspan=2>Importe</th><th colspan=2>Items</th></tr>";
		while($a = mysql_fetch_row($resultado)){
			if ($cont==1 || $r==0){
			echo "<tr><th colspan=6>Fecha: ".$a[2]."</th></tr>";
			$fech=$a[2];$r=1;
			}
			if($fech != $a[2]){
				echo "<tr bgcolor=#cccccc><td colspan=2>Total ventas: ".($cont-1)."</td>";
				echo "<td colspan=3>Total importe: ".$imp." &#8364;</td>";
				echo "<td colspan=3>Total Items: ".$ni."</tr>";
				echo "<tr><td colspan=7></td></tr>";
				$cont=1;
				$imp=0;
				$ni=0;
				$r=0;
			}
			if ($r==0){
			echo "<tr><th colspan=6>Fecha: ".$a[2]."</th></tr>";
			$r=1;
			}
			echo "<tr><td>".$a[0]."</td>";
			echo "<td>$cont</td>";
			if ($a[3]!=0){
			echo "<td colspan=2>".$a[3]." &#8364;</td>";
			}else{
			echo "<td colspan=2>0</td>";
			}
			echo "<td colspan=2>".$a[6]."</td>";
			echo "</tr>";
			$fech = $a[2];
			$imp+=$a[3];
			$cont+=1;
			$ni+=$a[6];
			$contg+=1;
			$it+=$a[3];
			$nit+=$a[6];
		}
		echo "<tr bgcolor=#cccccc><td colspan=2>Total ventas: ".($cont-1)."</td>";
		echo "<td colspan=3>Total importe: ".$imp." &#8364;</td>";
		echo "<td colspan=3>Total Items: ".$ni."</tr>";
		echo "</table>";
		echo "<br></br><b>Total de ventas: ".($contg-1);
		echo " - Importe total: ".$it ." &#8364;";
		echo " - Items totales: ".$nit;
		echo "</b>";
	}
?>
</html>