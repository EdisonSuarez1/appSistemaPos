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
            string consulta = "select usuario.idUsuario,usuario.nombres, usuario.apellidos, usuario.correo, usuario.clave, usuario.idSucursal, " +
                              "usuario.idRol,usuario.fechaRegistro,rol.descripcion," +
                              " rol.fechaRegistro from usuario INNER JOIN rol ON usuario.idRol=rol.idRol where usuario.correo ='" + objDatos.correo + "'and usuario.clave='" + objDatos.clave + "'";
            clConexion objConexion = new clConexion();
            DataTable tblDatos = new DataTable();
            tblDatos = objConexion.mtdDesconectado(consulta);
            clUsuariosE objDatosUsuario = new clUsuariosE();

            if (tblDatos.Rows.Count == 1)
            {
                objDatosUsuario.idUsuario = int.Parse(tblDatos.Rows[0]["idUsuario"].ToString());
                objDatosUsuario.nombres = tblDatos.Rows[0]["nombres"].ToString();
                objDatosUsuario.apellidos = tblDatos.Rows[0]["apellidos"].ToString();
                objDatosUsuario.correo = tblDatos.Rows[0]["correo"].ToString();
                objDatosUsuario.clave = tblDatos.Rows[0]["clave"].ToString();
                objDatosUsuario.idSucursal = int.Parse(tblDatos.Rows[0]["idSucursal"].ToString());
                objDatosUsuario.idRol = int.Parse(tblDatos.Rows[0]["idRol"].ToString());
                objDatosUsuario.fechaRegistro = tblDatos.Rows[0]["fechaRegistro"].ToString();
                objDatosUsuario.descripcion = tblDatos.Rows[0]["descripcion"].ToString();






            }
            else
            {
                objDatosUsuario = null;
            }
            return objDatosUsuario;
        }
    }


}
