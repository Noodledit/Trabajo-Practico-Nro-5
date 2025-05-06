<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EliminarSucursal.aspx.cs" Inherits="Trabajo_Practico_Nro_5.EliminarSucursal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style16 {
            width: 198px;
        }
        .auto-style17 {
            width: 250px;
        }
        .auto-style18 {
            width: 195px;
        }
        .auto-style19 {
            width: 141px;
        }
        .auto-style20 {
            width: 332px;
        }
        .auto-style21 {
            width: 20px;
        }
        .auto-style22 {
            width: 20px;
            height: 23px;
        }
        .auto-style23 {
            width: 141px;
            height: 23px;
        }
        .auto-style24 {
            width: 332px;
            height: 23px;
        }
        .auto-style25 {
            width: 195px;
            height: 23px;
        }
        .auto-style26 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
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
            <td class="auto-style22"></td>
            <td class="auto-style23"></td>
            <td class="auto-style24"></td>
            <td class="auto-style25"></td>
            <td class="auto-style26"></td>
            <td class="auto-style26"></td>
            <td class="auto-style26"></td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style20">
                <asp:RegularExpressionValidator ID="revEliminar" runat="server" ControlToValidate="txtSucursal" ErrorMessage="RegularExpressionValidator" ValidationExpression="^[0-9,$]*$">Ingrese un ID válido</asp:RegularExpressionValidator>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="rfvEliminar" runat="server" ControlToValidate="txtSucursal">El campo no debe estar vacio</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style18">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style19">Ingrese ID sucursal:</td>
            <td class="auto-style20">
                <asp:TextBox ID="txtSucursal" runat="server" Width="304px" CausesValidation="true"></asp:TextBox>
            </td>
            <td class="auto-style18">
                <asp:Button ID="btnEliminar" runat="server" OnClick="btnEliminar_Click" Text="Eliminar" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style20">
                <asp:Label ID="lblMensaje" runat="server"></asp:Label>
            </td>
            <td class="auto-style18">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
            </form>
    </body>
</html>
