<?php
/**
 * Functions.php Fichero de funciones
 *
 * Ficheros de funciones de la aplicacion
 *
 * PHP Version 5.3
 *
 * @package				Naida
 * @subpackage			Application
 * @author				Ruben Lacasa Mas <ruben@rubenlacasa.es>
 * @copyright 			2013 Ruben Lacasa Mas.
 * @license				http://creativecommons.org/licenses/by-nc-nd/3.0
 * 						CC-BY-NC-ND-3.0
 * @version				2.0
 * @link				https://github.com/sbarrat/naida
 */
 /**
  * Funcion que cambia la fecha de MySQL a Normal
  *
  * @param string $fecha 
  * @return void
  * @author Ruben Lacasa <ruben@ensenalia.com>
  * @fixme Cambiar el nombre de la funcion
  */
 function cambiaf_a_normal($fecha)
 {
     ereg("([0-9]{2,4})-([0-9]{1,2})-([0-9]{1,2})", $fecha, $mifecha);
     $lafecha = $mifecha[3] . "/" . $mifecha[2] . "/" . $mifecha[1];
     return $lafecha;
 }
 
 function conecta()
 {
	if ( is_null(self::$handle) ) {
		try {
			self::$handle = new PDO(
				self::$dsn,
                 self::$user,
                 self::$password,
                 self::$options
			);
		} catch ( PDOException $error ) {
			die ($error->getMessage());
		}
	}
	return self::$handle;
     
     $dsn = 
     $con = mysql_connect ("localhost","naida","naidaserv") or die (mysql_error());
     $dbname = "naida";
 }