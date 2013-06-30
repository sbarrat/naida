<?php
session_start(); 
if ($_SESSION["autentificado"] != "SI")
{ 
    header("Location:index.php");
} else {
    session_unset();
    session_destroy();
    header("Location:index.php");
    exit(0);
}