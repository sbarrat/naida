<? //gencode13.php, generara el codigo ean13 para el alacenaje
//pasamos de la referencia, y generamos el codigo nuevo, con los
//estandares
/*
2 primeros -> pais 84 (españa)
5 siguientes->Informacion de la sociedad
5 siguientes->Informacion del producto
1 siguientes->Suma (checksum)
el checksum se saca
x = (la suma de los 6 primeros)
y = (la suma de los 6 siguientes)
z = 3 * y + x
m = 90
checksum = m - z
Lista de variables
$ano => 2 digitos
$temp => 1 digito
$nufam => 2 digitos
$nutall => 2 digitos
$nucol => 2 digitos
$nupro => 2 digitos
$nucorrelat => 1 digito
*/
$ano1 = strtok($ano,'');
$nufam1 = strtok($nufam, '');
$nutall1 = strtok($nutall,'');
$nucol1 = strtok($nucol,'');
$nupro1 = strtok($nupro,'');
$variablex = $ano1[0] + $ano1[1] + $temp + $nufam1[0] + $nufam1[1] + $nutall1[0];
$variabley = $nutall1[1] + $nucol1[0] + $nucol1[1] + $nupro1[0] + $nupro1[1] + $correlat;
$variablez = 3 * $variabley + 9 * $variablex;
//Comprobamos si el numero es mayor que 100
$variablez1 = strtok($variablez,'');
if ($variablez >= 100)
$m = $variablez1[0]*100 + $variablez1[1]*10;
else
$m = $variablez1[0]*10;
$checksum = $variablez -$m;
$ean13 = $ano ."". $temp ."". $nufam ."". $nutall ."". $nucol ."". $nupro ."". $nucorrelat ."". $checksum;