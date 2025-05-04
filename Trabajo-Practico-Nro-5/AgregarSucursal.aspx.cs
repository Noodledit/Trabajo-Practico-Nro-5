using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Trabajo_Practico_Nro_5
{
    public partial class AgregarSucursal : System.Web.UI.Page
    {
        ConexionSql conexion = new ConexionSql();
        private string consultaSQL;

        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

           
            string query = "SELECT * FROM Provincia";
            DataTable dtProvincias = new DataTable();
            dtProvincias = conexion.readerTable(query);

            if (!IsPostBack)
            {
                ddlProvincia.DataSource = dtProvincias;
                ddlProvincia.DataTextField = "DescripcionProvincia";
                ddlProvincia.DataValueField = "Id_Provincia";
                ddlProvincia.DataBind();
                ddlProvincia.Items.Insert(0, new ListItem("--Seleccionar--", "0"));
            }
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            
            string query = "INSERT INTO Sucursal (NombreSucursal, DescripcionSucursal, Id_ProvinciaSucursal, DireccionSucursal)\r\nVALUES (@nombre, @descripcion, @idProvincia, @direccion)\r\n";

            //obtengo los valores ingresados
            string nombre = txtNombreSucursal.Text; 
            string descripcion = txtDescripción.Text; 
            int provinciaId = int.Parse(ddlProvincia.SelectedValue); 
            string direccion = TxtDireccion.Text;

            int resultado = conexion.EjecutarConsulta(query, nombre, descripcion, provinciaId, direccion);

            lblMensaje.Text = "Sucursal agregada correctamente.";
            txtDescripción.Text = string.Empty;
            txtNombreSucursal.Text = string.Empty;  
            ddlProvincia.SelectedIndex = 0;
            TxtDireccion.Text = string.Empty;

        }
    }
}