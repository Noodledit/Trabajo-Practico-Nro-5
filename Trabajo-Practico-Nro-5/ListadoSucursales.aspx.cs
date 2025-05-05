using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Trabajo_Practico_Nro_5
{
    public partial class ListadoSucursales : System.Web.UI.Page
    {
        string query = "SELECT Id_Sucursal, NombreSucursal, DescripcionSucursal, Id_ProvinciaSucursal, DireccionSucursal FROM Sucursal";
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void hlAgregar_DataBinding(object sender, EventArgs e)
        {
            Response.Redirect("AgregarSucursal.aspx");
        }
        }
    }