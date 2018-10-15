function validacion() {
    var bool = true;
    if (!$("#cedula").validarCedula()) bool = false;
    if (!$("#phone").validarCampoTelefono()) bool = false;
    if (!$("#nombre-nna").validarCampoVacio()) bool = false;
    if (!$("#Familia").validarCampoVacio()) bool = false;
    if (!$("#etnia").validarCampoVacio()) bool = false;
    if (!$("#cAcogimiento").validarCampoVacio()) bool = false;
    if (!$("#FechaElaboracion").validarCampoVacio()) bool = false;
    if (!$("#FechapEvaluacion").validarCampoVacio()) bool = false;
    if (!$("#Responsable").validarCampoVacio()) bool = false;
    if (!$("#NinaAdolecente").validarCampoSelect()) bool = false;
    return bool;
}