using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ServiceActaControl.Models
{
    public class UsuarioModel
    {
        public int idtipodocumento { get; set; }
        public string numerodocumento { get; set; }
        public string apellidos { get; set; }
        public string nombres { get; set; }
        public int idtipousuario { get; set; }
        public string usuario { get; set; }
        public string clave { get; set; }
        public string claveservicio { get; set; }
    }
}