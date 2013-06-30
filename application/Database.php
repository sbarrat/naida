<?php
/**
 * MySqlDB File Doc Comment
 *
 * Clase estatica que conecta a la base de datos MySQL
 *
 * PHP Version 5.2
 *
 * @category    DB
 * @package     camps/application/classes/
 * @author      Ruben Lacasa Mas <ruben@ensenalia.com>
 * @license     http://creativecommons.org/licenses/by-nc-nd/3.0/
 *              Creative Commons Reconocimiento-NoComercial-SinObraDerivada
 *              3.0 Unported
 * @link        https://bitbucket.org/sbarrat/campus
 */
/**
 * MySqlDB Class Doc Comment
 *
 * @category    DB
 * @package     camps/application/classes/
 * @author      Ruben Lacasa Mas <ruben@ensenalia.com>
 * @license     http://creativecommons.org/licenses/by-nc-nd/3.0/
 *              Creative Commons Reconocimiento-NoComercial-SinObraDerivada 3.0
 *              Unported
 * @version     Release: 1.0
 * @link        https://bitbucket.org/sbarrat/campus
 *
 */
final class MySqlDB {

	private static $handle = null;
	private static $dsn = "mysql:dbname=naida;host=localhost;port=3306";
	private static $user = 'ensenali';
	private static $password = 'y0TxPZR6O9Z6';
	private static $options = array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8");
	/**
	 * Deny Construct
	 */
	private function __construct()
	{
	}
	/**
	 * Deny Clone
	 */
	private function __clone()
	{
	}
    /**
     * Funcion de conexion a la base de datos MySQL
     * @return null|PDO
     */
    public static function connect()
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
	}
}