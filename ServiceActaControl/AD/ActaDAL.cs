using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace AD
{
    public class ActaDAL
    {
        public DataSet registroActa(string fecharegistro, int idusuario, string condapellynombre, int idtipodocumento, 
            string numerodocumento, string direccion, string distrito, int isvehiculoautorizad, string empresaautorizada,
            string ruc, string numlicenciaconducir, string fechainfraccion, string placarodaje, string lugarinfraccion,
            string refenciainfraccion, string distritoinfraccion, int idtipoinfraccion, int idcodigoinfraccion,
            int idmedidapreventiva, string manifestacioninterv, string descripcionhecho, string observacionuno,
            string observaciondos, int idclasecategoria)
        {
            string CadenaConexion = "Conexion";
            SqlParameter[] Parametros = new SqlParameter[24];
            DataSet Ds = new DataSet();
            AD.ConexionSQL ObjSQL = new AD.ConexionSQL();
            try
            {
                string Sql = "PROC_REGISTRA_ACTA";
                Parametros[0] = new SqlParameter("@fecharegistro", System.Data.SqlDbType.Date);
                Parametros[0].Value = fecharegistro;

                Parametros[1] = new SqlParameter("@idusuario", System.Data.SqlDbType.Int);
                Parametros[1].Value = idusuario;

                Parametros[2] = new SqlParameter("@condapellynombre", System.Data.SqlDbType.VarChar);
                Parametros[2].Value = condapellynombre;

                Parametros[3] = new SqlParameter("@idtipodocumento", System.Data.SqlDbType.Int);
                Parametros[3].Value = idtipodocumento;

                Parametros[4] = new SqlParameter("@numerodocumento", System.Data.SqlDbType.VarChar);
                Parametros[4].Value = numerodocumento;

                Parametros[5] = new SqlParameter("@direccion", System.Data.SqlDbType.VarChar);
                Parametros[5].Value = direccion;

                Parametros[6] = new SqlParameter("@distrito", System.Data.SqlDbType.VarChar);
                Parametros[6].Value = distrito;

                Parametros[7] = new SqlParameter("@isvehiculoautorizad", System.Data.SqlDbType.Int);
                Parametros[7].Value = isvehiculoautorizad;

                Parametros[8] = new SqlParameter("@empresaautorizada", System.Data.SqlDbType.VarChar);
                Parametros[8].Value = empresaautorizada;

                Parametros[9] = new SqlParameter("@ruc", System.Data.SqlDbType.VarChar);
                Parametros[9].Value = ruc;

                Parametros[10] = new SqlParameter("@numlicenciaconducir", System.Data.SqlDbType.VarChar);
                Parametros[10].Value = numlicenciaconducir;

                Parametros[11] = new SqlParameter("@fechainfraccion", System.Data.SqlDbType.Date);
                Parametros[11].Value = fechainfraccion;

                Parametros[12] = new SqlParameter("@placarodaje", System.Data.SqlDbType.VarChar);
                Parametros[12].Value = placarodaje;

                Parametros[13] = new SqlParameter("@lugarinfraccion", System.Data.SqlDbType.VarChar);
                Parametros[13].Value = lugarinfraccion;

                Parametros[14] = new SqlParameter("@refenciainfraccion", System.Data.SqlDbType.VarChar);
                Parametros[14].Value = refenciainfraccion;

                Parametros[15] = new SqlParameter("@distritoinfraccion", System.Data.SqlDbType.VarChar);
                Parametros[15].Value = distritoinfraccion;

                Parametros[16] = new SqlParameter("@idtipoinfraccion", System.Data.SqlDbType.Int);
                Parametros[16].Value = idtipoinfraccion;

                Parametros[17] = new SqlParameter("@idcodigoinfraccion", System.Data.SqlDbType.Int);
                Parametros[17].Value = idcodigoinfraccion;

                Parametros[18] = new SqlParameter("@idmedidapreventiva", System.Data.SqlDbType.Int);
                Parametros[18].Value = idmedidapreventiva;

                Parametros[19] = new SqlParameter("@manifestacioninterv", System.Data.SqlDbType.VarChar);
                Parametros[19].Value = manifestacioninterv;

                Parametros[20] = new SqlParameter("@descripcionhecho", System.Data.SqlDbType.VarChar);
                Parametros[20].Value = descripcionhecho;

                Parametros[21] = new SqlParameter("@observacionuno", System.Data.SqlDbType.VarChar);
                Parametros[21].Value = observacionuno;

                Parametros[22] = new SqlParameter("@observaciondos", System.Data.SqlDbType.VarChar);
                Parametros[22].Value = observaciondos;

                Parametros[23] = new SqlParameter("@idclasecategoria", System.Data.SqlDbType.Int);
                Parametros[23].Value = idclasecategoria;

                ObjSQL.CadenaConexion = CadenaConexion;
                Ds = ObjSQL.CargarDs(Sql, Parametros);
            }
            catch (Exception ex)
            {

                throw ex;
            }
            return Ds;
        }


        public DataSet listarActas(string fechainiconsulta, string fechafinconsulta)
        {
            string CadenaConexion = "Conexion";
            SqlParameter[] Parametros = new SqlParameter[2];
            DataSet Ds = new DataSet();
            AD.ConexionSQL ObjSQL = new AD.ConexionSQL();
            try
            {
                string Sql = "PROC_LISTAR_ACTAS";
                Parametros[0] = new SqlParameter("@FECHAINI", System.Data.SqlDbType.Date);
                Parametros[0].Value = fechainiconsulta;

                Parametros[1] = new SqlParameter("@FECHAFIN", System.Data.SqlDbType.Date);
                Parametros[1].Value = fechafinconsulta;

               
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
