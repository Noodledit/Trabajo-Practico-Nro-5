using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Trabajo_Practico_Nro_5
{
    public partial class ListadoSucursales : System.Web.UI.Page
    {
        string query = "SELECT S.Id_Sucursal, S.NombreSucursal, S.DescripcionSucursal, S.Id_ProvinciaSucursal, S.DireccionSucursal, P.NombreProvincia " +
                       "FROM Sucursal S " +
                       "INNER JOIN Provincia P ON S.Id_ProvinciaSucursal = P.Id_Provincia " +
                       "WHERE S.Id_Sucursal = @IdSucursal";
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void hlAgregar_DataBinding(object sender, EventArgs e)
        {
            Response.Redirect("AgregarSucursal.aspx");
        }

        protected void btnFiltrarClick(object sender, EventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(txtSucursalID.Text))
            {
                int idSucur;

                if (int.TryParse(txtSucursalID.Text, out idSucur))
                {

                    query = query.Replace("@IdSucursal",idSucur.ToString());



                    ConexionSql conection = new ConexionSql();
                    DataTable result = conection.readerTable(query);


                    if (result.Rows.Count >0)
                    {
                        //GrindV, databind, etc...
                    }



                }
                else
                {
                    return;
                }


            }

            


        }



    }
    }