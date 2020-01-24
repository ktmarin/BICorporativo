var Config = function () {
    this.globalId = '';

    this.init = function () {
        $.post("configController.aspx", {
            option: "init"
        }, function (data, error) {
            var jsn = JSON.parse(data);
            document.getElementById("tbodyUs").innerHTML = '';
            configs.createTable(JSON.parse(data));
            configs.fillSelectToJSON("cmbEstado", jsn.Table2, "", "Estado");
            configs.fillSelectToJSON("cmbEmpresa", jsn.Table3, "", "Empresa");
        });
    }

    this.createTable = function (json) {

        var array = ["Nombre", "Categoria", "Departamento", "Seccion", "Estado","Empresa"];
        for (var i = 0; i < Object.keys(json.Table1).length; i++) {
            var tr = document.createElement("tr");

            for (var j = 0; j < array.length; j++) {
                var td = document.createElement("td");
                td.innerHTML = json.Table1[i][array[j]];
                tr.appendChild(td);
            }
            var td = document.createElement("td");
            td.innerHTML = "<a id='" + json.Table1[i].Id + "' class='btn btn-default' onclick='configs.openModal(this)'><span class='fa fa-pencil'></span></a>";
            td.innerHTML += "<a id='" + json.Table1[i].Id + "' class='btn btn-default' onclick='configs.confirmModal(this)'><span style='color:red' class='fa fa-trash'></span></a>";
            tr.appendChild(td);
            document.getElementById("tbodyUs").appendChild(tr);
        }
    }
    
    this.openModal = function (Obj) {
        this.globalId = Obj.id;
        document.getElementById("btnGuardar").value = 'Acualizar';

        $.post("configController.aspx", {
            option: "edit",
            id: Obj.id //Parametros
        }, function (data, error) {
            var array = ["Nombre", "EnlaceBI", "Categoria", "Departamento", "Seccion", "Estado","Empresa"];
            var array2 = ["txtNombre", "txtLink", "txtCategoria", "txtDepartamento", "txtSeccion", "cmbEstado","cmbEmpresa"];


            var datos = JSON.parse(data);
            for (var i = 0; i < Object.keys(datos.Table1).length; i++) {

                for (var j = 0; j < array.length; j++) {
                    document.getElementById(array2[j]).value = datos.Table1[i][array[j]];
                }
            }
            document.getElementById("btnAddUser").click();

        });




    }

    this.clearFields = function (array) {
        for (var i = 0; i < array.length; i++) {
            document.getElementById(array[i]).value = '';
        }
    }

    this.openDialogModal = function () {
        configs.clearFields(["txtNombre", "txtLink", "txtCategoria", "txtDepartamento", "txtSeccion", "cmbEstado","cmbEmpresa"]);
        document.getElementById("btnGuardar").value = 'Guardar';
        document.getElementById("btnAddUser").click();
    }

    this.save = function () {
        //Validaciones aqui
        if (document.getElementById("txtNombre").value == '') {
            toastr.error("El campo nombre es requerido!");
            return;
        }
        if (document.getElementById("txtLink").value == '') {
            toastr.error("El campo enlace es requerido!");
            return;
        }
        if (document.getElementById("txtCategoria").value == '') {
            toastr.error("El campo categoria es requerido!");
            return;
        }
        if (document.getElementById("txtDepartamento").value == '') {
            toastr.error("El campo departamento es requerido!");
            return;
        }
        if (document.getElementById("txtSeccion").value == '') {
            toastr.error("El campo seccion es requerido!");
            return;
        } cmbEstado
        if (document.getElementById("cmbEstado").value == '') {
            toastr.error("El campo estado es requerido!");
            return;
        }
        if (document.getElementById("cmbEmpresa").value == '') {
            toastr.error("El campo empresa es requerido!");
            return;
        }
        if (document.getElementById("btnGuardar").value == 'Guardar') {
            var option = "save";
        }
        else {
            var option = "update";
        }
        $.post("configController.aspx", {
            option: option,
            nombre: document.getElementById("txtNombre").value,
            link: document.getElementById("txtLink").value,
            categoria: document.getElementById("txtCategoria").value,
            departamento: document.getElementById("txtDepartamento").value,
            seccion: document.getElementById("txtSeccion").value,
            estado: document.getElementById("cmbEstado").value,
            empresa: document.getElementById("cmbEmpresa").value,
            id: configs.globalId
        }, function (data, error) {
            if (document.getElementById("btnGuardar").value == 'Guardar') {
                configs.createRow(data, ["txtNombre", "txtCategoria", "txtDepartamento", "txtSeccion", "cmbEstado","cmbEmpresa"])
            } else {
                configs.refreshRow(configs.globalId, ["txtNombre", "txtCategoria", "txtDepartamento", "txtSeccion", "cmbEstado","cmbEmpresa"]);
            }
            document.getElementById("btnCerrar").click();
            configs.clearFields(["txtNombre", "txtLink", "txtCategoria", "txtDepartamento", "txtSeccion", "cmbEstado", "cmbEmpresa"]);
            if (option == "save") {
                toastr.success("Guardado correctamente!");
            }
            if (option == "update") {
                toastr.success("Actualizado correctamente!");
            }
        });
    }

    this.createRow = function (id, array) {
        var tr = document.createElement("tr");
        for (var i = 0; i < array.length; i++) {
            var td = document.createElement("td");
            td.innerHTML = document.getElementById(array[i]).value;
            tr.appendChild(td);
        }
        var td = document.createElement("td");
        td.innerHTML = "<a id='" + id + "' class='btn btn-default' onclick='configs.openModal(this)'><span class='fa fa-pencil'></span></a>";
        td.innerHTML += "<a id='" + id + "' class='btn btn-default' onclick='configs.confirmModal(this)'><span style='color:red' class='fa fa-trash'></span></a>";

        tr.appendChild(td);
        document.getElementById("tbodyUs").appendChild(tr);
    }

    this.refreshRow = function (id, array) {
        var childs = document.getElementById(id).parentNode.parentNode.childNodes;
        for (var i = 0; i < childs.length - 1; i++) {
            childs[i].innerHTML = document.getElementById(array[i]).value;
        }
    }

    this.search = function () {
        $.post("configController.aspx", {
            option: "search",
            nombre: document.getElementById("txthNombre").value,
            categoria: document.getElementById("txthCategoria").value,
            departamento: document.getElementById("txthDepartamento").value,
            seccion: document.getElementById("txthSeccion").value,
            estado: document.getElementById("txthEstado").value,
            empresa: document.getElementById("txthEmpresa").value
        }, function (data, error) {
            document.getElementById("tbodyUs").innerHTML = '';
            configs.createTable(JSON.parse(data));
        });
    }

    this.delete = function (Obj) {
        $.post("configController.aspx", {
            option: "delete",
            id: Obj.id
        }, function (data, error) {
            Obj.parentNode.parentNode.parentNode.removeChild(Obj.parentNode.parentNode);

        });
    }

    this.fillSelectToJSON = function (selectName, json, nameID, optionName) {
        var arrayrep = [];
        var arrayId = [];
        var bandera;
        var option = document.createElement("option");
        option.innerHTML = "";
        // document.getElementById(selectName).appendChild(option); Agregar en blanco al inicio
        for (var i = 0 ; i < Object.keys(json).length; i++) {
            bandera = false;
            for (var j = 0; j < arrayrep.length; j++) {
                if (json[i][nameID] == arrayrep[j]) {
                    bandera = true;
                    break;
                }
            }
            if (!bandera) {
                arrayrep.push(json[i][optionName]);
                arrayId.push(json[i][nameID]);
            }
        }
        for (var x = 0; x < arrayrep.length; x++) {
            var option = document.createElement("option");
            option.id = arrayId[x];
            option.innerHTML = arrayrep[x];
            document.getElementById(selectName).appendChild(option);
        }
    }

    this.confirmModal = function (Obj) {
        deleteOb = Obj;
        document.getElementById("btnMdConfirm").click();
    }
    this.clickDelete = function () {
        configs.delete(deleteOb);
        document.getElementById("btnNo").click();
    }


}