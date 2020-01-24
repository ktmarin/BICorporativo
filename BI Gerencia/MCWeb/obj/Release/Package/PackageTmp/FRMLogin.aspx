<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FRMLogin.aspx.cs" Inherits="MCWebHogar.CRMVertice.FRMLogin" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %> 

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
        <title>CRM Altea Design</title>
    <meta charset="utf-8"/>
    
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1"/> 
    <link href="../Styles/Login/bootstrap.min.css" rel="stylesheet" />
    <link href="../Styles/Login/bootstrap-themes.css" rel="stylesheet" />

    <link href="../Styles/Login/stylepaneltec.css" rel="stylesheet" />

    <link href="../Styles/fonts.css" rel="stylesheet" />

     <link href="images/AlteaDesLogo.png" rel="shortcut icon"/>

    <style>
        .loading{
	        display:none;
            position: fixed;
            text-align: center;
            margin-top:20%;
            width: 100%;
            height: 100%;
            z-index:3004;
            overflow: auto;
        }

        .overlayload{
                
                background: #000;
                display:none;
                position: fixed;
                text-align: center;
                opacity:0.75;
                width: 100%;
                height: 100%;
                z-index:2004;
                overflow: auto;
        
          }
        .site-logoAltea{
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
            background-size:cover;
            background-position: center;
            height:100%;
            background-color:#293981; background-repeat:no-repeat; opacity:30
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
    <body class="full-lg  ">

         <div id="modalloading" class="loading">  
		    <img src="../images/cargando4.gif" width="100" height="100" /> 
    </div>
    <div id="fade2" class="overlayload" ></div>


    <div id="wrapper">
     <div id="main">  
            <div class="container body-content">
                <section class="container body-content">
                    <div class="container">
                        <div class="row">
                            
                            <div class="col-lg-12">
                                <div class="account-wall">
                                    <div class="fondotrans"> 
                                    <section class="align-lg-center">
                                        <div class="site-logoAltea"></div>
                                        <h1 class=" col-lg-push-9" style="color:black;" >CRM 
                                             </h1>
                                           <%-- <small class="sml"> Login Panel</small>--%>

                                       
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
                                                <input class="form-control" data-val="true" data-val-required="El campo Contraseña es obligatorio." onkeydown="return activar(event);" id="Password" name="Password" placeholder="Contraseña" type="password"/>
                                            </div>
                                           <%-- <asp:Button ID="btn_login" runat="server" Text="Ingresar"  CssClass="btn btn-lg btn-block btn-primary " OnClick="btn_login_Click" OnClientClick="return vacios();" />--%>

                                             <asp:LinkButton ID="btn_login" runat="server"   CssClass="btn btn-lg btn-block btn-primary" OnClick="btn_login_Click" OnClientClick="return vacios();" >
                                                 <img src="../images/cargando4.gif" width="25" height="25" id="imgload" style="display:none;margin:0 auto;"   />   
                                                 <span id="lblIngreso">Ingresar</span>
                                             </asp:LinkButton>


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
