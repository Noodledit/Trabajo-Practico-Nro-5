using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;

namespace Trabajo_Practico_Nro_5
{///"Data Source=localhost\\sqlexpress; Initial Catalog=BDSucursales;Integrated Security = True";
    public class ConexionSql
    {
        //private const string ConectionString = "Data Source=.;Initial Catalog = BDSucursales; Integrated Security = True"; //no saquen este link por favor, prueben el programa antes y cuenteneme si corrio
        private const string ConectionString = @"Server=DESKTOP-JNJ0TAL\SQLEXPRESS;DataBase = BDSucursales; Integrated Security = True;";

        SqlConnection connection = new SqlConnection(ConectionString);

        public DataTable readerTable(string querySql, string IdSucursal = null)
        {
            DataTable dt = new DataTable();

            connection.Open();
            // Se define el comando SQL
            SqlCommand command = new SqlCommand(querySql, connection);

            if (IdSucursal != null)
            {
                command.Parameters.AddWithValue("@idSucursal", IdSucursal);
            }

            // Se ejecuta el comando
            SqlDataReader reader = command.ExecuteReader();
            dt.Load(reader);
            // Se cierra la conexión
            connection.Close();
            // se devuelve el lector
            return dt;
        }

        public int EjecutarConsulta(string consulta, string nombre, string descripcion, int provincia, string direccion)
        {

            connection.Open();

            SqlCommand sqlCommand = new SqlCommand(consulta, connection);

            sqlCommand.Parameters.AddWithValue("@nombre", nombre);
            sqlCommand.Parameters.AddWithValue("@descripcion", descripcion);
            sqlCommand.Parameters.AddWithValue("@idProvincia", provincia);
            sqlCommand.Parameters.AddWithValue("@direccion", direccion);

            int resultado = sqlCommand.ExecuteNonQuery();
            connection.Close();

            return resultado;
        }




        public void EjecutarConsultaEliminacion(string querySql)
        {

            connection.Open();
            // Se define el comando SQL
            SqlCommand command = new SqlCommand(querySql, connection);

            connection.Close();

        }

    }
}


///"Data Source=NOODLE-DESK; Initial Catalog=BDSucursales;Integrated Security=True";
///"Data Source=.;Initial Catalog = BDSucursales; Integrated Security = True";
/// Vale: @"Data Source=DESKTOP-MHN7D94\SQLEXPRESS;Initial Catalog=BDSucursales;Integrated Security=True"