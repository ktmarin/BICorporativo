<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FRMLoginGV.aspx.cs" Inherits="MCWebHogar.FRMLoginGV" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %> 

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
        <title>Gestión Vehicular</title>
    <meta charset="utf-8"/>
    
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1"/>
    <link href="../Styles/Login/bootstrap.min.css" rel="stylesheet" />
    <link href="../Styles/Login/bootstrap-themes.css" rel="stylesheet" />
    <%--<link href="../Styles/Login/style.css" rel="stylesheet" />--%> <%--Vertice--%>
    <link href="../Styles/Login/styleeuromobilia.css" rel="stylesheet" /> <%--Paneltec--%>

    <link href="../Styles/fonts.css" rel="stylesheet" />

  <%--  <link href="../images/favicon.png" rel="shortcut icon"/>--%>
     <link href="images/logoeuro.png" rel="shortcut icon"/>
      
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
         }


       </script>
</head>
    <body class="full-lg">
    <div id="wrapper">
      <%--  <div id="main" class="maincolor" style="background-image: url('http://www.verticecr.com/files/content/COMERCIAL/slider comercial/menu-princ-slider-comercial-3.jpg'); 
                              background-size:contain;
                              background-color:#293981; background-repeat:no-repeat; opacity:30"> --%>
                <div id="main" class="maincolor" style="background-image: url('https://www.euromobilia.com/Taller%20Software/Taller.jpg'); 
                              background-size:contain;
                              background-color:#293981; background-repeat:no-repeat; opacity:30">  
            <div class="container body-content">
                <section class="container body-content">
                    <div class="container">
                        <div class="row">
                            
                            <div class="col-lg-12">
                                <div class="account-wall">
                                    <div class="fondotrans"> 
                                    <section class="align-lg-center">
                                        <div class="site-logoVertice"></div>
                                     <%--   <h1 class="login-title" style="color:red" >Euromobilia 
                                             </h1>--%>
                                            <small class="sml"> Login Panel</small>

                                       
                                    </section>
                                    <form id="form1" class ="form-signin" runat="server">
                                        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                        <input name="__RequestVerificationToken" type="hidden" value="bnlW2jwmds3KXiuUH7aCuCIrNSo_gIaIS4gHlqin69kYucUzGR3cUbl8HacJzN3zQVvbgiy1uf-qzNPGwQeUwRiDG3H04vIYEow0b9c_VXM1"/>
                                        <section>
                                            <div class="input-group">
                                                <div class="input-group-addon"><i class="icon-user"></i></div>
                                                <input class="form-control"   data-val="true" data-val-required="El campo Usuario es obligatorio." id="UserName2" name="UserName2" placeholder="Usuario" type="text" value=""/>
                                                <%--<asp:TextBox ID="UserName"  runat="server"  class="form-control" data-val="true" data-val-required="El campo Usuario es obligatorio."> </asp:TextBox/>--%>
                                            </div>
                                            <div class="input-group">
                                                <div class="input-group-addon"><i class="icon-key"></i></div>
                                                <input class="form-control" data-val="true" data-val-required="El campo Contraseña es obligatorio." id="Password" name="Password" placeholder="Contraseña" type="password"/>
                                            </div>
                                            <asp:Button ID="btn_login" runat="server" Text="Ingresar"  CssClass="btn btn-lg btn-block btn-primary " OnClick="btn_login_Click" OnClientClick="return vacios();" />
                                        </section>
                                        <section class="clearfix">
                                            <div class="iCheck pull-left" data-color="red">
                                                <input checked="checked" data-val="true" data-val-required="El campo Recordar es obligatorio." id="RememberMe" name="RememberMe" type="checkbox" value="true"/><input name="RememberMe" type="hidden" value="false"/>
                                                <label for="RememberMe">Recordar</label>
                                            </div>
                                     
                                        </section>
                                    </form>
                                    <a href="javacript:void(0)" class="footer-link">Derechos Reservados © 2016 </a>
                                    </div>
                                </div>

                            </div>
                            </div><!--fin fonde trans-->
                       
                    </div>


                </section>
            </div>
        </div>
        <!-- //main-->


    </div>

    <script src="/bundles/jqueryval"></script>






</body>
</html>
