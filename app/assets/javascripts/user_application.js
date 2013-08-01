//= require jquery
//= require jquery_ujs
//= require js/jquery-1.9.1.min
//= require js/libs/jquery-1.8.3.min
//= require js/libs/jquery.mousewheel.min
//= require js/libs/jquery.placeholder.min
//= require custom-plugins/fileinput
//= require jui/js/jquery-ui-1.9.2.min
//= require jui/jquery-ui.custom.min
//= require jui/js/jquery.ui.touch-punch
//= require jui/js/timepicker/jquery-ui-timepicker.min
//= require plugins/datatables/jquery.dataTables.min
//= require plugins/colorpicker/colorpicker-min
//= require bootstrap/js/bootstrap.min
//= require js/core/mws
//= require js/demo/demo.table
//=# require plugins/cleditor/jquery.cleditor
//=# require plugins/cleditor/jquery.cleditor.table
//=# require plugins/cleditor/jquery.cleditor-xhtml
//=# require plugins/cleditor/jquery.cleditor.icon


$( ".datepicker" ).datepicker({  dateFormat: "yy-mm-dd" });
$( ".timepicker" ).timepicker({});
$(document).ready(function() {

    $( '.cleditor').cleditor({
      width: '100%',
      controls: "bold italic underline strikethrough highlight | size style | removeformat | undo redo | rule cut copy paste pastetext   | source"
    });
    if($.fn.select2) {
      $( '.select2-select' ).select2();
    }

    setInterval(function() {
      $('#messages_box').load('/users/dashboard/_messages_box');
    }, 10000);
});
