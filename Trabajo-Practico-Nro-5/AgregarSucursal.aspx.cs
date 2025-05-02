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
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            ConexionSql conexion = new ConexionSql();
            string query = "SELECT * FROM Provincia";
            DataTable dtProvincias = new DataTable();
            dtProvincias = conexion.readerTable(query);


            if (!IsPostBack)
            {
                ddlProvincia.DataSource = dtProvincias;
                ddlProvincia.DataTextField = "DescripcionProvincia";
                ddlProvincia.DataValueField = "Id_Provincia";
                ddlProvincia.DataBind();
                ddlProvincia.Items.Insert(0, new ListItem("--Seleccionear--", "0"));
            }
        }
    }
}