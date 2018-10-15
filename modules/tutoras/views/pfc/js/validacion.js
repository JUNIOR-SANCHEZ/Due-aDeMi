function validacion() {
    var bool = true;
    if (!$("#nombres").validarCampoVacio()) bool = false;
    if (!$("#Canton").validarCampoVacio()) bool = false;
    if (!$("#Parroquia").validarCampoVacio()) bool = false;
    if (!$("#Nnina").validarCampoSelect()) bool = false;
    if (!$("#NninaC").validarCampoSelect()) bool = false;
    if (!$("#NninaF").validarCampoSelect()) bool = false;
    if (!$("#FechaElab").validarCampoVacio()) bool = false;
    if (!$("#FechaProx").validarCampoVacio()) bool = false;
    if (!$("#ObjGeneral").validarCampoVacio()) bool = false;
    if (!$("#ObjEspe").validarCampoVacio()) bool = false;
    if (!$("#DianostPart").validarCampoVacio()) bool = false;
    if (!$("#Metas").validarCampoVacio()) bool = false;
    if (!$("#Indicadores").validarCampoVacio()) bool = false;
    if (!$("#Actividades").validarCampoVacio()) bool = false;
    if (!$("#Tiempo").validarCampoVacio()) bool = false;
    if (!$("#Recursos").validarCampoVacio()) bool = false;
    if (!$("#Responsables").validarCampoVacio()) bool = false;
    
    return bool;
}