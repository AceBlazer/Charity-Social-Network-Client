using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace charité
{
    public class global
    {
        public static DataTable table { get; set; }
        public static DataTable MesCollaborateurs { get; set; }
        public static DataTable MesCollaborateursinfos { get; set; }
        public static DataTable tableoffres { get; set; }
        public static DataTable tableevt { get; set; }
        public static DataTable tableCommentsevent { get; set; }
        public static DataTable tablevarr { get; set; }
        public static DataTable tablevarrev { get; set; }
        public static DataTable tablevarrdm { get; set; }
        public static DataTable messages { get; set; }
        public static DataTable mesPub { get; set; }
        public static DataTable collPub { get; set; }
    }
}