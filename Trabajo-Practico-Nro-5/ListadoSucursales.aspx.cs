using System;
using System.CodeDom.Compiler;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Trabajo_Practico_Nro_5
{
    public partial class ListadoSucursales : System.Web.UI.Page
    {
        string query = "SELECT S.Id_Sucursal, S.NombreSucursal, S.DescripcionSucursal, S.Id_ProvinciaSucursal, S.DireccionSucursal, P.DescripcionProvincia " +
                       "FROM Sucursal S " +
                       "INNER JOIN Provincia P ON S.Id_ProvinciaSucursal = P.Id_Provincia " +
                       "WHERE S.Id_Sucursal = @IdSucursal";

        string queryTotalSucursales = "SELECT S.Id_Sucursal, S.NombreSucursal, S.DescripcionSucursal, S.Id_ProvinciaSucursal, S.DireccionSucursal, P.DescripcionProvincia " +
                                      "FROM Sucursal S " +
                                      "INNER JOIN Provincia P ON S.Id_ProvinciaSucursal = P.Id_Provincia";

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void hlAgregar_DataBinding(object sender, EventArgs e)
        {
            Response.Redirect("AgregarSucursal.aspx");
        }

        protected void btnFiltrarClick(object sender, EventArgs e)
        {
            string idSucursal = txtSucursalID.Text.Trim();

            if (!string.IsNullOrEmpty(idSucursal))
            {

                ConexionSql conection = new ConexionSql();
                DataTable result = conection.readerTable(query, idSucursal);

                if (result.Rows.Count > 0)
                {
                    //GrindV, databind, etc...
                    gvSucursales.DataSource = result;
                    gvSucursales.DataBind();
                    lblNoResultados.Text = string.Empty;
                }
                else
                {
                    lblNoResultados.Text = "No se encontraron sucursales*";
                }

            }

            else
            {
                return;
            }


        }

        protected void btnMostrar_Click(object sender, EventArgs e)
        {

            ConexionSql conection = new ConexionSql();
            DataTable result = conection.readerTable(queryTotalSucursales);

            if (result.Rows.Count > 0)
            {
                gvSucursales.DataSource = result;
                gvSucursales.DataBind();
            }
            else
            {
                lblNoResultados.Text = "No se encontraron sucursales.";
            }
        }
    }
}
