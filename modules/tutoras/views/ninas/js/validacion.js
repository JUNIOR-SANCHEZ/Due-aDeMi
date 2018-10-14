function validacion() {
    var bool =true;
    if(!$("#datepicker-fecha-ingreso").validarCampoVacio()) bool=false;
    if(!$("#nombre-nna").validarCampoVacio()) bool=false;
    if(!$("#apellido-nna").validarCampoVacio()) bool=false;
    if(!$("#cedula").validarCedula()) bool=false;
    if(!$("#phone").validarCampoTelefono()) bool=false;
    if(!$("#lugar-nacimiento").validarCampoVacio()) bool=false;
    if(!$("#direccion-nna").validarCampoVacio()) bool=false;
    if(!$("#datepicker-fecha-nacimiento").validarCampoVacio()) bool=false;
    if(!$("#tipo-medida").validarCampoVacio()) bool=false;
    if(!$("#num-medida").validarCampoVacio()) bool=false;
    if(!$("#datepicker-fecha-medida").validarCampoVacio()) bool=false;
    if(!$("#nombre-solicitud").validarCampoVacio()) bool=false;
    return bool;
}
function validacion_info() {
    var bool =true;
    if(!$("#nombres-inf").validarCampoVacio()) bool=false;
    if(!$("#apellidos-inf").validarCampoVacio()) bool=false;
    if(!$("#direccion-inf").validarCampoVacio()) bool=false;
    if(!$("#telf-inf").validarCampoTelefono()) bool=false;
    if(!$("#inst-inf").validarCampoVacio()) bool=false;
    if(!$("#dctoin-inf").validarCampoVacio()) bool=false;
    return bool;
}
function validacion_situacion() {
    var bool =true;
    if(!$("#vestido").validarCampoVacio()) bool=false;
    if(!$("#salud").validarCampoVacio()) bool=false;
    if(!$("#maltrato").validarCampoVacio()) bool=false;
    if(!$("#pertenencias").validarCampoVacio()) bool=false;
    return bool;
}
function validacion_referente() {
    var bool =true;
    if(!$("#nombres-ref").validarCampoVacio()) bool=false;
    if(!$("#apellidos-ref").validarCampoVacio()) bool=false;
    if(!$("#parentesco-ref").validarCampoVacio()) bool=false;
    if(!$("#edad-ref").validarCampoVacio()) bool=false;
    if(!$("#direccion-ref").validarCampoVacio()) bool=false;
    if(!$("#telefono-ref").validarCampoTelefono()) bool=false;
    if(!$("#cedula-ref").validarCedula()) bool=false;
    if(!$("#trabajo-ref").validarCampoVacio()) bool=false;
    return bool;
}