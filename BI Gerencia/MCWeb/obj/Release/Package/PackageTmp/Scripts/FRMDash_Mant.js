var myAxis = ["x", "y", "z"];
var myFieldData1 = ["Nombre", "StringData", "Categoria", "Departamento", "Seccion", "Estado", "Campos", "EnlaceBI","ReportePadre"];

function init() {

    var myArray = ["Nombre", "Categoria", "Departamento", "Seccion","FechaIngreso", "FechaModificacion","ReportePadre","Acciones"];
    $.post("AjaxDash.aspx", {
        option: "MANT",
        option2: "GENERAL",
        id :0
    }, function (data, error) {
        var num = JSON.parse(data);
        while (document.getElementById("body").hasChildNodes()) {
            document.getElementById("body").removeChild(document.getElementById("body").firstChild);
        }
        for (var j = 0; j < num.Table1.length; j++) {
            var tr = document.createElement("tr");
            for (var i = 0; i < myArray.length; i++) {
                if (myArray[i] == "Acciones") {
                    var td = document.createElement("td");
                    var a = document.createElement("a");
                    a.setAttribute("onclick", "openModalEdit(this);")
                    a.id = num.Table1[j]["id"];
                    var a2 = document.createElement("a");
                    a2.id = num.Table1[j]["id"];
                    a2.setAttribute("onclick", "openConfirmDialog(this);")
                    var is = document.createElement("i");
                    is.setAttribute("class", "material-icons");
                    is.innerHTML = "edit";
                    var is2 = document.createElement("i");
                    is2.setAttribute("class", "material-icons");
                    is2.innerHTML = "delete";
                    a.appendChild(is);
                    a2.appendChild(is2);
                    td.appendChild(a);
                    td.appendChild(a2);
                    tr.appendChild(td);
                } else {
                    var td = document.createElement("td");
                    td.innerHTML = num.Table1[j][myArray[i]];
                    tr.appendChild(td);
                }

            }
            document.getElementById("body").appendChild(tr);
       } 
    });
}

function openModalEdit(obj) {
    //Arreglo para simplificar o minimizar codigo
 
    document.getElementById("modalTitle").innerHTML = "Modificar";

    document.getElementById("hidden").value = obj.id;
    $('#myModal').modal("show");
    $.post("AjaxDash.aspx", {
        option: "MANT",
        option2: "GET",
        id: obj.id
    }, function (data, error) {
        var num = JSON.parse(data);
        for (var z = 0 ; z < myFieldData1.length; z++) {
            if (document.getElementById(myFieldData1[z]).nodeName  == "TEXTAREA") {
                document.getElementById(myFieldData1[z]).innerHTML = num.Table1[0][myFieldData1[z]];
            }
            document.getElementById(myFieldData1[z]).value= num.Table1[0][myFieldData1[z]];
        }
        for (var z = 0 ; z < myAxis.length; z++) {
            document.getElementById(myAxis[z]).value= num.Table2[z]["Columna"];
        }
        document.getElementById("TipoGrafico").value = num.Table2[0]["TipoGrafico"];
        document.getElementById("TipoSentencia").value = num.Table2[1]["TipoSentencia"];
    });
}
function openDialog() {
    document.getElementById("modalTitle").innerHTML = "Incluir";
    for (var z = 0 ; z < myFieldData1.length; z++) {
        if (document.getElementById(myFieldData1[z]).nodeName == "TEXTAREA") {
            document.getElementById(myFieldData1[z]).innerHTML = '';
            document.getElementById(myFieldData1[z]).focus();
        }
        document.getElementById(myFieldData1[z]).value = "";
        document.getElementById(myFieldData1[z]).focus();
    }
    for (var z = 0 ; z < myAxis.length; z++) {
        document.getElementById(myAxis[z]).value = "";
        document.getElementById(myAxis[z]).focus();
    }
    document.getElementById("TipoGrafico").value = "";
    document.getElementById("TipoSentencia").value = "";
    document.getElementById("TipoGrafico").focus();
    $('#myModal').modal("show");
}

function TableSearch(obj) {
    var item = parseInt(obj.getAttribute("title"));
    var childs = document.getElementById("body").childNodes;
    for (var i = 0; i < childs.length; i++) {
        var chil = childs[i].childNodes;
        if (((chil[item].innerHTML).toUpperCase()).search((obj.value).toUpperCase()) == -1) {
            childs[i].style.display = 'none';
        } else {
            childs[i].style.display = '';
        }
    }
}

function addReport() {
    if (document.getElementById("x").value == '' || document.getElementById("y").value == '' || document.getElementById("StringData").value == '') {
        alert("Faltan Campos por llenar Intente de nuevo");
        return false;
    }

    if (document.getElementById("modalTitle").innerHTML == "Incluir") {
        $.post("AjaxDash.aspx", {
            option: "MANT",
            option2: "INSERT",
            Nombre: document.getElementById("Nombre").value,
            Categoria: document.getElementById("Categoria").value,
            Departamento: document.getElementById("Departamento").value,
            Estado: (document.getElementById("Estado").value).toUpperCase(),
            CamposTabla: document.getElementById("TipoGrafico").value,
            x: document.getElementById("x").value,
            y: document.getElementById("y").value,
            z: document.getElementById("z").value,
            Seccion: document.getElementById("Seccion").value,
            Consulta: (document.getElementById("StringData").value).replace(/'/g, "|"),
            Campos: document.getElementById("Campos").value,
            tipoy: (document.getElementById("TipoSentencia").value).toUpperCase(),
            EnlaceBI: document.getElementById("EnlaceBI").value,
            reportePadre: document.getElementById("ReportePadre").value
        }, function (data, error) {
            init();
            $('#myModal').modal("hide");
            for (var z = 0 ; z < myFieldData1.length; z++) {
                if (document.getElementById(myFieldData1[z]).nodeName == "TEXTAREA") {
                    document.getElementById(myFieldData1[z]).innerHTML = '';
                }
                document.getElementById(myFieldData1[z]).value = "";
              
            }
            for (var z = 0 ; z < myAxis.length; z++) {
                document.getElementById(myAxis[z]).value ="";
            }
            document.getElementById("TipoGrafico").value= "";
        });
    } else {
        $.post("AjaxDash.aspx", {
            option: "MANT",
            option2: "UPDATE",
            Nombre: document.getElementById("Nombre").value,
            Categoria: document.getElementById("Categoria").value,
            Departamento: document.getElementById("Departamento").value,
            Estado: (document.getElementById("Estado").value).toUpperCase(),
            CamposTabla: document.getElementById("TipoGrafico").value,
            x: document.getElementById("x").value,
            y: document.getElementById("y").value,
            z: document.getElementById("z").value,
            Seccion: document.getElementById("Seccion").value,
            Consulta: (document.getElementById("StringData").value).replace(/'/g, "|"),
            Campos: document.getElementById("Campos").value,
            tipoy: (document.getElementById("TipoSentencia").value).toUpperCase(),
            id: document.getElementById("hidden").value,
            EnlaceBI: document.getElementById("EnlaceBI").value,
            reportePadre: document.getElementById("ReportePadre").value
        }, function (data, error) {
            init();
            $('#myModal').modal("hide");
            for (var z = 0 ; z < myFieldData1.length; z++) {
                if (document.getElementById(myFieldData1[z]).nodeName == "TEXTAREA") {
                    document.getElementById(myFieldData1[z]).innerHTML = '';
                }
                document.getElementById(myFieldData1[z]).value='';
            }
            for (var z = 0 ; z < myAxis.length; z++) {
                document.getElementById(myAxis[z]).value = '';
            }
            document.getElementById("TipoGrafico").value ='';
        });
    }
}

function deleteReport(obj) {
    $.post("AjaxDash.aspx", {
        option: "MANT",
        option2: "DELETE",
        id :obj.getAttribute("title")
    }, function (data, error) {
        $('#confirm').modal("hide");
        init();
    });
}

function openConfirmDialog(obj) {
    $('#confirm').modal("show");
    document.getElementById("buttonConfirm").setAttribute("title", obj.id);
   
}

function fill() {
    if ($('option:selected', document.getElementById("subReport")).attr('id') == "subreporte") {
        document.getElementById("x").value = "N/A";
        document.getElementById("y").value = "N/A";
        document.getElementById("z").value = "N/A";
        document.getElementById("EnlaceBI").value = "N/A";
        document.getElementById("Campos").value = "N/A";
        document.getElementById("Estado").value = "INACTIVO";
    } else {
        document.getElementById("x").value = "";
        document.getElementById("y").value = "";
        document.getElementById("z").value = "";
        document.getElementById("EnlaceBI").value = "";
        document.getElementById("Estado").value = "ACTIVO";
    }
}
