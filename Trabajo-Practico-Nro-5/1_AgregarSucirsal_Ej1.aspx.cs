using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Trabajo_Practico_Nro_5;

namespace Trabajo_Practico_Nro_5
{
    public partial class _1_AgregarSucirsal_Ej1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ConexionSql conexion = new ConexionSql();
            string query = "SELECT * FROM Provincia"; 
            SqlDataReader lector = conexion.readerSql(query);

            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            if (!IsPostBack)
            {
                ddlProvincia.DataSource = lector;  
                ddlProvincia.DataTextField = "DescripcionProvincia";
                ddlProvincia.DataValueField = "Id_Provincia";
                lector.Close();
            }

            

        }
    }
}