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



        SqlConnection conexion = new SqlConnection("Data Source =.; Initial Catalog = bdPymes; Integrated Security = True");


        public SqlConnection LeerCadena()
        {
            if (conexion.State == ConnectionState.Open)
            {
                conexion.Close();
            }
            else
            {
                conexion.Open();
            }
            return conexion;
        }
        public DataTable mtdDesconectado(string sql) //Metodo para los Select
        {
            SqlDataAdapter adaptador = new SqlDataAdapter(sql, conexion);
            DataTable tblDatos = new DataTable();
            adaptador.Fill(tblDatos);
            conexion.Close();
            return tblDatos;
        }
        public int mtdConectado(string sql) //Metodo para los Insert, Update y Delete
        {
            SqlCommand comando = new SqlCommand(sql, conexion);
            int filasAfectadas = comando.ExecuteNonQuery();
            conexion.Close();
            return filasAfectadas;
        }


        public class Conexion
        {
            public static string CN = "Data Source=.;Initial Catalog=bdpymes;Integrated Security=True";
        }




    }

}
