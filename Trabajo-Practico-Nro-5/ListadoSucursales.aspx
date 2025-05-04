<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListadoSucursales.aspx.cs" Inherits="Trabajo_Practico_Nro_5.ListadoSucursales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 250px;
        }
        .auto-style5 {
            width: 205px;
        }
        .auto-style6 {
            width: 227px;
        }
        .auto-style16 {
            width: 198px;
        }
        .auto-style17 {
            width: 250px;
        }
        .auto-style18 {
            width: 75px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style16">
                    <asp:HyperLink ID="hlAgregar" runat="server" Font-Underline="True" ForeColor="#0000CC" NavigateUrl="~/AgregarSucursal.aspx">Agregar Sucursal</asp:HyperLink>
                    </td>
                <td class="auto-style17">
                    <asp:HyperLink ID="hlListado" runat="server" Font-Underline="True" ForeColor="#0000CC" NavigateUrl="~/ListadoSucursales.aspx">Listado de Sucursales</asp:HyperLink>
                    </td>
                <td class="auto-style16">
                    <asp:HyperLink ID="hlEliminar" runat="server" Font-Underline="True" ForeColor="#0000CC" NavigateUrl="~/EliminarSucursal.aspx">Eliminar Sucursal</asp:HyperLink>
                    </td>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="ListLbl" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">Busqueda, ingrese el Id Sucursal: </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtSucursalID" runat="server" Width="187px"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:RegularExpressionValidator ID="revIdSucursal" runat="server" ControlToValidate="txtSucursalID" ForeColor="#CC0000" ValidationExpression="^[0-9]+$">Debe ingresar un ID valido</asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style18">
                        <asp:Button ID="btnFiltrar" runat="server" Text="Filtrar" />
                    </td>
                    <td>
                        <asp:Button ID="btnMostrar" runat="server" Text="Mostrar todos" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:GridView ID="gvSucursales" runat="server">
                        </asp:GridView>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
