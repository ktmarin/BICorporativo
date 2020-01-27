var Empresa = function () {
    this.globalId = '';

    this.init = function () {
        $.post("empresaController.aspx", {
            option: "init"
        }, function (data, error) {
            var jsn = JSON.parse(data);
            document.getElementById("tbodyEm").innerHTML = '';
            empresas.createTable(JSON.parse(data));
        });
    }

    this.createTable = function (json) {

        var array = ["Empresa", "Nombre","QuienIngreso","FechaIngreso"];
        for (var i = 0; i < Object.keys(json.Table1).length; i++) {
            var tr = document.createElement("tr");

            for (var j = 0; j < array.length; j++) {
                var td = document.createElement("td");
                if (array[j]=="FechaIngreso") {
                    var date= new Date(json.Table1[i][array[j]]);
                    td.innerHTML = date.getFullYear() + "-" + empresas.addZero((date.getMonth() + 1)) + "-" + empresas.addZero(date.getDate());

                } else {
                    td.innerHTML = json.Table1[i][array[j]];
                }

                tr.appendChild(td);

            }
            var td = document.createElement("td");
            td.innerHTML = "<a id='" + json.Table1[i].ID + "' class='btn btn-default' onclick='empresas.openModal(this)'><span class='fa fa-pencil'></span></a>";
            td.innerHTML += "<a id='" + json.Table1[i].ID + "' class='btn btn-default' onclick='empresas.confirmModal(this)'><span style='color:red' class='fa fa-trash'></span></a>";
            tr.appendChild(td);
            document.getElementById("tbodyEm").appendChild(tr);
        }
    }

    this.openModal = function (Obj) {
        this.globalId = Obj.id;
        document.getElementById("btnGuardar").value = 'Acualizar';

        $.post("empresaController.aspx", {
            option: "edit",
            id: Obj.id //Parametros
        }, function (data, error) {
            var array = ["Empresa", "Nombre"];
            var array2 = ["txtEmpresa", "txtNombre"];
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
        empresas.clearFields(["txtEmpresa", "txtNombre"]);
        document.getElementById("btnGuardar").value = 'Guardar';
        document.getElementById("btnAddUser").click();
    }

    this.save = function () {
        //Validaciones aqui
        if (document.getElementById("txtEmpresa").value == '') {
            toastr.error("El campo empresa es requerido!");
            return;
        }
        if (document.getElementById("txtNombre").value == '') {
            toastr.error("El campo nombre es requerido!");
            return;
        }
       
        if (document.getElementById("btnGuardar").value == 'Guardar') {
            var option = "save";
        }
        else {
            var option = "update";
        }
        $.post("empresaController.aspx", {
            option: option,
            nombre: document.getElementById("txtNombre").value,
            empresa: document.getElementById("txtEmpresa").value,
            id: empresas.globalId
        }, function (data, error) {
            if (document.getElementById("btnGuardar").value == 'Guardar') {
                //  empresas.createRow(data, ["txtEmpresa", "txtNombre"])
                empresas.init();
            } else {
                empresas.init();

                //empresas.refreshRow(empresas.globalId, ["txtEmpresa","txtNombre"]);
            }
            document.getElementById("btnCerrar").click();
            empresas.clearFields(["txtEmpresa","txtNombre"]);
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
        td.innerHTML = "<a id='" + id + "' class='btn btn-default' onclick='empresas.openModal(this)'><span class='fa fa-pencil'></span></a>";
        td.innerHTML += "<a id='" + id + "' class='btn btn-default' onclick='empresas.confirmModal(this)'><span style='color:red' class='fa fa-trash'></span></a>";

        tr.appendChild(td);
        document.getElementById("tbodyEm").appendChild(tr);
    }

    this.refreshRow = function (id, array) {
        var childs = document.getElementById(id).parentNode.parentNode.childNodes;
        for (var i = 0; i < childs.length - 1; i++) {
            childs[i].innerHTML = document.getElementById(array[i]).value;
        }
    }

    this.search = function () {
        $.post("empresaController.aspx", {
            option: "search",
            empresa: document.getElementById("txthEmpresa").value,
            nombre: document.getElementById("txthNombre").value,
            ingreso: document.getElementById("txthIngreso").value,
            fecha: document.getElementById("txthFecha").value
        }, function (data, error) {
            document.getElementById("tbodyEm").innerHTML = '';
            empresas.createTable(JSON.parse(data));
        });
    }

    this.delete = function (Obj) {
        $.post("empresaController.aspx", {
            option: "delete",
            id: Obj.id
        }, function (data, error) {
            Obj.parentNode.parentNode.parentNode.removeChild(Obj.parentNode.parentNode);

        });
    }

    this.confirmModal = function (Obj) {
        deleteOb = Obj;
        document.getElementById("btnMdConfirm").click();
    }

    this.clickDelete = function () {
        empresas.delete(deleteOb);
        document.getElementById("btnNo").click();
    }

    this.addZero = function (numero) {
        if(numero>10){
            return numero;
        } else {
            return '0' + numero;
        }
    }


}