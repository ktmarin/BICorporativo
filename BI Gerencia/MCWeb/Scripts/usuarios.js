
var Usuario = function () {
    this.globalId = '';
    this.deleteOb = '';
    this.empresaId = '';
    this.arrayInsert = '';
    this.blob = new Blob();
    this.init = function () {
        $.post("usuarioController.aspx", {
            option: "init"
        }, function (data, error) {
            var jsn = JSON.parse(data);
            document.getElementById("tbodyUs").innerHTML = '';
            usuarios.createTable(JSON.parse(data));
            usuarios.fillSelectToJSON("cmbEstado", jsn.Table3, "", "Estado");
        });
    }
    this.createTable = function (json) {
        var array = ["Nombre", "Usuario", "Correo", "Empresa", "Departamento"];
        for (var i = 0; i < Object.keys(json.Table1).length; i++) {
            var tr = document.createElement("tr");

            for (var j = 0; j < array.length; j++) {
                var td = document.createElement("td");
                td.innerHTML = json.Table1[i][array[j]];
                tr.appendChild(td);
            }
            var td = document.createElement("td");
            td.innerHTML = "<a id='" + json.Table1[i].IDLinea + "' class='btn btn-default' onclick='usuarios.openModal(this)'><span class='fa fa-pencil'></span></a>";
            td.innerHTML += "<a id='" + json.Table1[i].IDLinea + "' class='btn btn-default' onclick='usuarios.confirmModal(this)'><span style='color:red' class='fa fa-trash'></span></a>";
            tr.appendChild(td);
            document.getElementById("tbodyUs").appendChild(tr);
        }
    }
    this.openModal = function (Obj) {
        this.globalId = Obj.id;
        document.getElementById("btnGuardar").value = 'Acualizar';
        document.getElementById("txtClave").style.display = 'none';
        document.getElementById("lblClave").style.display = 'none';
        document.getElementById("empresas-tab").setAttribute("data-toggle", "tab");
        document.getElementById("accesos-tab").setAttribute("data-toggle", "tab");

        $.post("usuarioController.aspx", {
            option: "edit",
            id: Obj.id //Parametros
        }, function (data, error) {

            var array = ["Nombre", "Usuario", "Telefono", "Correo", "Empresa", "Departamento"];
            var array2 = ["txtNombre", "txtUsuario", "txtTelefono", "txtCorreo", "cmbEstado", "txtDepartamento"];

            var datos = JSON.parse(data);
            usuarios.createTarget(datos.Table2, "cole1", "alert alert-default alert-dismissible", "fa fa-plus", "green","usuarios.move(this)");
            usuarios.createTarget(datos.Table3, "cole2", "alert alert-default alert-dismissible", "fa fa-times", "red", "usuarios.remove(this)");

            usuarios.createTableAA(datos, "tbodyInfA");


            for (var i = 0; i < Object.keys(datos.Table1).length; i++) {

                for (var j = 0; j < array.length; j++) {
                    document.getElementById(array2[j]).value = datos.Table1[i][array[j]];
                }
                if (datos.Table1[0].foto != null) {
                    var byteCharacters = atob(datos.Table1[0].foto);
                    var byteNumbers = new Array(byteCharacters.length);
                    for (let i = 0; i < byteCharacters.length; i++) {
                        byteNumbers[i] = byteCharacters.charCodeAt(i);
                    }
                    var byteArray = new Uint8Array(byteNumbers);
                    this.blob = new Blob(byteArray, { type: "" });

                    
                }
                
            }
           
            
           

            document.getElementById("btnAddUser").click();


        });
    }
    this.openDialogModal = function () {
        usuarios.clearFields(["txtNombre", "txtUsuario", "txtClave", "txtCorreo", "txtTelefono", "cmbEstado", "txtDepartamento"]);
        document.getElementById("btnGuardar").value = 'Guardar';
        document.getElementById("txtClave").style.display = 'block';
        document.getElementById("lblClave").style.display = 'block';
      

        document.getElementById("btnAddUser").click();

    }
    this.save = function () {
        if (document.getElementById("txtNombre").value == '') {
            toastr.error("El campo nombre es requerido!");
            return;
        }
        if (document.getElementById("txtUsuario").value == '') {
            toastr.error("El campo usuario es requerido!");
            return;
        }
        if (document.getElementById("txtClave").value == '' && document.getElementById("btnGuardar").value == 'Guardar') {
            toastr.error("El campo clave es requerido!");
            return;
        }
        if (document.getElementById("txtCorreo").value == '') {
            toastr.error("El campo correo es requerido!");
            return;
        }
        if (document.getElementById("txtTelefono").value == '') {
            toastr.error("El campo telefono es requerido!");
            return;
        }
        if (document.getElementById("cmbEstado").value == '') {
            toastr.error("El campo estado es requerido!");
            return;
        }
        
        if (document.getElementById("txtDepartamento").value == '') {
            toastr.error("El campo departamento es requerido!");
            return;
        }
        if (document.getElementById("iFoto").value == '') {
            toastr.error("El campo foto es requerido!");
            return;
        }

        if (document.getElementById("btnGuardar").value == 'Guardar') {
            var option = "save";
        }

        else {
            var option = "update";
        }

        this.arrayInsert = option;

        this.uploadAttach(document.getElementById("iFoto"));
             
    }
    this.clearFields = function (array) {
        for (var i = 0; i < array.length; i++) {
            document.getElementById(array[i]).value = '';
        }
        document.getElementById("tbodyInfA").innerHTML = '';
        document.getElementById("cole2").innerHTML = '';


    }
    this.createRow = function (id, array) {
        var tr = document.createElement("tr");
        for (var i = 0; i < array.length; i++) {
            var td = document.createElement("td");
            td.innerHTML = document.getElementById(array[i]).value;
            tr.appendChild(td);
        }
        var td = document.createElement("td");
        td.innerHTML = "<a id='" + id + "' class='btn btn-default' onclick='usuarios.openModal(this)'><span class='fa fa-pencil'></span></a>";
        td.innerHTML += "<a id='" + id + "' class='btn btn-default' onclick='usuarios.confirmModal(this)'><span style='color:red' class='fa fa-trash'></span></a>";
        tr.appendChild(td);
        document.getElementById("tbodyUs").appendChild(tr);
    }
    this.search = function () {
        $.post("usuarioController.aspx", {
            option: "search",
            nombre: document.getElementById("txthNombre").value,
            usuario: document.getElementById("txthUsuario").value,
            correo: document.getElementById("txthCorreo").value,
            empresa: document.getElementById("txthEmpresa").value,
            departamento: document.getElementById("txthDepartamento").value
        }, function (data, error) {
            document.getElementById("tbodyUs").innerHTML = '';
            usuarios.createTable(JSON.parse(data));

        });
    }
    this.delete = function (Obj) {
        $.post("usuarioController.aspx", {
            option: "delete",
            id: Obj.id

        }, function (data, error) {
            Obj.parentNode.parentNode.parentNode.removeChild(Obj.parentNode.parentNode);
        });
    }
    this.refreshRow = function (id, array) {
        var childs = document.getElementById(id).parentNode.parentNode.childNodes;
        for (var i = 0; i < childs.length - 1; i++) {
            childs[i].innerHTML = document.getElementById(array[i]).value;
        }
    }
    this.refreshAll = function () {
        usuarios.init();
        refresh = setTimeout(usuarios.refreshAll, 5000);
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
    this.createTarget = function (jsn, parent, classname,targetIcon,targetColor,event) {
        document.getElementById(parent).innerHTML = "";
        for (var i = 0; i < Object.keys(jsn).length; i++) {
            var div = document.createElement("div");
            div.className = classname;
            div.setAttribute("style", "border:1px solid #D6DAD9;");
            var p = document.createElement("p");
            var btn = document.createElement("a");
            btn.innerHTML = "<span style='color:" + targetColor + ";'" + " class='" + targetIcon + "'></span>";
            btn.className = "btn btn-default";
            btn.setAttribute("onclick",event);
            btn.id = "btnAddEmpresa";

            var row = document.createElement("div");
            row.className = "row";

            var col1 = document.createElement("div");
            col1.className = "col-md-9";

            var col2 = document.createElement("div");
            col2.className = "col-md-1";

            row.appendChild(col1);
            row.appendChild(col2);
            col1.appendChild(p);
            col2.appendChild(btn);
            div.appendChild(row);


            btn.id = jsn[i].Empresa;
            p.innerHTML = jsn[i].Empresa;

            document.getElementById(parent).appendChild(div);
        }

    }
    this.move = function (obj) {
        //empresaId = obj.id;
        $.post("usuarioController.aspx", {
            option: "insertCompany",
            company:obj.id,
            id: usuarios.globalId
        }, function (data, error) {
         //   usuarios.cargarDisponibles(obj);
            toastr.success("Asignación correcta!");
        });
        document.getElementById("cole2").appendChild(obj.parentNode.parentNode.parentNode);
        obj.firstChild.className = "fa fa-times";
        obj.firstChild.style.color = "red";
        obj.setAttribute("onclick", "usuarios.remove(this)");
    }
    this.remove = function (obj) {
        $.post("usuarioController.aspx", {
            option: "deleteCompany",
            company: obj.id,
            id: usuarios.globalId
        }, function (data, error) {
            //obj.parentNode.parentNode.parentNode.parentNode.removeChild(obj.parentNode.parentNode.parentNode);
            document.getElementById("cole1").appendChild(obj.parentNode.parentNode.parentNode);
            obj.firstChild.className = "fa fa-plus";
            obj.firstChild.style.color = "green";
            obj.setAttribute("onclick", "usuarios.move(this)");
            var com = document.getElementById("tbodyInfA").childNodes;
            for (var i = 0; i < com.length; i++) {
                if (com[i].getAttribute("com") == obj.parentNode.previousSibling.firstChild.innerHTML) {
                    document.getElementById("tbodyInf").appendChild(com[i]);
                }
            }
            toastr.error("Eliminación correcta!");
        });
       

    }
    this.confirmModal = function (Obj) {
        deleteOb = Obj;
        document.getElementById("btnMdConfirm").click();
    }
    this.clickDelete = function () {
        usuarios.delete(deleteOb);
        document.getElementById("btnNo").click();
    }
    this.cargarDisponibles = function () {
        $.post("usuarioController.aspx", {
            option: "cargarD",
            usuario: usuarios.globalId
        }, function (data, error) {
            var jsn = JSON.parse(data);
            document.getElementById("tbodyInf").innerHTML = '';
            usuarios.createTableAD(JSON.parse(data));
        });
    }
    this.createTableAD = function (json) {
        var array = ["Nombre"];
        for (var i = 0; i < Object.keys(json.Table1).length; i++) {
            var tr = document.createElement("tr");

            for (var j = 0; j < array.length; j++) {
                var td = document.createElement("td");
                td.innerHTML = json.Table1[i][array[j]];
                tr.appendChild(td);
            }
            var td = document.createElement("td");
            td.innerHTML = "<a id='" + json.Table1[i].Id + "' onclick='usuarios.moveAccess(this)'" + "' class='btn btn-default'><span class='fa fa-plus'></span></a>";
            tr.appendChild(td);
            tr.setAttribute("com", json.Table1[i].Empresa);
            document.getElementById("tbodyInf").appendChild(tr);
        }
    }
    this.createTableAA = function (json) {
        var array = ["Nombre"];
        for (var i = 0; i < Object.keys(json.Table4).length; i++) {
            var tr = document.createElement("tr");

            for (var j = 0; j < array.length; j++) {
                var td = document.createElement("td");
                td.innerHTML = json.Table4[i][array[j]];
                tr.appendChild(td);
            }
            var td = document.createElement("td");
            td.innerHTML = "<a id='" + json.Table4[i].Id + "' onclick='usuarios.removeAccess(this)'" + "' class='btn btn-default'><span class='fa fa-plus'></span></a>";
            tr.appendChild(td);
            tr.setAttribute("com", json.Table4[i].Empresa);

            document.getElementById("tbodyInfA").appendChild(tr);
        }
    }
    this.moveAccess = function (Obj) {
        $.post("usuarioController.aspx", {
            option: "insertAccess",
            access: Obj.id,
            id: usuarios.globalId
        }, function (data, error) {
            usuarios.cargarDisponibles(Obj);
            document.getElementById("tbodyInfA").appendChild(Obj.parentNode.parentNode);
            Obj.setAttribute("onclick", "usuarios.removeAccess(this)");
            //document.getElementById(Obj.id).style.color = 'red';
            //document.getElementById("idspan").className = 'fa fa-times';
            toastr.success("Asignación correcta!");
        });

       

    }
    this.removeAccess = function (obj) {
        $.post("usuarioController.aspx", {
            option: "deleteAccess",
            access: obj.id,
            id: usuarios.globalId
        }, function (data, error) {
            //obj.parentNode.parentNode.parentNode.parentNode.removeChild(obj.parentNode.parentNode.parentNode);
            document.getElementById("tbodyInf").appendChild(obj.parentNode.parentNode);
            obj.setAttribute("onclick", "usuarios.moveAccess(this)");
            //document.getElementById(Obj.id).style.color = 'green';
            //document.getElementById("idspan").className = 'fa fa-plus';
            toastr.error("Eliminación correcta!");
        });

    }
    this.uploadAttach = function (obj) {
       
            var reader = new FileReader();
            reader.onload = function (e) {
                $.post("usuarioController.aspx", {
                    option: usuarios.arrayInsert,
                    nombre: document.getElementById("txtNombre").value,
                    usuario: document.getElementById("txtUsuario").value,
                    clave: document.getElementById("txtClave").value,
                    correo: document.getElementById("txtCorreo").value,
                    tel: document.getElementById("txtTelefono").value,
                    empresa: document.getElementById("cmbEstado").value,
                    departamento: document.getElementById("txtDepartamento").value,
                    id: usuarios.globalId,
                    file: e.target.result
                }, function (data, error) {
                    if (document.getElementById("btnGuardar").value == 'Guardar') {
                        usuarios.createRow(data, ["txtNombre", "txtUsuario", "txtCorreo", "cmbEstado", "txtDepartamento"])
                    } else {
                        usuarios.refreshRow(usuarios.globalId, ["txtNombre", "txtUsuario", "txtCorreo", "cmbEstado", "txtDepartamento"]);
                    }
                    document.getElementById("btnCerrar").click();
                    usuarios.clearFields(["txtNombre", "txtUsuario", "txtClave", "txtCorreo", "txtTelefono", "cmbEstado", "txtDepartamento"]);

                    if (usuarios.arrayInsert == "save") {
                        toastr.success("Guardado correctamente!");
                    }
                    if (usuarios.arrayInsert == "update") {
                        toastr.success("Actualizado correctamente!");
                    }
                });
                
            }
            if (obj.value == "") {
                reader.readAsDataURL(this.blob);
            } else {
                reader.readAsDataURL(obj.files[0]);
            }

    }



}
    