<? //fichero de generacion de contraseñas
?>
<form name='genpas' method='post' action='pass.php'>
<input type='text' name='pass'></input>
<input type='submit' name='gepas' value='Genera'></input>
</form>
<?
if (isset($_POST['gepas']))
{
$pass = $_POST['pass'];
$pass = sha1($pass);
echo $pass;
}
?>