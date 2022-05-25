using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace appPlantilla.Datos
{
    public class clConexion
    {


        SqlConnection conexion;


        // Conexion a la base de datos
        public clConexion()                                                                 
        {
            conexion = new SqlConnection("Data Source=.;Initial Catalog=bdPymes;Integrated Security=True");

            conexion.Open();

        }

        //Metodo para los Select
        public DataTable mtdDesconectado(string sql)
        {
            SqlDataAdapter adaptador = new SqlDataAdapter(sql, conexion);
            DataTable tblDatos = new DataTable();
            adaptador.Fill(tblDatos);
            conexion.Close();
            return tblDatos;

        }

        //Metodo para los Insert, Update y Delete
        public int mtdConectado(string sql)
        {
            SqlCommand comando = new SqlCommand(sql, conexion);
            int filasAfectadas = comando.ExecuteNonQuery();
            conexion.Close();
            return filasAfectadas;

        }
    }
}