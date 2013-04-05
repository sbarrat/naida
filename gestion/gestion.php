<?
if(($_SESSION['como'] == 'admin') || ($_SESSION['como'] == 'root'))
{
 echo "<center><span class='ok'>Panel de Gestion del Administrador</span></center>";
 //Fichero gestion, entre otras cosas mostrara las ventas realizadas
//Hoy, este mes, este año, o dia seleccionado
//Estos listados saldran 1.- agrupados por año, mes, dia, venta.
//Al final de cada venta saldra el total de la venta, al final de cada dia saldra total del dia, al final de 
//cada mes saldra el total del mes, y al final del año el total del año, tanto de items como de precio
?>
<table width='100%'><tr><th width='50%'>
<h3>Informes de ventas</h3>
</th><th width='50%'><h3>Gestion Usuarios</h3></th></tr>
<tr><td valign='top'>
<a href='index.php?id=5&amp;in=1'>Informe Hoy</a>
<a href='index.php?id=5&amp;in=2'>Informe Semana</a>
<a href='index.php?id=5&amp;in=3'>Informe Mes</a>
<a href='index.php?id=5&amp;in=4'>Informe A&ntilde;o</a>
<p>Seleccione el Dia(dd),Mes(mm),A&ntilde;o(aaaa)
<form name='seldia' action='index.php?id=5&amp;in=5' method='post'>
Dia<input type='text' name='dia' size='2'></input>
Mes<input type='text' name='mes' size='2'></input>
A&ntilde;o<input type='text' name='ano' value = '<? echo date('Y'); ?>' size='4'></input>
<input type='submit' name='busdia' value='Mostrar Informe'></input>
</form>
<?
//Segun lo que pidamos generamos una consulta u otra, la registramos como sesion y prou
if ((isset($_GET['in'])) || (isset($_POST['busdia'])))
{
//Tendria que mirar que mes es el que estamos y pasarlo por variable
//lo mismo con el año
	if (isset($_GET['in']))
	{
	$ini = $_GET['in'];
		switch ($ini)
		{
		case 1: 
			{
			$informe = "SELECT * from ventas where fecha like curdate() order by fecha asc, hora asc";
			$_SESSION['informe']=$informe;
			$_SESSION['detalle']="Informe Ventas Diarias";
			break;
			}
		case 2: 
			{
			$informe = "SELECT * FROM ventas WHERE week(fecha) like week(curdate()) order by fecha asc, hora asc";
			$_SESSION['informe']=$informe;
			$_SESSION['detalle']="Informe ventas Semanales";
			break;
			}
		case 3: 
			{
			$informe = "SELECT * FROM ventas WHERE month(fecha) LIKE month(curdate()) order by fecha asc, hora asc";
			$_SESSION['informe']=$informe;
			$_SESSION['detalle']="Informe ventas mensuales";
			break;
			}
		case 4: 
			{
			$informe = "SELECT * FROM ventas WHERE year(fecha) like year(curdate()) order by fecha asc, hora asc";
			$_SESSION['informe']=$informe; 
			$_SESSION['detalle']="Informe ventas anuales";
			break;
			}
		}
	}
	if (isset($_POST['busdia']))
	{
	$dia = $_POST['dia'];
	$mes = $_POST['mes'];
	$ano = $_POST['ano'];
		if ($dia != NULL)
		{
		$cadena[0] = "day(fecha) like $dia";
		$param++;
		$chiv=0;
		}
		if ($mes != NULL)
		{
		$cadena[1] = "month(fecha) like $mes";
		$param++;
		$chiv=1;
		}
		if ($ano != NULL)	
		{
		$cadena[2] = "year(fecha) like $ano";
		$param++;
		$chiv=2;
		}
		if ($param != 0)
		{
		$consulta = "Select * from ventas where ";
		if ($param == 1)
		{
		$consulta .= $cadena[$chiv];
		}
		else
		{
			$primer=0;
			for ($i=0;$i<=7;$i++)
			{
				
				if(isset($cadena[$i]))
				
				{
					
					if($primer == 0)
					{
					
					$consulta .= $cadena[$i];
					}
					else
					{
					$consulta .= " and ";	
					$consulta .= $cadena[$i];
					}
					$primer=1;
				}
			}
		}
		$consulta .= " order by fecha asc, hora asc ";
		$_SESSION['informe'] = $consulta;
		$_SESSION['detalle']="Informe de ventas del ". $dia ."/". $mes ."/" .$ano;	
	}
}
//header ("Location: informes/listado.php");
}
if (isset($_GET['in']))
{
include("gestion/listado.php");
print("</td><td valign='top'><center>");
include ("gestion/correo.php");
include ("gestion/usuario.php");
echo "</center>";
}
else
{
//echo "El informe es ".$informe;
include ("gestion/correo.php");
print("</td><td valign='top'><center>");
include ("gestion/usuario.php");
echo "</center>";
}
print("</td></tr></table>");
}
else
print("<center><span class='nok'>No tiene permisos para ver esta pagina</span></center>");
?>
