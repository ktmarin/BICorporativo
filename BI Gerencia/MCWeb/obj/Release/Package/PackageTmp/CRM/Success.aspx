<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Success.aspx.cs" Inherits="MCWebHogar.SalesForce.Success" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sale Force Success</title>
      <script src="Scripts/bootstrap.min.js"></script>
     <link href="/Styles/bootstrap.css" rel="stylesheet" type="text/css" />
     <link href="/Styles/bootstrap.min.css" rel="stylesheet" type="text/css" />


</head>
<body>
    <form id="form1" runat="server">
    <div class="media-body container" style="margin-top:100px;"> 


          <div id="Imagen1" class =" row text-center">

            <asp:Image runat="server" ID="image1" ImageUrl="~/images/logoeuro.png"  /> 

        </div>

        <div id="Imagen2" class =" row text-center"  style="margin-top:50px;">

            <asp:Image runat="server" ID="imagen" ImageUrl="~/images/checksucess.png"  /> 

        </div>
        
        <div id="Texto" class =" row text-center">

            <a   class="text-primary"> Sincronización completada. </a>
        </div>
        

    
    </div>
    </form>
</body>
</html>
