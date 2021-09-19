using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ServiceActaControl.Models
{
    public class ReporteActasModel
    {
		public string fecharegistro { get; set; }
		public string nombreusuario { get; set; }
		public string usuario { get; set; }
		public string conductorintervenido { get; set; }
		public string tipodocinterv { get; set; }
		public string numerodocinterv { get; set; }
		public string direccioninterv { get; set; }
		public string distritointerv { get; set; }
		public int isvehiculoautorizado { get; set; }
		public string empresaautorizada { get; set; }
		public string ruc { get; set; }
		public string numlicconducir { get; set; }
		public string fechainfraccion { get; set; }
		public string placa { get; set; }
		public string lugarinfraccion { get; set; }
		public string referenciainfra { get; set; }
		public string distritoinfra { get; set; }
		public string tipoinfraccion { get; set; }
		public string codigoinfra { get; set; }
		public string medidapreventiva { get; set; }
		public string manifestacioninterv { get; set; }
		public string descriphecho { get; set; }
		public string observacionuno { get; set; }
		public string observaciondos { get; set; }
		public string clasecategoria { get; set; }
		public int codigoResultado { get; set; }
		public string nombreresultado { get; set; }
	}
}