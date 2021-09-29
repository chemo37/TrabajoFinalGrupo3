using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace AD
{
    public class DatosDAL
    {
        public DataSet listatipodocumento()
        {
            string CadenaConexion = "Conexion";
            SqlParameter[] Parametros = new SqlParameter[1];
            DataSet Ds = new DataSet();
            AD.ConexionSQL ObjSQL = new AD.ConexionSQL();
            try
            {
                string Sql = "PROC_LISTA_TIPO_DOCUMENTO";
                Parametros[0] = new SqlParameter("@IDESTADO", System.Data.SqlDbType.Int);
                Parametros[0].Value = 0;
                //Parametros[1] = new SqlParameter("@PASSWORD", System.Data.SqlDbType.VarChar);
                //Parametros[1].Value = clave;

                ObjSQL.CadenaConexion = CadenaConexion;
                Ds = ObjSQL.CargarDs(Sql, Parametros);
            }
            catch (Exception ex)
            {

                throw ex;
            }
            return Ds;
        }

        public DataSet listarperfilusuario()
        {
            string CadenaConexion = "Conexion";
            SqlParameter[] Parametros = new SqlParameter[1];
            DataSet Ds = new DataSet();
            AD.ConexionSQL ObjSQL = new AD.ConexionSQL();
            try
            {
                string Sql = "PROC_LISTA_PERFIL";
                Parametros[0] = new SqlParameter("@IDESTADO", System.Data.SqlDbType.Int);
                Parametros[0].Value = 0;
            

                ObjSQL.CadenaConexion = CadenaConexion;
                Ds = ObjSQL.CargarDs(Sql, Parametros);
            }
            catch (Exception ex)
            {

                throw ex;
            }
            return Ds;
        }

        public DataSet listarclasecategoria()
        {
            string CadenaConexion = "Conexion";
            SqlParameter[] Parametros = new SqlParameter[1];
            DataSet Ds = new DataSet();
            AD.ConexionSQL ObjSQL = new AD.ConexionSQL();
            try
            {
                string Sql = "PROC_LISTA_CLASECAT";
                Parametros[0] = new SqlParameter("@IDESTADO", System.Data.SqlDbType.Int);
                Parametros[0].Value = 0;


                ObjSQL.CadenaConexion = CadenaConexion;
                Ds = ObjSQL.CargarDs(Sql, Parametros);
            }
            catch (Exception ex)
            {

                throw ex;
            }
            return Ds;
        }
        //////////////////////
        ///
        public DataSet listartipoinfraccion()
        {
            string CadenaConexion = "Conexion";
            SqlParameter[] Parametros = new SqlParameter[1];
            DataSet Ds = new DataSet();
            AD.ConexionSQL ObjSQL = new AD.ConexionSQL();
            try
            {
                string Sql = "PROC_LISTA_TIPOINFRA";
                Parametros[0] = new SqlParameter("@IDESTADO", System.Data.SqlDbType.Int);
                Parametros[0].Value = 0;


                ObjSQL.CadenaConexion = CadenaConexion;
                Ds = ObjSQL.CargarDs(Sql, Parametros);
            }
            catch (Exception ex)
            {

                throw ex;
            }
            return Ds;
        }

        public DataSet listarcodigoinfraccion(int idtipoinfra)
        {
            string CadenaConexion = "Conexion";
            SqlParameter[] Parametros = new SqlParameter[1];
            DataSet Ds = new DataSet();
            AD.ConexionSQL ObjSQL = new AD.ConexionSQL();
            try
            {
                string Sql = "PROC_LISTA_CODIGOINFRA";
                Parametros[0] = new SqlParameter("@IDTIPOINFRACCION", System.Data.SqlDbType.Int);
                Parametros[0].Value = idtipoinfra;


                ObjSQL.CadenaConexion = CadenaConexion;
                Ds = ObjSQL.CargarDs(Sql, Parametros);
            }
            catch (Exception ex)
            {

                throw ex;
            }
            return Ds;
        }

        public DataSet listarmedidapreventiva()
        {
            string CadenaConexion = "Conexion";
            SqlParameter[] Parametros = new SqlParameter[1];
            DataSet Ds = new DataSet();
            AD.ConexionSQL ObjSQL = new AD.ConexionSQL();
            try
            {
                string Sql = "PROC_LISTA_MEDIDAPREV";
                Parametros[0] = new SqlParameter("@IDESTADO", System.Data.SqlDbType.Int);
                Parametros[0].Value = 0;


                ObjSQL.CadenaConexion = CadenaConexion;
                Ds = ObjSQL.CargarDs(Sql, Parametros);
            }
            catch (Exception ex)
            {

                throw ex;
            }
            return Ds;
        }

        public DataSet listarobservacion(int idtipoobs)
        {
            string CadenaConexion = "Conexion";
            SqlParameter[] Parametros = new SqlParameter[1];
            DataSet Ds = new DataSet();
            AD.ConexionSQL ObjSQL = new AD.ConexionSQL();
            try
            {
                string Sql = "PROC_LISA_OBSUNO";
                Parametros[0] = new SqlParameter("@IDTIPOOBS", System.Data.SqlDbType.Int);
                Parametros[0].Value = idtipoobs;


                ObjSQL.CadenaConexion = CadenaConexion;
                Ds = ObjSQL.CargarDs(Sql, Parametros);
            }
            catch (Exception ex)
            {

                throw ex;
            }
            return Ds;
        }

        public DataSet listausuarios()
        {
            string CadenaConexion = "Conexion";
            SqlParameter[] Parametros = new SqlParameter[1];
            DataSet Ds = new DataSet();
            AD.ConexionSQL ObjSQL = new AD.ConexionSQL();
            try
            {
                string Sql = "PROC_USUARIO_LISTA";
                Parametros[0] = new SqlParameter("@IDTIPODOCUMENTO", System.Data.SqlDbType.Int);
                Parametros[0].Value = 0;

                ObjSQL.CadenaConexion = CadenaConexion;
                Ds = ObjSQL.CargarDs(Sql, Parametros);
            }
            catch (Exception ex)
            {

                throw ex;
            }
            return Ds;
        }


        public DataSet getDataConductorHabilitado(string nrodocumento)
        {
            string CadenaConexion = "Conexion";
            SqlParameter[] Parametros = new SqlParameter[1];
            DataSet Ds = new DataSet();
            AD.ConexionSQL ObjSQL = new AD.ConexionSQL();
            try
            {
                string Sql = "PROC_GET_CONDUCTORHABILITADO";
                Parametros[0] = new SqlParameter("@NRODOCUMENTO", System.Data.SqlDbType.VarChar);
                Parametros[0].Value = nrodocumento;
                //
                ObjSQL.CadenaConexion = CadenaConexion;
                Ds = ObjSQL.CargarDs(Sql, Parametros);
            }
            catch (Exception ex)
            {

                throw ex;
            }
            return Ds;
        }

        public DataSet getDataVehiculoHabilitado(string placa)
        {
            string CadenaConexion = "Conexion";
            SqlParameter[] Parametros = new SqlParameter[1];
            DataSet Ds = new DataSet();
            AD.ConexionSQL ObjSQL = new AD.ConexionSQL();
            try
            {
                string Sql = "PROC_GET_PLACAHABILITADA";
                Parametros[0] = new SqlParameter("@PLACA", System.Data.SqlDbType.VarChar);
                Parametros[0].Value = placa;

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
