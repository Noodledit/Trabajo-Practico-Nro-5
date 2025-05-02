using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace Trabajo_Practico_Nro_5
{///"Data Source=localhost\\sqlexpress; Initial Catalog=BDSucursales;Integrated Security = True";
    public class ConexionSql
    {   //no saquen este link por favor, prueben el programa antes y cuenteneme si corrio
        private const string ConectionString = "Data Source=.;Initial Catalog = BDSucursales; Integrated Security = True";//no saquen este link por favor, prueben el programa antes y cuenteneme si corrio
        //no saquen este link por favor, prueben el programa antes y cuenteneme si corrio
        public DataTable readerTable (string querySql)
        {
            DataTable dt = new DataTable();
            // Se define la cadena de conexión
            SqlConnection connection = new SqlConnection(ConectionString);
            connection.Open();
            // Se define el comando SQL
            SqlCommand command = new SqlCommand(querySql, connection);
            // Se ejecuta el comando
            SqlDataReader reader = command.ExecuteReader();
            dt.Load(reader);
            // Se cierra la conexión
            connection.Close();
            // se devuelve el lector
            return dt;
        }
    }
}

///"Data Source=NOODLE-DESK; Initial Catalog=BDSucursales;Integrated Security=True";