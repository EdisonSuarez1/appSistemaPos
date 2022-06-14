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
    public class clClienteD          
    {

        public static clClienteD _instancia = null;

        private clClienteD()
        {

        }

        public static clClienteD Instancia
        {
            get
            {
                if (_instancia == null)
                {
                    _instancia = new clClienteD();
                }
                return _instancia;
            }
        }

        public List<clClienteE> ObtenerCliente()
        {
            List<clClienteE> rptListaCliente = new List<clClienteE>();
            using (SqlConnection oConexion = new SqlConnection(Conexion.CN))
            {
                SqlCommand cmd = new SqlCommand("usp_ObtenerCliente", oConexion);
                cmd.CommandType = CommandType.StoredProcedure;

                try
                {
                    oConexion.Open();
                    SqlDataReader dr = cmd.ExecuteReader();

                    while (dr.Read())
                    {
                        rptListaCliente.Add(new clClienteE()
                        {
                            IdCliente = Convert.ToInt32(dr["IdCliente"].ToString()),
                            TipoDocumento = dr["TipoDocumento"].ToString(),
                            NumeroDocumento = dr["NumeroDocumento"].ToString(),
                            Nombre = dr["Nombre"].ToString(),
                            Direccion = dr["Direccion"].ToString(),
                            Telefono = dr["Telefono"].ToString(),
                            Activo = Convert.ToBoolean(dr["Activo"].ToString())

                        });
                    }
                    dr.Close();

                    return rptListaCliente;

                }
                catch (Exception ex)
                {
                    rptListaCliente = null;
                    return rptListaCliente;
                }
            }
        }

        public bool RegistrarCliente(clClienteE oCliente)
        {
            bool respuesta = true;
            using (SqlConnection oConexion = new SqlConnection(Conexion.CN))
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("usp_RegistrarCliente", oConexion);
                    cmd.Parameters.AddWithValue("TipoDocumento", oCliente.TipoDocumento);
                    cmd.Parameters.AddWithValue("NumeroDocumento", oCliente.NumeroDocumento);
                    cmd.Parameters.AddWithValue("Nombre", oCliente.Nombre);
                    cmd.Parameters.AddWithValue("Direccion", oCliente.Direccion);
                    cmd.Parameters.AddWithValue("Telefono", oCliente.Telefono);
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


        public bool ModificarCliente(clClienteE oCliente)
        {
            bool respuesta = true;
            using (SqlConnection oConexion = new SqlConnection(Conexion.CN))
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("usp_ModificarCliente", oConexion);
                    cmd.Parameters.AddWithValue("IdCliente", oCliente.IdCliente);
                    cmd.Parameters.AddWithValue("TipoDocumento", oCliente.TipoDocumento);
                    cmd.Parameters.AddWithValue("NumeroDocumento", oCliente.NumeroDocumento);
                    cmd.Parameters.AddWithValue("Nombre", oCliente.Nombre);
                    cmd.Parameters.AddWithValue("Direccion", oCliente.Direccion);
                    cmd.Parameters.AddWithValue("Telefono", oCliente.Telefono);
                    cmd.Parameters.AddWithValue("Activo", oCliente.Activo);
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

        public bool EliminarCliente(int IdCliente)
        {
            bool respuesta = true;
            using (SqlConnection oConexion = new SqlConnection(Conexion.CN))
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("usp_EliminarCliente", oConexion);
                    cmd.Parameters.AddWithValue("IdCliente", IdCliente);
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