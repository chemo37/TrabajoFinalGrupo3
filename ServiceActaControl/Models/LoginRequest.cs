using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ServiceActaControl.Models
{
    public class LoginRequest
    {
        public string claveservicio { get; set; }
        public string usuario { get; set; }
        public string clave { get; set; }
        //public int codigousuario { get; set; }
    }
}