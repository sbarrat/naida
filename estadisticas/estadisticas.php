<? //fichero estadisticas.php ?><h2>Estadisticas 2005</h2><?$consulta="SELECT count(*) as total, month(dia) as mes, day(dia) as dya, dia FROM `accesos` group by dia";$resmanu = mysql_db_query ($dbname, $consulta, $con);while ($celda = mysql_fetch_array($resmanu)){$mes = $celda[mes];$dia = $celda[dya];$total = $celda[total];$matriz [$mes] [$dia] = $total;}
print("<table width=100% valign=top>");for ($i=1; $i<=12; $i++){switch ($i){case 1: print ("<tr><td width=25% valign=top>");$toca="Enero";$mesdi=31;break;case 2: print ("</td><td width=25% valign=top>");$toca="Febrero";$mesdi=28;break;case 3: print ("</td><td width=25% valign=top>");$toca="Marzo";$mesdi=31;break;case 4: print ("</td><td width=25% valign=top>");$toca="Abril";$mesdi=30;break;case 5: print ("</td></tr><tr><td width=25% valign=top>");$toca="Mayo";$mesdi=31;break;case 6: print ("</td><td width=25% valign=top>");$toca="Junio";$mesdi=30;break;case 7: print ("</td><td width=25% valign=top>");$toca="Julio";$mesdi=31;break;case 8: print ("</td><td width=25% valign=top>");$toca="Agosto";$mesdi=31;break;case 9: print ("</td></tr><tr><td width=25% valign=top>");$toca="Septiembre";$mesdi=30;break;case 10: print ("</td><td width=25% valign=top>");$toca="Octubre";$mesdi=31;break;case 11: print ("</td><td width=25% valign=top>");$toca="Noviembre";$mesdi=30;break;case 12: print ("</td><td width=25% valign=top>");$toca="Diciembre";$mesdi=31;break;}
print("<table width=100% border=0 cellspacing=0 cellpadding=0 valign=top>");
print("<tr><td width=15 height=15 background=imagenes/coinsupg.gif>");
print("<img src=imagenes/space15_15.gif width=15 height=15></td>");
print("<td height=15 background=imagenes/sup.gif>");
print("<img src=imagenes/space15_15.gif width=15 height=15></td>");
print("<td height=15 background=imagenes/sup.gif>");
print("<img src=imagenes/space15_15.gif width=15 height=15>$toca</td>");
print("<td width=15 height=15 background=imagenes/coinsupd.gif>");
print("<img src=imagenes/space15_15.gif width=15 height=15></td></tr>");
$totmes = 0;
	for ($j=1; $j<=$mesdi; $j++)		{
		print("<tr><td width=15 background=imagenes/g.gif>");
   	print("<img src=imagenes/space15_15.gif width=15 height=15></td>");
   	print("<td background=imagenes/fond.gif align=center width=15><font size=-2>$j</font></td>");
   	print("<td background=imagenes/fond.gif align=left >");
   	$tama = $matriz [$i] [$j];		$totmes = $totmes + $tama;
		$tama = $tama*2;		print("<img src=imagenes/bar_left.gif height=10><img src=imagenes/bar_middle.gif width=$tama height=10><img src=imagenes/bar_right.gif height=10>");		print("<font size=-2 color=#bf037f>");
		echo $matriz [$i] [$j];
		print("</font>");		print("<td width=15 background=imagenes/d.gif>");
		print("<img src=imagenes/space15_15.gif width=15 height=15></td></tr>");
  		}
  		print("<tr><td width=15 background=imagenes/g.gif>");
   	print("<img src=imagenes/space15_15.gif width=15 height=15></td>");
   	print("<td background=imagenes/fond.gif align=center width=15></td>");
   	print("<td background=imagenes/fond.gif align=left >");
   	print("Total $toca ");
   	print("<font size=-1 color=#bf037f>");
		echo $totmes;
		print("</font>");		print("<td width=15 background=imagenes/d.gif>");
		print("<img src=imagenes/space15_15.gif width=15 height=15></td></tr>");
   			print("<tr><td width=15 height=15 background=imagenes/coininfg.gif>");
		print("<img src=imagenes/space15_15.gif width=15 height=15></td>");
    	print("<td height=15 background=imagenes/inf.gif>");
    	print("<img src=imagenes/space15_15.gif width=15 height=15></td>");
		print("<td height=15 background=imagenes/inf.gif>");
    	print("<img src=imagenes/space15_15.gif width=15 height=15></td>");
    	print("<td width=15 height=15 background=imagenes/coininfd.gif>");
    	print("<img src=imagenes/space15_15.gif width=15 height=15></td>");
  		print("</tr></table>");}?>

</table>
