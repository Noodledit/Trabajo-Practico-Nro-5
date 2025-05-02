using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Trabajo_Practico_Nro_5
{
    public class ConexionSql
    {
        private const string ConectionString = "Data Source=(local); Initial Catalog=BDSucursales;Integrated Security = True";
        public SqlDataReader readerSql (string querySql)
        {
            // Se define la cadena de conexión
            SqlConnection connection = new SqlConnection(ConectionString);
            connection.Open();
            // Se define el comando SQL
            SqlCommand command = new SqlCommand(querySql, connection);
            // Se ejecuta el comando
            SqlDataReader reader = command.ExecuteReader();
            // Se cierra la conexión
            connection.Close();
            // se devuelve el lector
            return reader;
        }
    }
}

