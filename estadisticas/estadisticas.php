<? //fichero estadisticas.php ?>
print("<table width=100% valign=top>");

print("<tr><td width=15 height=15 background=imagenes/coinsupg.gif>");
print("<img src=imagenes/space15_15.gif width=15 height=15></td>");
print("<td height=15 background=imagenes/sup.gif>");
print("<img src=imagenes/space15_15.gif width=15 height=15></td>");
print("<td height=15 background=imagenes/sup.gif>");
print("<img src=imagenes/space15_15.gif width=15 height=15>$toca</td>");
print("<td width=15 height=15 background=imagenes/coinsupd.gif>");
print("<img src=imagenes/space15_15.gif width=15 height=15></td></tr>");
$totmes = 0;
	for ($j=1; $j<=$mesdi; $j++)
		print("<tr><td width=15 background=imagenes/g.gif>");
   	print("<img src=imagenes/space15_15.gif width=15 height=15></td>");
   	print("<td background=imagenes/fond.gif align=center width=15><font size=-2>$j</font></td>");
   	print("<td background=imagenes/fond.gif align=left >");
   	$tama = $matriz [$i] [$j];
		$tama = $tama*2;
		echo $matriz [$i] [$j];
		print("</font>");
		print("<img src=imagenes/space15_15.gif width=15 height=15></td></tr>");
  		}
  		print("<tr><td width=15 background=imagenes/g.gif>");
   	print("<img src=imagenes/space15_15.gif width=15 height=15></td>");
   	print("<td background=imagenes/fond.gif align=center width=15></td>");
   	print("<td background=imagenes/fond.gif align=left >");
   	print("Total $toca ");
   	print("<font size=-1 color=#bf037f>");
		echo $totmes;
		print("</font>");
		print("<img src=imagenes/space15_15.gif width=15 height=15></td></tr>");
   	
		print("<img src=imagenes/space15_15.gif width=15 height=15></td>");
    	print("<td height=15 background=imagenes/inf.gif>");
    	print("<img src=imagenes/space15_15.gif width=15 height=15></td>");
		print("<td height=15 background=imagenes/inf.gif>");
    	print("<img src=imagenes/space15_15.gif width=15 height=15></td>");
    	print("<td width=15 height=15 background=imagenes/coininfd.gif>");
    	print("<img src=imagenes/space15_15.gif width=15 height=15></td>");
  		print("</tr></table>");

</table>
