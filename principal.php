<?php//Menu de seleccion de categoriasprint("<table width=100%><tr>");$menus = "Select * from menus";$rmenus = mysql_db_query ($dbname, $menus, $con);while($celda = mysql_fetch_array($rmenus)){    print("<th width='12%' ".$_SESSION['color2'].">        <img src=".$celda['imagen']." alt=imagen></img>    <h3><a href=index.php?id=".$celda['id'].">".$celda['nombre']."</a></h3>    </th>");}print("</tr></table>");if(isset($_GET['id'])){	$id = $_GET['id'];	switch($id)		{	case 1: include("productos/productos.php");break;	case 2: include("proveedores/proveedores.php");break;	case 3: include("clientes/clientes.php");break;	case 4: include("ventas/ventas.php");break;	case 5: include("gestion/gestion.php");break;	case 6: include("informes/informes.php");break;	case 7: include("logout.php");break;	case 8: include("bajas/bajas.php");break;	case 9: include("temas/temas.php");break;	default: print("Opcion Incorrecta");break;		}}