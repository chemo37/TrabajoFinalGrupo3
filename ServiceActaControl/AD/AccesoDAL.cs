using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace AD
{
    public class AccesoDAL
    {
        public DataSet loginUsuario(string usuario, string clave)
        {
            string CadenaConexion = "Conexion";
            SqlParameter[] Parametros = new SqlParameter[2];
            DataSet Ds = new DataSet();
            AD.ConexionSQL ObjSQL = new AD.ConexionSQL();
            try
            {
                string Sql = "PROC_USUARIO_AUTENTICAR";
                Parametros[0] = new SqlParameter("@USUARIO", System.Data.SqlDbType.VarChar);
                Parametros[0].Value = usuario;
                Parametros[1] = new SqlParameter("@PASSWORD", System.Data.SqlDbType.VarChar);
                Parametros[1].Value = clave;

                ObjSQL.CadenaConexion = CadenaConexion;
                Ds = ObjSQL.CargarDs(Sql, Parametros);
            }
            catch (Exception ex)
            {

                throw ex;
            }
            return Ds;
        }

 
        public DataSet registroUsuario(int idtipodocumento, string numerodocumento, string apellidos, string nombres,
            int idtipousuario, string usuario, string clave)
        {
            string CadenaConexion = "Conexion";
            SqlParameter[] Parametros = new SqlParameter[7];
            DataSet Ds = new DataSet();
            AD.ConexionSQL ObjSQL = new AD.ConexionSQL();
            try
            {
                string Sql = "PROC_USUARIO_REGISTRA";
                Parametros[0] = new SqlParameter("@IDTIPODOCUMENTO", System.Data.SqlDbType.Int);
                Parametros[0].Value = idtipodocumento;

                Parametros[1] = new SqlParameter("@NUMERODOCUMENTO", System.Data.SqlDbType.VarChar);
                Parametros[1].Value = numerodocumento;

                Parametros[2] = new SqlParameter("@APELLIDOS", System.Data.SqlDbType.VarChar);
                Parametros[2].Value = apellidos;

                Parametros[3] = new SqlParameter("@NOMBRES", System.Data.SqlDbType.VarChar);
                Parametros[3].Value = nombres;

                Parametros[4] = new SqlParameter("@IDTIPOUSURAIO", System.Data.SqlDbType.Int);
                Parametros[4].Value = idtipousuario;

                Parametros[5] = new SqlParameter("@USUARIO", System.Data.SqlDbType.VarChar);
                Parametros[5].Value = usuario;

                Parametros[6] = new SqlParameter("@CLAVE", System.Data.SqlDbType.VarChar);
                Parametros[6].Value = clave;

                ObjSQL.CadenaConexion = CadenaConexion;
                Ds = ObjSQL.CargarDs(Sql, Parametros);
            }
            catch (Exception ex)
            {

                throw ex;
            }
            return Ds;
        }

    }
}
