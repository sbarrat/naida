<?
echo "<br></br><a href=gestion/imprimir.php target=blank><input type=\"button\" value=\"Imprimir\"></input></a><br></br>";
Echo "<br></br><b>Informe </b> ";
$_SESSION['consulta'] = $consulta;
$_SESSION['informe'] = $informe;
$_SESSION['ini']= $ini;
$ini = $_GET['in'];
//para añadir un titulillo identificativo
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
//if ($consulta ==""){
	//$resultado = mysql_db_query($dbname,$informe,$con);
	//}
//if ($informe == ""){
	$resultado = mysql_db_query($dbname,$consulta,$con);
//}
 
 //if (!$resultado){
	//	echo "No se pudo ejecutar la consulta<br>";
	//}	
	//else{
	//echo "en consulta tenemos:". $consulta;
	//echo "en informe tenemos:". $informe;
	$cont=1;$contg=1;$imp=0;$it=0;$ni=0;$nit=0;$r=0;
	//cabecera de la tabla
	echo "<table border=\"1\" align=\"center\"><tr><th>Numero venta</th><th>Nº venta del dia</th><th colspan=2>Importe</th><th colspan=2>Items</th></tr>";
		while($a = mysql_fetch_row($resultado)){
		//pone la fecha como cabecera
			if ($cont==1 || $r==0){
			echo "<tr><th colspan=6>Fecha: ".$a[2]."</th></tr>";
			$fech=$a[2];$r=1;
			}
			if($fech != $a[2]){
			//si la fecha es diferente que la anterior hace resumen datos
				echo "<tr><td colspan=2>Total ventas: ".($cont-1)."</td>";
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
			//datos de la tabla
			echo "<tr><td>".$a[0]."</td>";
			echo "<td>$cont</td>";
			if ($a[3]!=0){
			echo "<td colspan=2>".$a[3]."</td>";
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
		//ultimos resumenes
		echo "<tr><td colspan=2>Total ventas: ".($cont-1)."</td>";
		echo "<td colspan=3>Total importe: ".$imp." &#8364;</td>";
		echo "<td colspan=3>Total Items: ".$ni."</tr>";
		echo "</table>";
		//totales globales
		echo "<br></br><b>Total de ventas: ".($contg-1);
		echo " - Importe total: ".$it ."&#8364;";
		echo " - Items totales: ".$nit;
		echo "</b><br></br><br></br><a href=\"gestion/imprimir.php\" target=\"blank\"><input type=\"button\" value=\"Imprimir\"></input></a>";
	//}
?>