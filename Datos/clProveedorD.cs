using appPlantilla.Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using static appPlantilla.Datos.clConexion;

namespace appPlantilla.Datos
{
    public class clProveedorD
    {


        public static clProveedorD _instancia = null;

        private clProveedorD()
        {

        }

        public static clProveedorD Instancia
        {
            get
            {
                if (_instancia == null)
                {
                    _instancia = new clProveedorD();
                }
                return _instancia;
            }
        }

        public List<clProveedorE> mtdListar()
        {
            List<clProveedorE> rptListaProveedor = new List<clProveedorE>();
            using (SqlConnection oConexion = new SqlConnection(Conexion.CN))
            {
                SqlCommand cmd = new SqlCommand("spListarProveedor", oConexion);
                cmd.CommandType = CommandType.StoredProcedure;

                try
                {
                    oConexion.Open();
                    SqlDataReader dr = cmd.ExecuteReader();

                    while (dr.Read())
                    {
                        rptListaProveedor.Add(new clProveedorE()
                        {
                            idProveedor = Convert.ToInt32(dr["idProveedor"].ToString()),
                            nit = dr["nit"].ToString(),
                            razonSocial = dr["razonSocial"].ToString(),
                            telefono = dr["telefono"].ToString(),
                            correo = dr["correo"].ToString(),
                            direccion = dr["direccion"].ToString(),
                        });
                    }
                    dr.Close();

                    return rptListaProveedor;

                }
                catch (Exception ex)
                {
                    rptListaProveedor = null;
                    return rptListaProveedor;
                }
            }
        }

        public bool mtdRegistrar(clProveedorE oProveedor)
        {
            bool respuesta = true;
            using (SqlConnection oConexion = new SqlConnection(Conexion.CN))
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("spRegistrarProveedor", oConexion);
                    cmd.Parameters.AddWithValue("nit", oProveedor.nit);
                    cmd.Parameters.AddWithValue("razonSocial", oProveedor.razonSocial);
                    cmd.Parameters.AddWithValue("telefono", oProveedor.telefono);
                    cmd.Parameters.AddWithValue("correo", oProveedor.correo);
                    cmd.Parameters.AddWithValue("direccion", oProveedor.direccion);
                    cmd.Parameters.Add("Resultado", SqlDbType.Bit).Direction = ParameterDirection.Output;
                    cmd.CommandType = CommandType.StoredProcedure;

                    oConexion.Open();

                    cmd.ExecuteNonQuery();

                    respuesta = Convert.ToBoolean(cmd.Parameters["Resultado"].Value);

                }
                catch (Exception ex)
                {
                    respuesta = false;
                }
            }
            return respuesta;
        }


        public bool mtdEditar(clProveedorE oProveedor)
        {
            bool respuesta = true;
            using (SqlConnection oConexion = new SqlConnection(Conexion.CN))
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("spModificarProveedor", oConexion);
                    cmd.Parameters.AddWithValue("idProveedor", oProveedor.idProveedor);
                    cmd.Parameters.AddWithValue("nit", oProveedor.nit);
                    cmd.Parameters.AddWithValue("RazonSocial", oProveedor.razonSocial);
                    cmd.Parameters.AddWithValue("Telefono", oProveedor.telefono);
                    cmd.Parameters.AddWithValue("Correo", oProveedor.correo);
                    cmd.Parameters.AddWithValue("Direccion", oProveedor.direccion);
                    cmd.Parameters.Add("Resultado", SqlDbType.Bit).Direction = ParameterDirection.Output;
                    cmd.CommandType = CommandType.StoredProcedure;

                    oConexion.Open();

                    cmd.ExecuteNonQuery();

                    respuesta = Convert.ToBoolean(cmd.Parameters["Resultado"].Value);

                }
                catch (Exception ex)
                {
                    respuesta = false;
                }

            }

            return respuesta;

        }

        public bool mtdEliminar(int idProveedor)
        {
            bool respuesta = true;
            using (SqlConnection oConexion = new SqlConnection(Conexion.CN))
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("spEliminarProveedor", oConexion);
                    cmd.Parameters.AddWithValue("idProveedor", idProveedor);
                    cmd.Parameters.Add("Resultado", SqlDbType.Bit).Direction = ParameterDirection.Output;
                    cmd.CommandType = CommandType.StoredProcedure;

                    oConexion.Open();

                    cmd.ExecuteNonQuery();

                    respuesta = Convert.ToBoolean(cmd.Parameters["Resultado"].Value);

                }
                catch (Exception ex)
                {
                    respuesta = false;
                }
            }
            return respuesta;
        }



    }

}
