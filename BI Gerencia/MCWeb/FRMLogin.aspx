<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FRMLogin.aspx.cs" Inherits="MCWebHogar.CRMVertice.FRMLogin" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>BI</title>
    <meta charset="utf-8" />

    <%--<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />--%>
    <%--  <link href="../Styles/Login/bootstrap.min.css" rel="stylesheet" />
    <link href="../Styles/Login/bootstrap-themes.css" rel="stylesheet" />
    <link href="../Styles/Login/stylepaneltec.css" rel="stylesheet" />
    <link href="../Styles/fonts.css" rel="stylesheet" />
    <link href="images/AlteaDesLogo.png" rel="shortcut icon" />--%>
    <!--Plantilla -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css" />
    <link rel="stylesheet" href="dist/css/AdminLTE.min.css" />
    <link rel="stylesheet" href="plugins/iCheck/square/blue.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic" />

    <style>
        .loading {
            display: none;
            position: fixed;
            text-align: center;
            margin-top: 20%;
            width: 100%;
            height: 100%;
            z-index: 3004;
            overflow: auto;
        }

        .overlayload {
            background: #000;
            display: none;
            position: fixed;
            text-align: center;
            opacity: 0.75;
            width: 100%;
            height: 100%;
            z-index: 2004;
            overflow: auto;
        }

        .site-logoAltea {
            background: url('/images/AlteaDesLogo.png') no-repeat center center;
            background-size: 167px 175px;
            display: block;
            height: 206px;
            position: relative;
            top: 0px;
            left: 0px;
        }

        #main {
            background-image: url('/images/F3.jpg');
            background-size: cover;
            background-position: center;
            height: 100%;
            background-color: #293981;
            background-repeat: no-repeat;
            opacity: 30;
        }
    </style>

    <script type="text/javascript">

        function vacios() {
            var TXTu = document.getElementById('UserName2').value;
            TXTu = TXTu.trim();
            var TXTc = document.getElementById('Password').value;
            TXTc = TXTc.trim();

            if (TXTc.length == 0 || TXTu.length == 0) {
                alert('Usuario o contraseña invalidos.');
                return false;
            }
            activaloading();
        }

        function activaloading() {
            document.getElementById('fade2').style.display = 'block';
            document.getElementById('modalloading').style.display = 'block';

            //  document.getElementById('imgload').style.display = 'block';
            //  document.getElementById('lblIngreso').style.display = 'none';
            document.getElementById('btn_login').disabled = true;
        }

        function desactivaloading() {
            document.getElementById('fade2').style.display = 'none';
            document.getElementById('modalloading').style.display = 'none';

            // document.getElementById('imgload').style.display = 'none';
            // document.getElementById('lblIngreso').style.display = 'block';
        }

        function activar(e) {
            var key = window.Event ? e.which : e.keyCode
            if (key == 13) {
                vacios();
                __doPostBack('btn_login', '');
            }

        }



    </script>
</head>


<body class="hold-transition login-page">

    <div id="modalloading" class="loading">
        <img src="../images/cargando4.gif" width="100" height="100" />
    </div>

    <div class="login-box">
        <div class="login-logo">
            <a href="../../index2.html"><b>BI</b>&nbsp;Corporativo</a>
        </div>
        <div class="login-box-body">
            <p class="login-box-msg">Panel de acceso</p>

            <form id="form1" class="form-signin" runat="server">
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <input name="__RequestVerificationToken" type="hidden" value="bnlW2jwmds3KXiuUH7aCuCIrNSo_gIaIS4gHlqin69kYucUzGR3cUbl8HacJzN3zQVvbgiy1uf-qzNPGwQeUwRiDG3H04vIYEow0b9c_VXM1" />

                <div class="form-group has-feedback">
                    <input class="form-control" data-val="true" data-val-required="El campo Usuario es obligatorio." id="UserName2" name="UserName2" placeholder="Usuario" type="text" value="" />
                    <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                </div>
                <div class="form-group has-feedback">
                    <input class="form-control" data-val="true" data-val-required="El campo Contraseña es obligatorio." onkeydown="return activar(event);" id="Password" name="Password" placeholder="Contraseña" type="password" />
                    <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                </div>
                <div class="row">
                    
                   <%-- <div class="col-xs-8">
                      
                        <div class="checkbox icheck">
                            <input checked="checked" data-val="true" data-val-required="El campo Recordar es obligatorio." id="RememberMe" name="RememberMe" type="checkbox" value="true" /><input name="RememberMe" type="hidden" value="false" />
                            <label for="RememberMe">Recordar</label>
                        </div>
                    </div>--%>
                    <div class="col-xs-6">
                        <asp:LinkButton ID="btn_login" runat="server"
                            CssClass="btn bg-navy" OnClick="btn_login_Click" OnClientClick="return vacios();">
                         <img src="../images/cargando4.gif" width="25" height="25" id="imgload" style="display:none;margin:0 auto;"   />   
                         <span id="lblIngreso">Ingresar</span>
                        </asp:LinkButton>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <script src="../../bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap 3.3.7 -->
    <script src="../../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- iCheck -->
    <script src="../../plugins/iCheck/icheck.min.js"></script>
    <script>
        $(function () {
            $('input').iCheck({
                checkboxClass: 'icheckbox_square-blue',
                radioClass: 'iradio_square-blue',
                increaseArea: '20%' /* optional */
            });
        });
    </script>
    <script src="/bundles/jqueryval"></script>
</body>
</html>
