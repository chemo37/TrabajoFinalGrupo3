using System;
using System.Net;
using System.Threading;
using System.Web.Http;
using AD;
using System.Data;
using System.Configuration;
using ServiceActaControl.Models;
using System.Collections.Generic;

namespace ServiceActaControl.Controllers
{
    [RoutePrefix("api/acta")]
    public class ActaController : ApiController
    {
     
        [HttpPost]
        [Route("registro")] //http://localhost:44376/api/login/registro

        //{       
        //        "fecharegistro" : "01/01/2021",
        //        "idusuario" : 10,
        //        "condapellynombre" : "apellidosnombres",
        //        "idtipodocumento" : 1,
        //        "numerodocumento" : "46393958",
        //        "direccion" : "direccion",
        //        "distrito" : "distrito",
        //        "isvehiculoautorizad" : 1,
        //        "empresaautorizada" : "emp autorizada",
        //        "ruc" : "RUC104369",
        //        "numlicenciaconducir" : "numlicconduc",
        //        "fechainfraccion" : "05/05/2021",
        //        "placarodaje" : "ABC123",
        //        "lugarinfraccion" : "lugar infra",
        //        "refenciainfraccion" : "ref infra",
        //        "distritoinfraccion" : "distrito infra",
        //        "idtipoinfraccion" : 1,
        //        "idcodigoinfraccion" : 1,
        //        "idmedidapreventiva" : 1,
        //        "manifestacioninterv" : "manifestacion",
        //        "descripcionhecho" : "descrhecho",
        //        "observacionuno" : "obs1",
        //        "observaciondos" : "obs2",
        //        "idclasecategoria" :1,
        //        "claveservicio" : "$4ct42021$"
        //}

        public RptaGeneralModel registrarActa(ActaRequestModel acta)
        {

            var secretKey = ConfigurationManager.AppSettings["CLAVE_SERV"];

            //
            RptaGeneralModel result = new RptaGeneralModel();
            ActaDAL actaDAL = new ActaDAL();
            DataSet Ds = new DataSet();


            if (acta.claveservicio == secretKey)
            {

                var fecharegistro = DateTime.Now.ToString("dd/MM/yyyy");

                Ds = actaDAL.registroActa(fecharegistro, acta.idusuario, acta.condapellynombre, acta.idtipodocumento,
                acta.numerodocumento, acta.direccion, acta.distrito, acta.isvehiculoautorizad, acta.empresaautorizada,
                acta.ruc, acta.numlicenciaconducir, acta.fechainfraccion, acta.placarodaje, acta.lugarinfraccion,
                acta.refenciainfraccion, acta.distritoinfraccion, acta.idtipoinfraccion, acta.idcodigoinfraccion,
                acta.idmedidapreventiva, acta.manifestacioninterv, acta.descripcionhecho, acta.observacionuno,
                acta.observaciondos, acta.idclasecategoria);

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

        [HttpPost]
        [Route("lista")] //http://localhost:44376/api/acta/lista
        //{       
        //        "fechainiconsulta" : "01/01/2021",
        //        "fechafinconsulta" : "01/01/2021",
        //        "claveservicio" : "$4ct42021$"
        //}
    public List<ReporteActasModel> listarActas(ListaActaRequest consulta)
        {

            var secretKey = ConfigurationManager.AppSettings["CLAVE_SERV"];

            //
            List<ReporteActasModel> result = new List<ReporteActasModel>();
            ActaDAL actaDAL = new ActaDAL();
            DataSet Ds = new DataSet();


            if (consulta.claveservicio == secretKey)
            {

                Ds = actaDAL.listarActas(consulta.fechainiconsulta, consulta.fechafinconsulta);

                foreach (DataRow row in Ds.Tables[0].Rows)
                {
                    ReporteActasModel item = new ReporteActasModel();
                    item.fecharegistro = row["FECHAREGISTRO"].ToString();
                    item.nombreusuario = row["NOMBRESUSUARIO"].ToString();
                    item.usuario = row["USUARIO"].ToString();
                    item.conductorintervenido = row["CONDUCTORINTRV"].ToString();
                    item.tipodocinterv = row["TIPODOCUMENTOINTRV"].ToString();
                    item.numerodocinterv = row["NUMDOCUMENTOINTRV"].ToString();
                    item.direccioninterv = row["DIRECCIONINTRV"].ToString();
                    item.distritointerv = row["DISTRITOINTRV"].ToString();
                    item.isvehiculoautorizado = Int32.Parse(row["ISVEHICULOAUTORIZADOINTRV"].ToString());
                    item.empresaautorizada = row["EMPAUTORIZADA"].ToString();
                    item.ruc = row["RUC"].ToString();
                    item.numlicconducir = row["LICCONDUCIR"].ToString();
                    item.fechainfraccion = row["FECINFRACCION"].ToString();
                    item.placa = row["PLACA"].ToString();
                    item.lugarinfraccion = row["LUGARINFRACCION"].ToString();
                    item.referenciainfra = row["REFERENCIAINFRA"].ToString();
                    item.distritoinfra = row["DISTRITOINFRA"].ToString();
                    item.tipoinfraccion = row["TIPOINFRACCION"].ToString();
                    item.codigoinfra = row["CODIGOINFRA"].ToString();
                    item.medidapreventiva = row["MEDIDAPREVENTIVA"].ToString();
                    item.manifestacioninterv = row["MANIFESTACIONINTERV"].ToString();
                    item.descriphecho = row["DESCRPHECHO"].ToString();
                    item.observacionuno = row["OBSUNO"].ToString();
                    item.observaciondos = row["OBSDOS"].ToString();
                    item.clasecategoria = row["CLASECATEGORIA"].ToString();

                    result.Add(item);
                }
            }
           
            return result;
        }
    }
}