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
    [RoutePrefix("api/lista")]
    public class DatosController : ApiController
    {
        [HttpPost]
        [Route("tipodocumento")] //http://localhost:44376/api/lista/tipodocumento
  
        public List<TipoDocumentoModel> listatipodocumento()
        {
            List<TipoDocumentoModel> result = new List<TipoDocumentoModel>();
            DatosDAL datosDAL = new DatosDAL();
            DataSet Ds = new DataSet();

            Ds = datosDAL.listatipodocumento();

            foreach (DataRow row in Ds.Tables[0].Rows)
            {
                TipoDocumentoModel item = new TipoDocumentoModel();

                item.idtipodocumento = Int32.Parse(row["idtipodocumento"].ToString());
                item.nombretipodocumento = row["nombre"].ToString();

                result.Add(item);
            }

            return result;
        }

        [HttpPost]
        [Route("perfil")] //http://localhost:44376/api/lista/perfil

        public List<PerfilModel> listarperfiles()
        {
            List<PerfilModel> result = new List<PerfilModel>();
            DatosDAL datosDAL = new DatosDAL();
            DataSet Ds = new DataSet();

            Ds = datosDAL.listarperfilusuario();

            foreach (DataRow row in Ds.Tables[0].Rows)
            {
                PerfilModel item = new PerfilModel();

                item.idusuarioperfil = Int32.Parse(row["idusuarioperfil"].ToString());
                item.nombre = row["nombre"].ToString();

                result.Add(item);
            }
            return result;
        }

        [HttpPost]
        [Route("clasecategoria")] //http://localhost:44376/api/lista/clasecategoria

        public List<ClaseCategoriaModel> listarclasecategoria()
        {
            List<ClaseCategoriaModel> result = new List<ClaseCategoriaModel>();
            DatosDAL datosDAL = new DatosDAL();
            DataSet Ds = new DataSet();

            Ds = datosDAL.listarclasecategoria();

            foreach (DataRow row in Ds.Tables[0].Rows)
            {
                ClaseCategoriaModel item = new ClaseCategoriaModel();

                item.idClasecategoria = Int32.Parse(row["idClasecategoria"].ToString());
                item.nombre = row["nombre"].ToString();

                result.Add(item);
            }
            return result;
        }
        ////

        [HttpPost]
        [Route("tipoinfraccion")] //http://localhost:44376/api/lista/tipoinfraccion

        public List<TipoInfraccionModel> listartipoinfraccion()
        {
            List<TipoInfraccionModel> result = new List<TipoInfraccionModel>();
            DatosDAL datosDAL = new DatosDAL();
            DataSet Ds = new DataSet();

            Ds = datosDAL.listartipoinfraccion();

            foreach (DataRow row in Ds.Tables[0].Rows)
            {
                TipoInfraccionModel item = new TipoInfraccionModel();

                item.idtipoinfraccion = Int32.Parse(row["idtipoinfraccion"].ToString());
                item.nombretipo = row["nombretipo"].ToString();

                result.Add(item);
            }
            return result;
        }


        [HttpPost]
        [Route("codigoinfraccion")] //http://localhost:44376/api/lista/codigoinfraccion
            //{       
            //    "idtipoinfraccion"  : 2
            //}

    public List<CodigoInfraModel> listarcodigoinfraccion(ListaCodigoInfraResquestModel req)
        {
            List<CodigoInfraModel> result = new List<CodigoInfraModel>();
            DatosDAL datosDAL = new DatosDAL();
            DataSet Ds = new DataSet();

            Ds = datosDAL.listarcodigoinfraccion(req.idtipoinfraccion);

            foreach (DataRow row in Ds.Tables[0].Rows)
            {
                CodigoInfraModel item = new CodigoInfraModel();

                item.idcodigoinfraccion = Int32.Parse(row["idcodigoinfraccion"].ToString());
                item.nombrecodigo = row["nombrecodigo"].ToString();

                result.Add(item);
            }
            return result;
        }

        [HttpPost]
        [Route("medidapreventiva")] //http://localhost:44376/api/lista/medidapreventiva

        public List<MedidaPreventivaModel> listarmedidapreventiva()
        {
            List<MedidaPreventivaModel> result = new List<MedidaPreventivaModel>();
            DatosDAL datosDAL = new DatosDAL();
            DataSet Ds = new DataSet();

            Ds = datosDAL.listarmedidapreventiva();

            foreach (DataRow row in Ds.Tables[0].Rows)
            {
                MedidaPreventivaModel item = new MedidaPreventivaModel();

                item.idmedidapreventiva = Int32.Parse(row["idmedidapreventiva"].ToString());
                item.nombremedida = row["nombremedida"].ToString();

                result.Add(item);
            }
            return result;
        }

        [HttpPost]
        [Route("observacion")] //http://localhost:44376/api/lista/listarobservacion

        public List<ObservacionModel> listarobservacion(ListaObsRequest req)
        {
            List<ObservacionModel> result = new List<ObservacionModel>();
            DatosDAL datosDAL = new DatosDAL();
            DataSet Ds = new DataSet();

            Ds = datosDAL.listarobservacion(req.idtipoobservacion);

            foreach (DataRow row in Ds.Tables[0].Rows)
            {
                ObservacionModel item = new ObservacionModel();

                item.idobservacionselectiva = Int32.Parse(row["idobservacionselectiva"].ToString());
                item.nombreobservacion = row["nombreobservacion"].ToString();

                result.Add(item);
            }
            return result;
        }

    }
}