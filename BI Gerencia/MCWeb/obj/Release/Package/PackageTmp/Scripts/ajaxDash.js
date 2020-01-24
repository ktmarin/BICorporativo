var encabezadosGlob = [];
var goblaName;


function getChart(obj) {
    //Variables
    var numAgrup = 0; // contador de los agrupamientos
    var row = 1;
    var series = [];
    var data = [];
    var count = 0;
    var count2 = 0;
    var count3 = 0;
    var title='';
    var name;
    var value;
   
    //Arrays locales
    var agrupamiento = []; // array de grupos
    var myArrayName = []; //array de filtro
    var dateArray = []; // encabezados
    var SeriesY = []; // json con todos los valores
    var tipoSent = [];//datos
    var valuesTable = [];
    var startDate = new Date(document.getElementById("txtStartDate").value);
    startDate.setDate(startDate.getDate() + 1);
    var endDate = new Date(document.getElementById("txtFinalDate").value);
    endDate.setDate(endDate.getDate() + 1);
    if (startDate > endDate) {
        alert("El rango de fechas se encuentra incorrecto.");
        return;
    }

    //colocacion de fechas que iran a base de datos por la consulta
    var cDate = endDate.getFullYear() + "-" + addZero(endDate.getMonth() + 1) + "-" + endDate.getDate();
    var aDate = startDate.getFullYear() + "-" + addZero(startDate.getMonth() + 1) + "-" + startDate.getDate();
    var tipoCambio = document.getElementById("tipoCambio").value;

    dateArray.push(setMonthName(addZero(startDate.getMonth()).toString()) + " " + startDate.getFullYear() + " a " + setMonthName(addZero(endDate.getMonth()).toString()) + " " + endDate.getFullYear());
    if (document.getElementById("Asesor").value == "Todos" || document.getElementById("Asesor").value == '') {
        var val = '';
    } else {
        var val = $('option:selected', document.getElementById("Asesor")).attr('id');
    }
    //cominezo de la peticion ajax
    $.post("AjaxDash.aspx",
        {
            startDate: aDate,
            finalDate: cDate,
            option: "TODOS",
            tipoCambio: tipoCambio,
            Asesor: val,
            option2: obj.getAttribute("title")
        }, function (data, status) {
        var num = JSON.parse(data);
        console.log(num);
        var encabezados = num.Table2[0]["TipoGrafico"].split(",");
        encabezadosGlob = encabezados;

        //Elimina los registros anteriores cargados en la tabla
        while (document.getElementById("headerList").hasChildNodes()) {
            document.getElementById("headerList").removeChild(document.getElementById("headerList").firstChild);
        }
        while (document.getElementById("tableList").hasChildNodes()) {
            document.getElementById("tableList").removeChild(document.getElementById("tableList").firstChild);
        }

        //Constucción de los encabezados de la tabla
        var thHead = document.createElement("tr");
        for (var z = 0; z < encabezados.length; z++) {
            var thencabezado = document.createElement("th");
            thencabezado.innerHTML = encabezados[z];
            thHead.appendChild(thencabezado);
        }
        document.getElementById("headerList").appendChild(thHead);



        //verifica si vienen agrupaciones de bases de datos
        if (num.Table2[2]["Columna"] == '') {
            //for recorre todos los registros
            for (var j = 0 ; j < Object.keys(num.Table1).length; j++) {
                count3 = 1;
                value = 0;
                tipoSent = [];
                var year = num.Table1[j].Anio;
                // For para la division del eje x
                for (var z = 0; z < myArrayName.length; z++) {
                    if (num.Table1[j][num.Table2[0]["Columna"]] == myArrayName[z]) {
                        count++;
                        break;
                    }
                }
                if (count == 0) {

                    myArrayName.push(num.Table1[j][num.Table2[0]["Columna"]]);

                    // busca todos lo registros iguales y se realizan las operaciones
                    for (var x = 0; x < Object.keys(num.Table1).length; x++) {
                        if (num.Table1[j][num.Table2[0]["Columna"]] == num.Table1[x][num.Table2[0]["Columna"]]) {
                            var tr = document.createElement("tr");
                            tr.setAttribute("id", encabezados[0]);
                            // tr.setAttribute("onclick", "viewModal(this)");

                            // agregacion de filas de la tabla
                            for (var e = 0; e < encabezados.length; e++) {
                                if (encabezados[e].toUpperCase() == "Mes".toUpperCase()) {
                                    var td = document.createElement("td");
                                    td.innerHTML = setMonthName(addZerro(num.Table1[j][encabezados[e]]-1).toString());
                                    tr.appendChild(td);
                                } else {
                                    var td = document.createElement("td");
                                    td.innerHTML = num.Table1[j][encabezados[e]];
                                    tr.appendChild(td);
                                }
                                
                            }
                            document.getElementById("tableList").appendChild(tr);

                            switch (num.Table2[1]["TipoSentencia"]) { // determina que tipo de operacion debe realizar el grafico en el eje y
                                case "SUM":
                                    value += parseFloat(num.Table1[x][num.Table2[1]["Columna"]]);
                                    break;
                                case "AVG":
                                    break;
                                case "MIN":
                                    if (value != 0) {
                                        value = value < parseFloat(num.Table1[x][num.Table2[1]["Columna"]]) ? value = value : value = value = parseInt(num.Table1[x][num.Table2[1]["Columna"]]);
                                    } else {
                                        value = parseInt(num.Table1[x][num.Table2[1]["Columna"]]);
                                    }
                                    break;
                                case "MAX":
                                    if (value != 0) {
                                        value = value > parseFloat(num.Table1[x][num.Table2[1]["Columna"]]) ? value = value : value = value = parseInt(num.Table1[x][num.Table2[1]["Columna"]]);
                                    } else {
                                        value = parseFloat(num.Table1[x][num.Table2[1]["Columna"]]);
                                    }
                                    break;
                                case "SIMPLE":
                                    break;
                            }
                        }
                    }
                    tipoSent.push(Math.trunc(value));
                    //dependiendo del tipo de grafico se contruye el JSON
                    if (document.getElementById("typeChart").value == "Circular") {
                        SeriesY.push([num.Table1[j][num.Table2[0]["Columna"]], tipoSent[0]]);
                    } else {
                        SeriesY.push({ name: num.Table1[j][num.Table2[0]["Columna"]], data: tipoSent,  dataLabels: {
                            enabled: true,
                            rotation: -90,
                            color: '#FFFFFF',
                            align: 'right',
                            format: '{point.y:.1f}', // one decimal
                            y: 10, // 10 pixels down from the top
                            style: {
                                fontSize: '13px',
                                fontFamily: 'Verdana, sans-serif'
                            }
                        } });
                    }

                } else {
                    count = 0;
                    continue;
                }
            }
            createChart(document.getElementById("typeChart").value, dateArray, title, SeriesY);
        } else {
            //crea las agrupaciones 
            for (var z = 0; z < Object.keys(num.Table1).length; z++) {
                if (num.Table2[2]["Columna"].toUpperCase() == "Mes".toUpperCase()) {
                    var prueb = new Date(num.Table1[z].Anio + '-' + num.Table1[z][num.Table2[2]["Columna"]] + '-01');
                    prueb.setDate(prueb.getDate() + 1);
                } else {
                    var prueb = num.Table1[z][num.Table2[2]["Columna"]];
                }
                for (var x = 0 ; x < agrupamiento.length; x++) {
                    if (num.Table2[2]["Columna"].toUpperCase() == "Mes".toUpperCase()) {
                        if (prueb.getTime() === agrupamiento[x].getTime()) {
                            numAgrup++;
                        }
                    } else {
                        if (prueb === agrupamiento[x]) {
                            numAgrup++;
                        }
                    }

                }
                if (numAgrup > 0) {
                    numAgrup = 0
                } else {

                    agrupamiento.push(prueb);
                }

            }
            console.log(agrupamiento);
            console.log(agrupamiento);
            if (num.Table2[2]["Columna"].toUpperCase() == "Mes".toUpperCase()) {
                //ordenar fechas
                for (var m = 0; m < agrupamiento.length; m++) {
                    for (var p = 0; p < agrupamiento.length; p++) {
                        if (agrupamiento[p] > agrupamiento[m]) {
                            var aux = agrupamiento[p];
                            agrupamiento[p] = agrupamiento[m];
                            agrupamiento[m] = aux;
                        }
                    }
                }
                //cambiar nombre de fechas
                for (var m = 0; m < agrupamiento.length; m++) {
                    agrupamiento[m] = setMonthName(addZero(agrupamiento[m].getMonth()).toString()) + " " + agrupamiento[m].getFullYear();
                }
            } else {
                agrupamiento.sort();
            }
            console.log(agrupamiento);

            // Empieza con el acomodo en los graficos


            for (var j = 0 ; j < Object.keys(num.Table1).length; j++) {
                count3 = 1;
                value = 0;
                tipoSent = [];
                var year = num.Table1[j].Anio;
                // For para la division del eje x
                for (var z = 0; z < myArrayName.length; z++) {
                    if (num.Table1[j][num.Table2[0]["Columna"]] == myArrayName[z]) {
                        count++;
                        break;
                    }
                }
                if (count == 0) {

                    myArrayName.push(num.Table1[j][num.Table2[0]["Columna"]]);


                    // busca todos lo registros iguales y se realizan las operaciones
                    for (var y = 0; y < agrupamiento.length; y++) {
                        value = 0;
                        for (var x = 0; x < Object.keys(num.Table1).length; x++) {
                            if (num.Table2[2]["Columna"].toUpperCase() == "Mes".toUpperCase()) {
                                var comp = setMonthName(addZero(num.Table1[x][num.Table2[2]["Columna"]] - 1).toString()) + " " + num.Table1[x].Anio;
                            } else {
                                var comp = num.Table1[x][num.Table2[2]["Columna"]];
                            }
                            if (num.Table1[j][num.Table2[0]["Columna"]] == num.Table1[x][num.Table2[0]["Columna"]] && comp === agrupamiento[y]) {

                                var tr = document.createElement("tr");
                                tr.setAttribute("id", encabezados[0]);
                                //tr.setAttribute("onclick", "viewModal(this)");
                                // agregacion de filas de la tabla
                                for (var w = 0; w < encabezados.length; w++) {
                                    var td = document.createElement("td");
                                    if (encabezados[w].toUpperCase() == "Mes".toUpperCase()) {
                                        td.innerHTML = setMonthName(addZero(num.Table1[x][encabezados[w]]-1).toString());
                                        tr.appendChild(td);
                                    } else {
                                        td.innerHTML = num.Table1[x][encabezados[w]];
                                        tr.appendChild(td);
                                    }
                                    
                                }
                                document.getElementById("tableList").appendChild(tr);
                                switch (num.Table2[1]["TipoSentencia"]) { //realiza la operacion del eje y  dependiendo de los especificado de base de datos
                                    case "SUM":
                                        value += parseFloat(num.Table1[x][num.Table2[1]["Columna"]]);
                                        break;
                                    case "AVG":
                                        break;
                                    case "MIN":
                                        if (value != 0) {
                                            value = value < parseFloat(num.Table1[x][num.Table2[1]["Columna"]]) ? value = value : value = value = parseInt(num.Table1[x][num.Table2[1]["Columna"]]);
                                        } else {
                                            value = parseInt(num.Table1[x][num.Table2[1]["Columna"]]);
                                        }
                                        break;
                                    case "MAX":
                                        if (value != 0) {
                                            value = value > parseFloat(num.Table1[x][num.Table2[1]["Columna"]]) ? value = value : value = value = parseInt(num.Table1[x][num.Table2[1]["Columna"]]);
                                        } else {
                                            value = parseFloat(num.Table1[x][num.Table2[1]["Columna"]]);
                                        }
                                        break;
                                    case "SIMPLE":
                                        break;
                                }
                            }
                        }
                        tipoSent.push(Math.trunc(value));
                    }

                    //dependiendo del tipo de grafico se contruye el JSON
                    if (document.getElementById("typeChart").value == "Circular") {
                        var total = 0;
                        for (z = 0; z < tipoSent.length; z++) {
                            total += parseInt(tipoSent[z]);
                        }
                        SeriesY.push([num.Table1[j][num.Table2[0]["Columna"]], total]);
                    } else {
                        if(num.Table2[0]["Columna"]=="Mes") {
                            SeriesY.push({ name: setMonthName(addZero(num.Table1[j][num.Table2[0]["Columna"]]-1).toString()), data: tipoSent,  dataLabels: {
                                enabled: true,
                                rotation: -90,
                                color: '#FFFFFF',
                                align: 'right',
                                format: '{point.y:.1f}', // one decimal
                                y: 10, // 10 pixels down from the top
                                style: {
                                    fontSize: '13px',
                                    fontFamily: 'Verdana, sans-serif'
                                }
                            } });
                        }else{
                            SeriesY.push({ name: num.Table1[j][num.Table2[0]["Columna"]], data: tipoSent });
                        }
                    }

                } else {
                    count = 0;
                    continue;
                }
            }
            createChart(document.getElementById("typeChart").value, agrupamiento, title, SeriesY);

            var startB = addZero(startDate.getDate()) + '/' + addZero(startDate.getMonth()+1) + '/' + startDate.getFullYear();
            var startE = addZero(endDate.getDate()) + '/' + addZero(endDate.getMonth()+1) + '/' + endDate.getFullYear();
            var ase = $('option:selected', document.getElementById("Asesor")).attr('id');
            
            document.getElementById("EnlaceB").setAttribute("href", ((num.Table2[3]["Columna"]).replace('@Fecha1', startB)).replace('@Fecha2', startE));
            searchSubReport();
            console.log((num.Table2[3]["Columna"]).replace('@Fecha1', startB).replace('@Fecha2', startE).replace('@Asesor',ase));
           // document.cookie = "DBxtraWebReport=SessionId=1287&UserName=Admin&UserID=1&UserType=1&UserGroup=1&UserPwd=Uetkbcp15NPGc7o3riey6WE/oLBna7hU&MemberOf=&Groups=1; expires=Thu, 18 Dec 2019 12:00:00 UTC;path=/";
           
        }
    });
}

function optionChangeChoice(name) {

    document.getElementById("generar").setAttribute("title", name.getAttribute("name"));

 
    var checkboxes = document.getElementById("Vent").childNodes
    

    //DESCHEKEA LOS DEMAS
    for (var i = 0; i < checkboxes.length; i++) {
        var e = checkboxes[i].nodeName;
        if (checkboxes[i].nodeName == "INPUT") {
            if (checkboxes[i].getAttribute("name") != name.getAttribute("name")) {
                checkboxes[i].checked = false;
            }
        }
    }
    if (dis == true) {
        //LIMPIA EL SELECT DE LAS OPCIONES DE FILTRO
        while (document.getElementById("Asesor").hasChildNodes()) {
            document.getElementById("Asesor").removeChild(document.getElementById("Asesor").firstChild);
        }
        // AGREGA LA LA OPCION TODOS AL SELECT
        var option = document.createElement("option");
        if (name.getAttribute("name") != "Asesores") {
            option.innerHTML = "Todos";
            document.getElementById("Asesor").appendChild(option);

        }

        //PETICION AL SERVIDOR
        $.post("AjaxDash.aspx",
            {
                startDate: document.getElementById("txtStartDate").value,
                finalDate: document.getElementById("txtFinalDate").value,
                option: "INIT",
                tipoCambio: "0",
                option2: name.value
            }, function (data, status) {
                var num = JSON.parse(data);
                for (var i = 0; i < Object.keys(num.Table1).length; i++) {
                    var option = document.createElement("option");
                    option.innerHTML = num.Table1[i].sDescripcion;
                    option.id = num.Table1[i].sCodigo;
                    document.getElementById("Asesor").appendChild(option);
                }
            });
    }
    
}

function ModalFill(obj) {
    goblaName = obj;
    //Elimina los registros anteriores cargados en la tabla
    while (document.getElementById("theadModal").hasChildNodes()) {
        document.getElementById("theadModal").removeChild(document.getElementById("theadModal").firstChild);
    }
    while (document.getElementById("tbodyModal").hasChildNodes()) {
        document.getElementById("tbodyModal").removeChild(document.getElementById("tbodyModal").firstChild);
    }

    var thead = document.createElement('tr');
    for (var i = 0; i < encabezadosGlob.length; i++) {
        var th = document.createElement("th");
        th.innerHTML = encabezadosGlob[i];
        thead.appendChild(th);
    }
    document.getElementById("theadModal").appendChild(thead);
    var child = document.getElementById("tableList").childNodes;
    
    for (var i = 0; i < child.length; i++) {
        var child2 = child[i].childNodes;
        for (var j = 0; j < child2.length; j++) {
            if ((child2[j].innerHTML).trim() == obj.series["name"].trim()) {
                var item = document.createElement("tr");
                for (var z = 0; z < child2.length; z++) {
                    var itemd = document.createElement("td");
                    itemd.innerHTML = child2[z].innerHTML;
                    item.appendChild(itemd);
                }
                document.getElementById("tbodyModal").appendChild(item);
                break;
            }
        }
    }
}

function searchSubReport() {
    while (document.getElementById("subReport").hasChildNodes()) {
        document.getElementById("subReport").removeChild(document.getElementById("subReport").firstChild);
    }
$.post("AjaxDash.aspx",
    {
        startDate: document.getElementById("txtStartDate").value,
        finalDate: document.getElementById("txtFinalDate").value,
        option: "MANT",
        tipoCambio: "0",
        option2: "SUBREPORTE",
        reportePadre: document.getElementById("generar").getAttribute("title")
    }, function (data, status) {
        var num = JSON.parse(data);
        var option = document.createElement("option");
        option.id = "-1";
        option.innerHTML ="Actual";
        document.getElementById("subReport").appendChild(option);
        for (var i = 0; i < Object.keys(num.Table1).length; i++) {
            var option = document.createElement("option");
            option.innerHTML = num.Table1[i].Nombre;
            option.id = num.Table1[i].id;
            document.getElementById("subReport").appendChild(option);
        }
    });
}
function searchSubreportTable(obj) {
    var date1;
    var date2;
    var year1 = 0;
    var year2 = 0;
    if ($('option:selected', document.getElementById("subReport")).attr('id') == "-1") {
        ModalFill(goblaName);
    } else {
        var ths = document.getElementById("theadModal").childNodes
        for (var z = 0; z < ths.length; z++) {
            var child = ths[z].childNodes;
            for (var x = 0; x < child.length; x++) {
                if (child[x].innerHTML.toUpperCase() == "Anio".toUpperCase()) {
                    year = x;
                } else if (child[x].innerHTML.toUpperCase() == "mes".toUpperCase()) {
                    month = x;
                }
            }
        }
        var body = document.getElementById("tbodyModal").childNodes
        for (var z = 0; z < body.length; z++) {
            var childbod = body[z].childNodes;
            for (var x = 0; x < childbod.length; x++) {
                var w = parseInt(setNumberMonth(childbod[month].innerHTML));
                var p = parseInt(childbod[year].innerHTML);
                var tempDate = new Date(w + '-01-' + p);
                if (z == 0) {
                    date1 = new Date(w + '-01-' +  p);
                    date2 = new Date(w +'-30-'+ p);
                } else {
                    if (date1 > tempDate) {
                        date1 = tempDate;
                    }
                    if (date2 < tempDate) {
                        date2 = tempDate;
                    }
                }
            }
        }
        console.log(date2);
        console.log(date1);
        var startDate = date1.getFullYear() + "-" + addZero(date1.getMonth()+1) + "-" + "01";
        var endDate = date2.getFullYear() + "-" + addZero(date2.getMonth() + 1) + "-" + "30";
        console.log(startDate);
        console.log(endDate);

        var tipoCambio = document.getElementById("tipoCambio").value;
        if (document.getElementById("Asesor").value == "Todos" || document.getElementById("Asesor").value == '') {
            var val = '';
        } else {
            var val = $('option:selected', document.getElementById("Asesor")).attr('id');
        }
        $.post("AjaxDash.aspx",
        {
            startDate: startDate,
            finalDate: endDate,
            option: "SUB",
            tipoCambio: tipoCambio,
            Asesor: goblaName.series["name"].trim(),
            option2: $('option:selected', document.getElementById("subReport")).attr('id')
        }, function (data, status) {
            var num = JSON.parse(data);
            var encabezados = num.Table2[0]["TipoGrafico"].split(",");
            while (document.getElementById("theadModal").hasChildNodes()) {
                document.getElementById("theadModal").removeChild(document.getElementById("theadModal").firstChild);
            }
            while (document.getElementById("tbodyModal").hasChildNodes()) {
                document.getElementById("tbodyModal").removeChild(document.getElementById("tbodyModal").firstChild);
            }
            var thead = document.createElement('tr');
            for (var i = 0; i < encabezados.length; i++) {
                var th = document.createElement("th");
                th.innerHTML = encabezados[i];
                thead.appendChild(th);
            }
            document.getElementById("theadModal").appendChild(thead);
            for (var j = 0; j < Object.keys(num.Table1).length; j++) {
                var tr = document.createElement("tr");
                for (var e = 0; e < encabezados.length; e++) {
                    if (encabezados[e].toUpperCase() == "Mes".toUpperCase()) {
                        var td = document.createElement("td");
                        td.innerHTML = setMonthName(addZero(num.Table1[j][encabezados[e]] - 1).toString());
                        tr.appendChild(td);
                    } else {
                        var td = document.createElement("td");
                        td.innerHTML = num.Table1[j][encabezados[e]];
                        tr.appendChild(td);
                    }
                    document.getElementById("tbodyModal").appendChild(tr);
                }
            }
        });
    }
}

function descargarExel() {
    var tmpElemento = document.createElement('a');
    var data_type = 'data:application/vnd.ms-excel';
    var tabla = document.getElementById("tableModal");
    var tabla2 = tabla.outerHTML.replace(/ /g, '%20');
    tmpElemento.href = data_type + ',' + tabla2;
    tmpElemento.download = 'Tabla';
    tmpElemento.click();
}
