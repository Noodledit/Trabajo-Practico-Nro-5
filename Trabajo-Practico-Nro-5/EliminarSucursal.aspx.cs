using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Trabajo_Practico_Nro_5
{
    public partial class EliminarSucursal : System.Web.UI.Page
    {
        ConexionSql conexion = new ConexionSql();
        private string querySql = "DELETE FROM Sucursales WHERE idSucursal = @idSucursal";
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;


        }
    }
}

