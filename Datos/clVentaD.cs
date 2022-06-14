using appPlantilla.Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace appPlantilla.Datos
{
    public class clVentaD
    {

    }

    public class ventas
    {
        clConexion cn = new clConexion();
        public DataTable MostrarVentas()
        {
            SqlDataAdapter da = new SqlDataAdapter("SP_MOSTRARTABLACLIENTES", cn.LeerCadena());
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
    }
}