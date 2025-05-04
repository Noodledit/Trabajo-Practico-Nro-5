<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarSucursal.aspx.cs" Inherits="Trabajo_Practico_Nro_5.AgregarSucursal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 66px;
        }
        .auto-style3 {
            width: 118px;
        }
        .auto-style4 {
            width: 130px;
        }
        .auto-style5 {
            width: 66px;
            height: 23px;
        }
        .auto-style6 {
            width: 118px;
            height: 23px;
        }
        .auto-style7 {
            width: 130px;
            height: 23px;
        }
        .auto-style8 {
            height: 23px;
        }
        .auto-style11 {
            height: 23px;
            width: 226px;
        }
        .auto-style12 {
            width: 226px;
        }
        .auto-style13 {
            height: 23px;
            width: 272px;
        }
        .auto-style14 {
            width: 272px;
        }
        .auto-style16 {
            width: 198px;
        }
        .auto-style17 {
            width: 250px;
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
                    <td class="auto-style2">&nbsp;</td>
                    <td colspan="3">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td colspan="3"><h1>Grupo N° 12</h1></td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td colspan="3"><h2>Agregar Sucursal</h2></td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">Nombre Sucursal:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtNombreSucursal" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style12">
                         <asp:RequiredFieldValidator  
                        ID="rfvNombreSucursal" runat="server" ControlToValidate="txtNombreSucursal" ForeColor="Red">Debe ingresar un nombre de sucursal</asp:RequiredFieldValidator>

                    </td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">Descripción</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtDescripción" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style12">
                         <asp:RequiredFieldValidator  
                        ID="rfvDescripción" runat="server" ControlToValidate="txtDescripción" ForeColor="Red">Debe ingresar una descripción</asp:RequiredFieldValidator>

                    </td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">Provincia:</td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="ddlProvincia" runat="server" Width="124px">
                        </asp:DropDownList>



                    </td>
                    <td class="auto-style12">
                         <asp:RequiredFieldValidator  
                        ID="rfvProvincia" runat="server" ControlToValidate="ddlProvincia" ErrorMessage="La Provincia debe seleccionarse" ForeColor="Red"> 
                        </asp:RequiredFieldValidator>

                    </td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">Dirección:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtDireccion" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style12"> <asp:RequiredFieldValidator 
  ID="rfvDireccion" runat="server" ControlToValidate="TxtDireccion" ErrorMessage="La Direccion es Obligatoria" ForeColor="Red"> 
  </asp:RequiredFieldValidator></td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style6"></td>
                    <td class="auto-style7"></td>
                    <td class="auto-style11"></td>
                    <td class="auto-style13"></td>
                    <td class="auto-style8"></td>
                    <td class="auto-style8"></td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Button ID="btnAceptar" runat="server" OnClick="btnAceptar_Click" Text="Aceptar" />
                    </td>
                    <td class="auto-style12">
                        <asp:Label ID="lblMensaje" runat="server" ForeColor="#009933" Text=" "></asp:Label>
                    </td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
    </form>
</body>
</html>
