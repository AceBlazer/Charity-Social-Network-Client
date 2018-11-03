using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

namespace charité
{
    public class connexion
    {

        public static MySqlConnection cnx = new MySqlConnection(";Server=mysql6001.hostbuddy.com;User ID= a1afdc_base;password=basebase1;Database=db_a1afdc_base;Persist Security Info= true;Charset=utf8");
        public static MySqlCommand cmd = new MySqlCommand("", cnx);
        
        
       
    }
}

