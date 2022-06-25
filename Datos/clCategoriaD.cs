using appPlantilla.Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using static appPlantilla.Datos.clConexion;

namespace appPlantilla.Datos
{
    public class clCategoriaD
    {

        public static clCategoriaD _instancia = null;

        private clCategoriaD()
        {

        }

        public static clCategoriaD Instancia
        {
            get
            {
                if (_instancia == null)
                {
                    _instancia = new clCategoriaD();
                }
                return _instancia;
            }
        }

        public List<clCategoriaE> mtdListar()
        {
            List<clCategoriaE> rptListaCategoria = new List<clCategoriaE>();
            using (SqlConnection oConexion = new SqlConnection(Conexion.CN))
            {
                SqlCommand cmd = new SqlCommand("spListarCategoria", oConexion);
                cmd.CommandType = CommandType.StoredProcedure;

                try
                {
                    oConexion.Open();
                    SqlDataReader dr = cmd.ExecuteReader();

                    while (dr.Read())
                    {
                        rptListaCategoria.Add(new clCategoriaE()
                        {
                            idCategoria = Convert.ToInt32(dr["idCategoria"].ToString()),
                            descripcion = dr["descripcion"].ToString(),
                            activo = Convert.ToBoolean(dr["activo"].ToString())

                        });
                    }
                    dr.Close();

                    return rptListaCategoria;

                }
                catch (Exception ex)
                {
                    rptListaCategoria = null;
                    return rptListaCategoria;
                }
            }
        }









        public bool mtdRegistrar(clCategoriaE oCategoria)
        {
            bool respuesta = true;
            using (SqlConnection oConexion = new SqlConnection(Conexion.CN))
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("spRegistrarCategoria", oConexion);
                    cmd.Parameters.AddWithValue("descripcion", oCategoria.descripcion);
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

        public bool mtdEditar(clCategoriaE oCategoria)
        {
            bool respuesta = true;
            using (SqlConnection oConexion = new SqlConnection(Conexion.CN))
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("spEditarCategoria", oConexion);
                    cmd.Parameters.AddWithValue("idCategoria", oCategoria.idCategoria);
                    cmd.Parameters.AddWithValue("descripcion", oCategoria.descripcion);
                    cmd.Parameters.AddWithValue("activo", oCategoria.activo);
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

        public bool mtdEliminar(int idCategoria)
        {
            bool respuesta = true;
            using (SqlConnection oConexion = new SqlConnection(Conexion.CN))
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("spEliminarCategoria", oConexion);
                    cmd.Parameters.AddWithValue("idCategoria", idCategoria);
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