<?php 
//Comprobacion del usuario. Ok a 26/09
require_once("conexion.php");
$usuario=$_POST[usuario];
$contrasena=$_POST[pass];
$contrasena = sha1($contrasena);

$sql="SELECT * from usuarios WHERE nick LIKE '$usuario' and pass LIKE '$contrasena' and (fecha >= curdate() OR fecha like '0000-00-00')";

$res = mysql_db_query ($dbname, $sql, $con);
session_start();
if($fila = mysql_fetch_array($res))
{
	//usuario y contraseña válidos
    //defino una sesion y guardo datos
	//session_start();
	session_register("SESSION");
    $_SESSION["identificador"] = $fila[id];
	$_SESSION["usuario"]=$usuario;
	$_SESSION["autentificado"] = "SI";
	$_SESSION["contador"] = 0;
	$_SESSION["como"] = $fila[tipo];
	$_SESSION["tema"] = $fila[tema];
	header ("Location: index.php");
	
	
}
else 
{
    
	$_SESSION["contador"]=$_SESSION["contador"]+ 1;
	header("Location: index.php");
} 
	



?>
