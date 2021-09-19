using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ServiceActaControl.Models
{
    public class ActaRequestModel
    {

        public string fecharegistro { get; set; }
        public int idusuario { get; set; }
        public string condapellynombre { get; set; }
        public int idtipodocumento { get; set; }
        public string numerodocumento { get; set; }
        public string direccion { get; set; }
        public string distrito { get; set; }
        public int isvehiculoautorizad { get; set; }
        public string empresaautorizada { get; set; }
        public string ruc { get; set; }
        public string numlicenciaconducir { get; set; }
        public string fechainfraccion { get; set; }
        public string placarodaje { get; set; }
        public string lugarinfraccion { get; set; }
        public string refenciainfraccion { get; set; }
        public string distritoinfraccion { get; set; }
        public int idtipoinfraccion { get; set; }
        public int idcodigoinfraccion { get; set; }
        public int idmedidapreventiva { get; set; }
        public string manifestacioninterv { get; set; }
        public string descripcionhecho { get; set; }
        public string observacionuno { get; set; }
        public string observaciondos { get; set; }
        public int idclasecategoria { get; set; }
        public string claveservicio { get; set; }
    }
}