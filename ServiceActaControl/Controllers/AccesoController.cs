using System;
using System.Web.Http;
using AD;
using System.Data;
using System.Configuration;
using ServiceActaControl.Models;
using System.Web.Http.Cors;

namespace ServiceActaControl.Controllers
{
    [RoutePrefix("api/login")]
    public class AccesoController : ApiController
    {

        [HttpPost]
        [Route("autenticar")] //http://localhost:44376/api/login/autenticar
        //{       
        //    "claveservicio"  : "$4ct42021$",
        //   "usuario" : "fiscalizador",
        //    "clave" : "123456"
        //}

        public LoginModel loginUsuario(LoginRequest login)
        {
            var secretKey = ConfigurationManager.AppSettings["CLAVE_SERV"];

            //
            LoginModel result = new LoginModel();
            AccesoDAL usuDAL = new AccesoDAL();
            DataSet Ds = new DataSet();


            if (login.claveservicio == secretKey)
            {
                Ds = usuDAL.loginUsuario(login.usuario, login.clave);
                result.codigoResultado = Int32.Parse(Ds.Tables[0].Rows[0][0].ToString());
                result.nombreResultado = Ds.Tables[0].Rows[0][1].ToString();

                if (result.codigoResultado > 0)
                {
                    result.codigoUsuario = Int32.Parse(Ds.Tables[0].Rows[0][2].ToString());
                    result.nombresyapellidos =Ds.Tables[0].Rows[0][3].ToString();
                    result.tipousuario =Ds.Tables[0].Rows[0][4].ToString();
                }
                
            }
            else
            {
                result.codigoResultado = 0;
                result.nombreResultado = "error en el la clave del servicio";
            }

            return result;
        }

        [HttpPost]
        [Route("registro")] //http://localhost:44376/api/login/registro

        //{       
        //    "claveservicio"  : "$4ct42021$",
        //    "idtipodocumento"  : 1,
        //    "numerodocumento" : "5555555",
        //    "apellidos" : "cubas",
        //    "nombres" : "wwwww",
        //    "idtipousuario" :1,
        //    "usuario" : "usuario5",
        //    "clave" : "clave"
        //}

        public RptaGeneralModel registrarUsuario(UsuarioModel usuario)
        {
            var secretKey = ConfigurationManager.AppSettings["CLAVE_SERV"];

            //
            RptaGeneralModel result = new RptaGeneralModel();
            AccesoDAL usuDAL = new AccesoDAL();
            DataSet Ds = new DataSet();


            if (usuario.claveservicio == secretKey)
            {

                Ds = usuDAL.registroUsuario(usuario.idtipodocumento,usuario.numerodocumento, usuario.apellidos, usuario.nombres,
                    usuario.idtipousuario, usuario.usuario, usuario.clave);

                result.codigoResultado = Int32.Parse(Ds.Tables[0].Rows[0][0].ToString());
                result.nombreResultado = Ds.Tables[0].Rows[0][1].ToString();

            }
            else
            {
                result.codigoResultado = 0;
                result.nombreResultado = "error en el la clave del servicio";
            }

            return result;
        }
    }
}