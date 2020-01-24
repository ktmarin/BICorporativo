var master = function () {

    this.init = function () {
        $.post("masterController.aspx", {
            option: "init"
        }, function (data, error) {
            var jsn = JSON.parse(data);
            document.getElementById("imgUsuario").src = "data:application/png;base64," + jsn.Table1[0].foto;
        });
    }



}