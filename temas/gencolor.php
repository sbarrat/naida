<? //Gencolor.php
print("<tr><td>Seleccione el color de $hasele</td></tr>");
print("<tr><td>");
 //gama de colores en formato hexadecimal

$columna = 0;
print("<table border = '0' CELLSPACING='0'>");
//Pongo una primera columna desde el #000000 al #ffffff, que son 16
print("<tr><td colspan='10'><table width='100%'>");
for ($a = 0; $a <= 15; $a++)
{
$cbas = dechex($a);
$colorbas = "#". $cbas ."". $cbas ."". $cbas ."". $cbas ."". $cbas ."". $cbas;
$colorbas2 = $cbas ."". $cbas ."". $cbas ."". $cbas ."". $cbas ."". $cbas;
print("<td bgcolor='$colorbas'><a href='index.php?id=9&crecol=$colorbas2&selec=$seleccionado'>.</a></td>");
}
print("</table></td></tr>");
$cont = 0;
for ($r = 6;$r <= 15; $r++)
	{
	for($g = 6;$g <= 15; $g++)
		{
		for($b = 6;$b <= 15; $b++)
			{
			$vr = $r * 17;
			$vg = $g * 17;
			$vb = $b * 17;
			$hexr = dechex($vr);
			$hexg = dechex($vg);
			$hexb = dechex($vb);
			$crecol = "#". $hexr ."". $hexg ."". $hexb;
			$crecol2 = $hexr ."". $hexg ."". $hexb;
			//echo "<p>". $crecol;
			
			if ($cont == 100) //225
			{
			print("</table></td>");
			$cont = 0;
			$col++;
			}
			if ($col == 10)
			{
			print("</tr><tr>");
			$col=0;
			}
			if ($cont == 0)
			print("<td><table border = '0' CELLSPACING='0'>");
			
			if ($columna == 0)
				{
				print("<tr><td bgcolor='$crecol'><a href='index.php?id=9&crecol=$crecol2&selec=$seleccionado'>.</a></td>");
				$columna++;
				
				}
			else
				{
				if ($columna == 9)
					{
					print("<td bgcolor='$crecol'><a href='index.php?id=9&crecol=$crecol2&selec=$seleccionado'>.</a></td></tr>");
					$columna = 0;
					}
				else
					{
					print("<td bgcolor='$crecol'><a href='index.php?id=9&crecol=$crecol2&selec=$seleccionado'>.</a></td>");
					$columna++;
					}
				}
			$cont++;
			}
		
		}
	
	}
	
print("</table></td></tr>");
//fin de la gama de colores
?>