<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pruebas.aspx.cs" Inherits="MCWebHogar.Pruebas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

     <link href="Styles/bootstrap.min.css" rel="stylesheet" />
     <link href="Styles/style_crmv.css" rel="stylesheet" />
     <%-- <link href="Styles/fonts.css" rel="stylesheet" />--%>

       <script src="/Scripts/jquery-3.2.0.min.js"></script>

        <script src="/Scripts/jquery-2.1.1.min.js"></script>
        <%--<script src="/Scripts/bootstrap.min.js"></script>--%>
        
        <script src="/Scripts/jquery-1.7.1.min.js" type="text/javascript"></script>
        <script src="/Scripts/jquery-ui-1.8.18.custom.min.js" type="text/javascript"></script>
        <link href="/Styles/jquery-ui-1.8.18.custom.css" rel="stylesheet" />
        <link href="/Styles/jquery.ui.min.css" rel="stylesheet" />

       <%-- <script src="/Scripts/Alertify/alertify.min.js"></script>
        <link href="/Styles/AlertifyCss/alertify.css" rel="stylesheet" />
        <link href="/Styles/AlertifyCss/alertify.min.css" rel="stylesheet" />
        <link href="/Styles/AlertifyCss/default.min.css" rel="stylesheet" />--%>

     <script  type="text/javascript">

         $(function () {

             $('#popLoading').dialog({
                 resizable: false,
                 autoOpen: false,
                 modal: true,
                 width: 100,
                 Height: 100,
                 title: 'Cargando...',
                 //buttons: {
                 //    "Cerrar": function () {
                 //        // document.getElementById('popCargarPedidoPCG').style.display = "none";
                 //        $(this).dialog("close");
                 //    }
                 //},
                 open: function (type, data) {
                     $(this).parent().appendTo("form");
                    
                 }
             });

            // $("#dialog").dialog();

             $("#dialog").dialog({
                 resizable: false,
                 buttons: [
                   {
                       text: "Ok",
                       icons: {
                           primary: "ui-icon-heart"
                       },
                       click: function () {
                           $(this).dialog("close");
                       }

                       // Uncommenting the following line would hide the text,
                       // resulting in the label being used as a tooltip
                       //showText: false
                   }
                 ]
             });

         });

         function openLoading() {
             $('#popLoading').dialog("open");
             return false;
         }

     </script>

        
        

</head>
<body>
    <form id="form1" runat="server">
         <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true"></asp:ScriptManager>

         <div id="popLoading"  style="display:none;"    >  
              <p align="center"><img src="../images/cargando4.gif" width="60" height="60"  /></p>
         </div>

        <div id="dialog" title="Basic dialog">
          <p>This is the default dialog which is useful for displaying information. The dialog window can be moved, resized and closed with the 'x' icon.</p>
        </div>

    <div>
    

        <asp:Button ID="Button1" runat="server" Text="Pop Loading" OnClientClick="return openLoading();" />
    </div>
    </form>
</body>
</html>
