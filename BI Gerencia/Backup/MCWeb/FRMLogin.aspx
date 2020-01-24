<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FRMLogin.aspx.cs" Inherits="MCWeb.FRMLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <link href="~/Styles/Site.css" rel="stylesheet" type="text/css" />
</head>
<body style=" background-color: Gray;">
    <form id="form1" runat="server">
    <div  class="" style=" height:150px;">
    
    </div>
    <div  class="StyleLogon " style=" width:400px; height:200px; background-image: url(../images/bgbodytest.png) ">
    
    <div style=" float:left; width:400px; height:30px; margin-left:20px; margin-top:5px;"  >    
        <asp:Label ID="Label3" runat="server" Text="LOG ON" CssClass="LetraPadPq" 
            ForeColor="White" ></asp:Label>
    </div>
<div style=" float:left; width:400px; height:30px;"  >

    </div>

    <div style=" float:left; width:400px; height:30px;"  >
    <div style="margin-left:70px; float: left ; width:80px; height:30px;" >
    
        <asp:Label ID="Label1" runat="server" Text="Usuario:" CssClass="LetraPadPq" 
            ForeColor="White" ></asp:Label>
    </div>
    <div style="float: left; width:240px; height:33px;" >
        <asp:TextBox ID="TXTUsuario" runat="server"  CssClass="LetraPadPq" Width="163px"></asp:TextBox>
     </div>
    </div>
    <div style=" margin-left:70px; float:left; width:330px; height:40px;"  >
      <div style=" float:left; width:80px; height:30px;" >
    
        <asp:Label ID="Label2" runat="server" Text="Contraseña:" CssClass="LetraPadPq" 
              ForeColor="White"></asp:Label>
    </div>
    <div  style="float: left; width:250px; height:33px;">
  <asp:TextBox ID="TXTContrasena" runat="server" TextMode="Password" Width="163px"></asp:TextBox>
        </div>
    </div>

    <div style=" margin-left:130px; float:left; width:270px; height:50px;"  >
    <div style=" float:left; width:100px; height:50px;"  >
        <asp:Button ID="CMDAceptar" CssClass="BotonLogon" runat="server" Text="Aceptar" 
            Width="89px" onclick="CMDAceptar_Click" ForeColor="White" Height="24px" />    
    </div>
    <div style="float:left; width:170px; height:50px;"  >    
        <asp:Button ID="CMDLimpiar" runat="server" CssClass=" BotonLogon" Text="Limpiar" 
            Width="87px" Height="24px" ForeColor="White" />   
    </div>
    
    </div>
    
    <div style=" float:left; width:400px; height:30px;"  >

    </div>
      </div>
       <div  class=" Contenido" style=" height:150px; background-color:Gray; width:500px; margin-top:20px; ">
       
       <div  class=" Contenido" style=" height:25px; background-color:Gray; width:480px; margin-left:10px; text-align:center;">
     <asp:Label ID="Label4" runat="server" Text="Modulos Complemetarios Altea - Control y Matenimiento de Productos" CssClass="LetraPadPq" 
            ForeColor="White" ></asp:Label>
            </div>
      
             <div  class=" Contenido" style=" height:32px; background-color:Gray; width:480px; margin-left:10px; text-align:center;   vertical-align: super;">

                      <img src="../images/Chrome-32.png" alt="" 
            name="banner_graphic" id="banner_graphic"             
            style="background-color:  transparent; height: 32px; width: 32px;" />

     <asp:Label ID="Label6" runat="server" Text="Google Chrome" CssClass="LetraPadPq"  
            ForeColor="White" ></asp:Label>
                        <img src="../images/Firefox-32 (1).png" alt="" 
            name="banner_graphic" id="Img1"             
            style="background-color:  transparent; height: 32px; width: 32px;" />

     <asp:Label ID="Label7" runat="server" Text="Mozilla FireFox" CssClass="LetraPadPq"  
            ForeColor="White" ></asp:Label>

                    <img src="../images/Safari-32.png" alt="" 
            name="banner_graphic" id="Img2"             
            style="background-color:  transparent; height: 32px; width: 32px;" />

     <asp:Label ID="Label8" runat="server" Text="Safari" CssClass="LetraPadPq"  
            ForeColor="White" ></asp:Label>
                  
   
            </div>
    </div>

    </form>
</body>
</html>
