var Panel = function () {
    this.init = function () {
        $.post("panelController.aspx", {
            option: "init"
        }, function (data, error) {
            var jsn = JSON.parse(data);
            var adm = jsn.Table2[0].Administra;

            if (adm == 0) {

                var elem = document.getElementById('lstMant');
                elem.parentNode.removeChild(elem);
                var elem = document.getElementById('configRpt');
                elem.parentNode.removeChild(elem);
            } else {
                document.getElementById("configRpt").style.display = "";
                document.getElementById("lstMant").style.display = "";
            }
         //   panels.createPanel(jsn.Table1);
            panels.lstRpts(jsn.Table1);

           

        });
    }

    this.createPanel = function (jsn) {
        var array =[];
        var count=0;
        for (var i = 0 ; i < Object.keys(jsn).length; i++) {
            for (var j = 0; j < array.length; j++) {
                if (array[j]==jsn[i].Categoria) {
                    count++;
                }
            }
            if (count==0){
                array.push(jsn[i].Categoria);
            }
            count=0;
        }
        for (var i = 0 ; i < array.length; i++) {
            var divBox = document.createElement("div");
            divBox.className = "box box-warning box-solid";

            var divBoxH = document.createElement("div");
            divBoxH.className = "box-header with-border";

            var h3 = document.createElement("h3");
            h3.className = "box-title";
            h3.innerHTML = array[i];

            var divBoxT = document.createElement("div");
            divBoxT.className = "box-tools pull-right";

            var btn = document.createElement("button");
            btn.type = "button";
            btn.className = "btn btn-box-tool";
            btn.setAttribute("data-widget", "collapse");

            var icon = document.createElement("i");
            icon.className = "fa fa-minus";

            var divBoxB = document.createElement("div");
            divBoxB.className = "box-body";
            divBoxB.setAttribute("style", "");

            divBox.appendChild(divBoxH);
            divBox.appendChild(divBoxB);

            divBoxH.appendChild(h3);
            divBoxH.appendChild(divBoxT);
            divBoxT.appendChild(btn);
            btn.appendChild(icon);
            for (var j = 0; j < Object.keys(jsn).length; j++) {
                if (jsn[j].Categoria==array[i]) {
                    var a = document.createElement("a");
                    a.innerHTML = jsn[j].Nombre;
                    a.setAttribute("onclick", "panels.loadFrame('"+jsn[j].EnlaceBI+"')");
                    var br = document.createElement("br");
                    divBoxB.appendChild(a);
                    divBoxB.appendChild(br);
                }
            }
            document.getElementById("colPanel").appendChild(divBox);
        }
    }
    this.loadFrame = function (link) {
        document.getElementById("frameRpt").setAttribute("src",link);
    }
    this.lstRpts = function (jsn) {
        document.getElementById("bdBarra").className = "skin-blue sidebar-mini sidebar-collapse";
        var array = [];
        var count = 0;
        for (var i = 0 ; i < Object.keys(jsn).length; i++) {
            for (var j = 0; j < array.length; j++) {
                if (array[j] == jsn[i].Categoria) {
                    count++;
                }
            }
            if (count == 0) {
                array.push(jsn[i].Categoria);
            }
            count = 0;
        }

        for (var i = 0 ; i < array.length; i++) {
            //Categoria
            var a = document.createElement("a");
            a.href = "#";

            var icon1 = document.createElement("i");
            icon1.className = "fa fa-bars";
           // icon1.innerHTML = "&nbsp;" + array[i];

            var span = document.createElement("span");
            span.className = "pull-right-container";

            var icon2 = document.createElement("i");
            icon2.className = "fa fa-angle-left pull-right";

            a.appendChild(icon1);
            a.innerHTML += "<span>" + array[i]; + "</span>"

            span.appendChild(icon2);
            a.appendChild(span);

            document.getElementById("lstReportes").appendChild(a);
            var ul = document.createElement("ul");
            ul.className = "treeview-menu"
            for (var j = 0; j < Object.keys(jsn).length; j++) {
                if (jsn[j].Categoria == array[i]) {
                    //Reporte
                   
                    var li = document.createElement("li");
                    var a2 = document.createElement("a");
                    var icon3 = document.createElement("i");
                    icon3.className = "fa fa-bar-chart";
                    //icon3.innerHTML = "&nbsp;" + jsn[j].Nombre;

                    a2.appendChild(icon3);
                   // a2.href = "#";
                    a2.setAttribute("onclick", "panels.loadFrame('" + jsn[j].EnlaceBI + "')");
                    a2.setAttribute("style", "font-family: 'Source Sans Pro','Helvetica Neue',Helvetica,Arial,sans-serif; cursor: pointer;");
                    a2.innerHTML += "<span>" +  jsn[j].Nombre+ "</span>" ;


                    
                    li.appendChild(a2);
                    ul.appendChild(li);
                    //document.getElementById("lstReportes").appendChild(ul);
                }
            }
            document.getElementById("lstReportes").appendChild(ul);
        }
    }


}