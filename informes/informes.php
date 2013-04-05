<h3>Informes de ventas, estadisticas, Etiquetas</h3>

<a href='index.php?id=6&amp;iid=3'>Etiquetas Productos</a>
<a href='index.php?id=6&amp;iid=4'>10 Mas Vendidos</a>
<a href='index.php?id=6&amp;iid=5'>10 Menos Vendidos</a>
<a href='index.php?id=6&amp;iid=6'>No vendidos</a>
<a href='index.php?id=6&amp;iid=7'>Ultima Unidad</a>
<a href='index.php?id=6&amp;iid=8'>Sin existencias</a>
<a href='index.php?id=6&amp;iid=9'>Ventas/Dia Semana</a>



<? //fichero de informes y estadisticas
if (isset($_GET['iid']))
{
	$iid = $_GET["iid"];
	switch($iid)
	{
	case 1: Print("Aqui se mostraran los informes de ventas");break;
	case 2: include("estadisticas/estadisticas.php");break;
	case 3: header ("Location: informes/lista.php");break;
	case 4: $muestra=1;break;
	case 5: $muestra=2;break;
	case 6: $muestra=3;break;
	case 7: $muestra=4;break;
	case 8: $muestra=5;break;
	case 9: $muestra=6;break;
	//case 10: $muestra=7;break;
	default: Print("<br><span class='nok'>Opcion Incorrecta</span>");break;
	}
}
include ("estadisticas/ventas.php");
?>
