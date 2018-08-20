document.addEventListener('DOMContentLoaded', function () {
    var elems = document.querySelectorAll('select');
    var instances = M.FormSelect.init(elems);
});

$(document).ready(function () {
    $('select').formSelect();
    $('textarea#pfc_objetivo_general, textarea#pfc_diagnostico').characterCounter();
});

