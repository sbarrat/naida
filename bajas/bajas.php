<?
/*Baja de productos
He preferido poner la baja en otro sitio ya que la baja de un producto debe ser almacenada
ya que puede ser por varios motivos que hay que estudiar
Puede ser por fuera temporada, hurto, deterioro, otros ...
incluiremos mibus.php para que salga la busqueda que tenemos ya hecha.
*/
//Este mensaje nos dira los problemas que tengamos si es que hay

/************/
include ("bajas/resbus.php");
if (isset($_GET['ref']))
{
$dia=getdate();
$bproducto="Select * from Productos where id like '$ref'";
$bbprod=mysql_db_query($dbname,$bproducto,$con);
$resprod = mysql_fetch_array($bbprod);
print("<center><form name='baja' action='index.php?id=1&amp;baja=1' method='post'>");
print("<table><tr><th colspan='2'><img src='imagenes/bprod.png'><h3>Baja de Productos</h3></tr>");
print("<tr><td $_SESSION[color2];><b>Fecha</td><td $_SESSION[color1];>");
print("<input type='text' readonly name='fecha' size='8' value ='");
echo date("d/m/Y");
print("'></input></td></tr>");
print("<tr><td $_SESSION[color2];><b>Referencia</td>");
print("<td $_SESSION[color1];><input type='hidden' name='idproducto' value='$ref'></input><input type='text' readonly name='referencia' size='16' value='$resprod[referencia]'></input></td></tr>");
print("<tr><td $_SESSION[color2];><b>Descripción</td>");
print("<td $_SESSION[color1];><input type='text' readonly name='descripcion' size='50' value='$resprod[descripcion]'></input></td></tr>");
print("<tr><td $_SESSION[color2];><b>Motivo</td>");
print("<td $_SESSION[color1];><select name='motivo'>
<option selected value=0>--Seleccione motivo de baja--</option>
<option value='Fuera de temporada'>Fuera de temporada</option>
<option value='Hurto'>Hurto</option>
<option value='Deterioro'>Deterioro</option>
<option value='Defecto'>Defecto</option>
<option value=1>Otros</option></select></td></tr>");
print("<tr><td $_SESSION[color2];><b>* Si selecciono otros</td><td $_SESSION[color1];><input type='text' size='50' name='otros'></text></td></tr>");
print("<tr><td $_SESSION[color2];><b>Tipo de baja</td><td $_SESSION[color1];><select name='tbaja'>
<option selected value=0>--Selecione el tipo de baja--</option>
<option value=1>Unidades</option>
<option value='Total'>Total</option>
</select></td><tr>");
print("<tr><td $_SESSION[color2];><h4><b>*Si selecciono unidades indique el numero de unidades</h4></td><td $_SESSION[color1];><input type='text' name='unidades' size='3'></text></td></tr>");
print("<tr><td colspan='2'$_SESSION[colorc];><center><input type='submit' name='dabaja' value='Aceptar'></input></center></td></tr>"); 
print("</table></form></center>");
}
/*Si hemos procesado ya la baja*******************************************************************************************************/
if (isset($_POST[dabaja]))
{
$idproducto=$_POST['idproducto'];//id del producto en la tabla productos
$referencia=$_POST['referencia'];//Referencia del producto
$descripcion=$_POST['descripcion'];//Descripcion del producto
$motivo=$_POST['motivo'];//Motivo de la baja
$otros = $_POST['otros'];//Si se selecciona otros en el motivo se pone este;
$tbaja = $_POST['tbaja'];//Tipo de baja si es total o solo parcial
$unidades=$_POST['unidades'];//Si la baja es parcial se descuentan estas unidades del stock
$fecha=$_POST['fecha'];//Fecha que se efectua la baja del producto
//*Condicionadores
//Comprobamos las opciones de los motivos y tipo de baja
// header ("Location: index.php?id=8&amp;ref=$amp;idproducto&amp;mot=4")
if ($motivo == 0)
{
$_SESSION['mensaje'] = "<center><font color='red'><b>Debe seleccionar un motivo de baja</b></font><center>";
header ("Location: index.php?id=1&amp;baja=1&amp;ref=$idproducto");
}
else
	if ($motivo == 1)
	{
		if($otros == '')
		{
		$_SESSION['mensaje'] = "<center><font color='red'><b>Especifice el motivo de baja</b></font><center>";
		header ("Location: index.php?id=1&amp;baja=1&amp;ref=$idproducto");
		}
		else 
		$_SESSION['mensaje'] = "Todo Correcto";
	}
if ($tbaja == 0)
{
$_SESSION['mensaje'] = $_SESSION['mensaje'] ."<center><font color='red'><b>Especifice el tipo de baja</b></font><center>";
header ("Location: index.php?id=1&amp;baja=1&amp;ref=$idproducto");
}
else
	if($tbaja == 1)
	{
		if($unidades == '')
		{
		$_SESSION['mensaje'] = $_SESSION['mensaje'] ."<center><font color='red'><b>Especifice las unidades a dar de baja</b></font><center>";
		header ("Location: index.php?id=1&amp;baja=1&amp;ref=$idproducto");
		}
		else
		$_SESSION['mensaje'] = "Todo Correcto";
	}
}	
/*Segun el motivo mostramos una cosa u otra*/
echo $_SESSION['mensaje'];





?>