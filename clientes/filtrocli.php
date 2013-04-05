<? //fichero filtrocli.php
//primero mostraremos el alfabeto y al final la opcion todos, asi como el cuadro
//buscar para buscar los clientes, buscar por cualquier campo
//print("<tr>");
print("<tr $_SESSION[colorc]>");
print("<th colspan='12'>");
print("<table width='100%'><tr>");
print("<th><a href='index.php?id=3&amp;l=a'>A</a></th>");
print("<th><a href='index.php?id=3&amp;l=b'>B</a></th>");
print("<th><a href='index.php?id=3&amp;l=c'>C</a></th>");
print("<th><a href='index.php?id=3&amp;l=d'>D</a></th>");
print("<th><a href='index.php?id=3&amp;l=e'>E</a></th>");
print("<th><a href='index.php?id=3&amp;l=f'>F</a></th>");
print("<th><a href='index.php?id=3&amp;l=g'>G</a></th>");
print("<th><a href='index.php?id=3&amp;l=h'>H</a></th>");
print("<th><a href='index.php?id=3&amp;l=i'>I</a></th>");
print("<th><a href='index.php?id=3&amp;l=j'>J</a></th>");
print("<th><a href='index.php?id=3&amp;l=k'>K</a></th>");
print("<th><a href='index.php?id=3&amp;l=l'>L</a></th>");
print("<th><a href='index.php?id=3&amp;l=m'>M</a></th>");
print("<th><a href='index.php?id=3&amp;l=n'>N</a></th>");
print("<th><a href='index.php?id=3&amp;l=&ntilde;'>&ntilde;</a></th>");
print("<th><a href='index.php?id=3&amp;l=o'>O</a></th>");
print("<th><a href='index.php?id=3&amp;l=p'>P</a></th>");
print("<th><a href='index.php?id=3&amp;l=q'>Q</a></th>");
print("<th><a href='index.php?id=3&amp;l=r'>R</a></th>");
print("<th><a href='index.php?id=3&amp;l=s'>S</a></th>");
print("<th><a href='index.php?id=3&amp;l=t'>T</a></th>");
print("<th><a href='index.php?id=3&amp;l=u'>U</a></th>");
print("<th><a href='index.php?id=3&amp;l=v'>V</a></th>");
print("<th><a href='index.php?id=3&amp;l=w'>W</a></th>");
print("<th><a href='index.php?id=3&amp;l=x'>X</a></th>");
print("<th><a href='index.php?id=3&amp;l=y'>Y</a></th>");
print("<th><a href='index.php?id=3&amp;l=z'>Z</a></th>");
print("<th><a href='index.php?id=3&amp;l=*'>Todos</a></th>");
print("</tr>");
print("</table></th></tr>");
if (isset($_GET['l']))
{
	$letra = $_GET['l'];
	
	if ($_GET['l'] == '%F1')
	$sql = "Select * from clientes where Apellidos like '–%' order by Nombre";
	if ($_GET['l'] == '*')
	$sql = "Select * from clientes order by Apellidos";
	else
	$sql = "Select * from clientes where Apellidos like '$letra%' order by Apellidos";
	$sbus="&amp;l=$letra";
	
}
else
{
	if ((isset($_POST['busclien'])) || (isset($_SESSION[cadenabus])))
	{
	//Si hemos dado a buscar eliminamos la variable de sesion
	if (isset($_POST['busclien']))
	{
	$_SESSION[cadenabus]=$_POST['cadbus'];
	$cadenabus = $_POST['cadbus'];
	}
	else
	$cadenabus = $_SESSION[cadenabus];
	
	
	$sql = "Select * from clientes where Apellidos like '%$cadenabus%' or Nombre like '%$cadenabus%' or Direccion like '%$cadenabus%' or cp like '%$cadenabus%'
	or telefono like '%$cadenabus%' or movil like '%$cadenabus%' or web like '%$cadenabus%' or mail like '%$cadenabus%' or ciudad like '%$cadenabus%' or provincia like '%$cadenabus%'
	or fax like '%$cadenabus%' or nif like '%$cadenabus%' order by Apellidos asc";
	$sbus="";
	}
	else { $sql = "Select * from clientes where mail like 'asereje' "; }
}

?>
