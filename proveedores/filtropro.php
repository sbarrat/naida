<? //fichero filtrocli.php
//primero mostraremos el alfabeto y al final la opcion todos, asi como el cuadro
//buscar para buscar los clientes, buscar por cualquier campo
print("<tr $_SESSION[colorc]>");
print("<th colspan='9'>");
print("<table width='100%'><tr>");
print("<th><a href='index.php?id=2&amp;l=a'>A</a></th>");
print("<th><a href='index.php?id=2&amp;l=b'>B</a></th>");
print("<th><a href='index.php?id=2&amp;l=c'>C</a></th>");
print("<th><a href='index.php?id=2&amp;l=d'>D</a></th>");
print("<th><a href='index.php?id=2&amp;l=e'>E</a></th>");
print("<th><a href='index.php?id=2&amp;l=f'>F</a></th>");
print("<th><a href='index.php?id=2&amp;l=g'>G</a></th>");
print("<th><a href='index.php?id=2&amp;l=h'>H</a></th>");
print("<th><a href='index.php?id=2&amp;l=i'>I</a></th>");
print("<th><a href='index.php?id=2&amp;l=j'>J</a></th>");
print("<th><a href='index.php?id=2&amp;l=k'>K</a></th>");
print("<th><a href='index.php?id=2&amp;l=l'>L</a></th>");
print("<th><a href='index.php?id=2&amp;l=m'>M</a></th>");
print("<th><a href='index.php?id=2&amp;l=n'>N</a></th>");
print("<th><a href='index.php?id=2&amp;l=&ntilde;'>&ntilde;</a></th>");
print("<th><a href='index.php?id=2&amp;l=o'>O</a></th>");
print("<th><a href='index.php?id=2&amp;l=p'>P</a></th>");
print("<th><a href='index.php?id=2&amp;l=q'>Q</a></th>");
print("<th><a href='index.php?id=2&amp;l=r'>R</a></th>");
print("<th><a href='index.php?id=2&amp;l=s'>S</a></th>");
print("<th><a href='index.php?id=2&amp;l=t'>T</a></th>");
print("<th><a href='index.php?id=2&amp;l=u'>U</a></th>");
print("<th><a href='index.php?id=2&amp;l=v'>V</a></th>");
print("<th><a href='index.php?id=2&amp;l=w'>W</a></th>");
print("<th><a href='index.php?id=2&amp;l=x'>X</a></th>");
print("<th><a href='index.php?id=2&amp;l=y'>Y</a></th>");
print("<th><a href='index.php?id=2&amp;l=z'>Z</a></th>");
print("<th><a href='index.php?id=2&amp;l=*'>Todos</a></th>");
print("</tr>");
print("</table></th></tr>");
if (isset($_GET['l']))
{
	$letra = $_GET['l'];
	if ($_GET['l'] == '%F1')
	$sql = "Select * from proveedores where Nombre like '–%' order by Nombre";
	if ($_GET['l'] == '*')
	$sql = "Select * from proveedores order by Nombre";
	else
	$sql = "Select * from proveedores where Nombre like '$letra%' order by Nombre";
	
}
else
{
	if ((isset($_POST['busprov'])) || (isset($_SESSION[cadenapro])))
	{
	if (isset($_POST['busprov']))
	{
	$_SESSION[cadenapro]=$_POST['cadbus'];
	$cadenapro = $_POST['cadbus'];
	}
	else
	$cadenapro = $_SESSION[cadenapro];
	$sql = "Select * from proveedores where Nombre like '%$cadenapro%' or Direccion like '%$cadenapro%' or cp like '%$cadenapro%'
	or telefono like '%$cadenapro%' or web like '%$cadenapro%' or mail like '%$cadenapro%' or ciudad like '%$cadenapro%' 
	or fax like '%$cadenapro%' or nif like '%$cadenapro%' order by Nombre";
	}
	else { $sql = "Select * from proveedores where mail like 'asereje'"; }
}

?>
