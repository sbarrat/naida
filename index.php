<?php session_start(); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
    <meta http-equiv='Content-Type' content='text/html; charset=utf-8'>
    <link href="174.css" rel="stylesheet" type="text/css">
    <title>Naida</title>
</head>
<?php
if (isset($_SESSION["autentificado"]) && $_SESSION["autentificado"] != "SI") {
    print("<body bgcolor='#ffffff'>");
    print("<form name='loginform' id='loginform' action='comprobar.php' method='post'>");
    print("<p><label><font color=black size='4'>Usuario:</font><br/></label><p><input type='text' name='usuario' id='log' value='' size='20' tabindex='1' /></p>");
    print("<p><label><font color=black size='4'>Contraseña:</font><br/></label><p> <input type='password' name='pass' id='pwd' value='' size='20' tabindex='2' /></p>");
    print("<p class='submit'>");
    print("<input type='submit' name='submit' id='submit' value='Identificarse &raquo;' tabindex='3' />");
    print("</p>");
    print("</form>");
    include("backend.php");
} else {
    require_once("conexion.php");
//Si hemos dicho de cambiar el tema
    if (isset($_POST[protem])) {
        $seltem = "Select * from gamas where id like " . $_POST["gama"];
        $rselem = mysql_db_query($dbname, $seltem, $con);
        while ($cseltem = mysql_fetch_array($rselem)) {
            $_SESSION[tema] = $_POST[gama];
        }
//Ponemos el tema como predeterminado del usuario
        $preus = "update usuarios set tema = $_POST[gama] where id like $_SESSION[identificador]";
        $rpreus = mysql_db_query($dbname, $preus, $con);
    }
//Seleccion tema
    $ctema = "Select * from gamas where id like $_SESSION[tema]";
    $cstema = mysql_db_query($dbname, $ctema, $con);
    while ($stema = mysql_fetch_array($cstema)) {
        $_SESSION[colorc] = "bgcolor='$stema[colorc]'";
        $_SESSION[colorb] = "bgcolor='$stema[colorb]'";
//Celdas de tabla
        $_SESSION[color1] = "bgcolor='$stema[color1]'";
        $_SESSION[color2] = "bgcolor='$stema[color2]'";
        $_SESSION[fuente] = "color='$stema[fuente]'";
        //Fin colores
//Color del body
        print("<body $_SESSION[colorb]>");
//print("<font $_SESSION[fuente]");	
    }

    include ("principal.php");


}
if ($_SESSION["contador"] != 0) {
    $contador = $_SESSION["contador"];
    echo "<p>Acceso incorrecto o sesion caducada";
    echo "<p>Pongase en contacto con su proveedor del programa";
    echo "<p>Ha realizado <font color='red'><b>" . $contador . "</b></font> accesos incorrectos";
}

function cambiaf_a_normal($fecha)
{
    ereg("([0-9]{2,4})-([0-9]{1,2})-([0-9]{1,2})", $fecha, $mifecha);
    $lafecha = $mifecha[3] . "/" . $mifecha[2] . "/" . $mifecha[1];
    return $lafecha;
}

?>
</body>
</html>
