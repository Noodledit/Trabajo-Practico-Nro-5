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
        private string querySql = "DELETE FROM Sucursal WHERE Id_Sucursal = @idSucursal";
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            string idSucursal = txtSucursal.Text; 
            int resultado = conexion.EjecutarConsultaEliminacion(querySql, idSucursal);
            // Verifica si la sucursal fue eliminada
            if (resultado == 0)
            {
                lblMensaje.Text = "No se pudo eliminar la sucursal, verifique el ID ingresado.";
                lblMensaje.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                lblMensaje.Text = "Sucursal eliminada correctamente.";
                lblMensaje.ForeColor = System.Drawing.Color.Green;
            }

            txtSucursal.Text = string.Empty;

        }
    }
}

