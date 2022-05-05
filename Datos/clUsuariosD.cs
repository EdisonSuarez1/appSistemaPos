using appPlantilla.Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace appPlantilla.Datos
{
    public class clUsuariosD
    {
        public clUsuariosE mtdLogin(clUsuariosE objDatos)
        {
            string consulta = "select * from usuario where correo='" + objDatos.correo + "'and clave='" + objDatos.clave + "'";
            clConexion objConexion = new clConexion();
            DataTable tblDatos = new DataTable();
            tblDatos = objConexion.mtdDesconectado(consulta);
            clUsuariosE objDatosUsuario = new clUsuariosE();

            if (tblDatos.Rows.Count == 1)
            {
                objDatosUsuario.idUsuario = int.Parse(tblDatos.Rows[0]["idUsuario"].ToString());
                objDatosUsuario.correo = tblDatos.Rows[0]["correo"].ToString();
                objDatosUsuario.clave = tblDatos.Rows[0]["clave"].ToString();


            }
            else
            {
                objDatosUsuario = null;
            }
            return objDatosUsuario;
        }
    }


}
