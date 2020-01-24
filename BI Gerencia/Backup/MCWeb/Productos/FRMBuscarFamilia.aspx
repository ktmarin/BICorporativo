<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FRMBuscarFamilia.aspx.cs" Inherits="MCWeb.Productos.FRMBuscarFamilia" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

    <div>
        <asp:GridView ID="GridView1" runat="server" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False" >
            <Columns>
                <asp:BoundField DataField="sGrupo" HeaderText="Grupo" />
                <asp:BoundField DataField="sDescripcion" HeaderText="Descripcion">
                <HeaderStyle Width="200px" />
                </asp:BoundField>               
                   <asp:CommandField ShowSelectButton="True" SelectText="Selecionar">
                <ItemStyle Width="20px" />
                </asp:CommandField>
                <asp:TemplateField></asp:TemplateField>
            </Columns>
    </asp:GridView>

    </div>
    </form>
</body>
</html>
