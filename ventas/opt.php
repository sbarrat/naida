<? //opciones de la impresora
$handle = printer_open();
printer_set_option($handle, PRINTER_MODE, "raw");
printer_set_option($handle,PRINTER_PAPER_FORMAT,PRINTER_FORMAT_CUSTOM);
printer_set_option($handle,PRINTER_PAPER_WIDTH, 76);
$fuente = printer_create_font("control",10,10, PRINTER_FW_NORMAL, false, false, false, 0);
printer_select_font($handle, $fuente);
printer_draw_text($handle, "A", 0,0);
printer_delete_font($fuente);
printer_close($handle);
?>