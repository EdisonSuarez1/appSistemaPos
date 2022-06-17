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

        public List<clClienteE> mtdListar()
        {
            List<clClienteE> rptListaCliente = new List<clClienteE>();
            using (SqlConnection oConexion = new SqlConnection(Conexion.CN))
            {
                SqlCommand cmd = new SqlCommand("spListarCliente", oConexion);
                cmd.CommandType = CommandType.StoredProcedure;

                try
                {
                    oConexion.Open();
                    SqlDataReader dr = cmd.ExecuteReader();

                    while (dr.Read())
                    {
                        rptListaCliente.Add(new clClienteE()
                        {
                            idCliente = Convert.ToInt32(dr["idCliente"].ToString()),
                            tipoDocumento = dr["tipoDocumento"].ToString(),
                            numeroDocumento = dr["numeroDocumento"].ToString(),
                            nombre = dr["nombre"].ToString(),
                            direccion = dr["direccion"].ToString(),
                            telefono = dr["telefono"].ToString(),

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





        public bool mtdRegistrar(clClienteE oCliente)
        {
            bool respuesta = true;
            using (SqlConnection oConexion = new SqlConnection(Conexion.CN))
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("spRegistrarCliente", oConexion);
                    cmd.Parameters.AddWithValue("tipoDocumento", oCliente.tipoDocumento);
                    cmd.Parameters.AddWithValue("numeroDocumento", oCliente.numeroDocumento);
                    cmd.Parameters.AddWithValue("nombre", oCliente.nombre);
                    cmd.Parameters.AddWithValue("direccion", oCliente.direccion);
                    cmd.Parameters.AddWithValue("telefono", oCliente.telefono);
                    cmd.Parameters.Add("Resultado", SqlDbType.Bit).Direction = ParameterDirection.Output;
                    cmd.CommandType = CommandType.StoredProcedure;

                    oConexion.Open();

                    cmd.ExecuteNonQuery();

                }
                catch (Exception ex)
                {
                    respuesta = false;
                }
            }
            return respuesta;
        }


        public bool mtdEditar(clClienteE oCliente)
        {
            bool respuesta = true;
            using (SqlConnection oConexion = new SqlConnection(Conexion.CN))
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("spEditarCliente", oConexion);
                    cmd.Parameters.AddWithValue("idCliente", oCliente.idCliente);
                    cmd.Parameters.AddWithValue("tipoDocumento", oCliente.tipoDocumento);
                    cmd.Parameters.AddWithValue("numeroDocumento", oCliente.numeroDocumento);
                    cmd.Parameters.AddWithValue("nombre", oCliente.nombre);
                    cmd.Parameters.AddWithValue("direccion", oCliente.direccion);
                    cmd.Parameters.AddWithValue("telefono", oCliente.telefono);
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

        public bool mtdEliminar(int idCliente)
        {
            bool respuesta = true;
            using (SqlConnection oConexion = new SqlConnection(Conexion.CN))
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("spEliminarCliente", oConexion);
                    cmd.Parameters.AddWithValue("idCliente", idCliente);
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