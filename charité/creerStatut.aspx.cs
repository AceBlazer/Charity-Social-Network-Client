using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace charité
{
    public partial class creerStatut : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["id"]==null)
            {
                Response.Redirect("connecter.aspx");
            }
        }

        protected void creer(object sender, EventArgs e)
        {
            
            connexion.cnx.Close();
            connexion.cnx.Open();
            connexion.cmd.CommandText = "insert into statut (Oid,createur,contenu,date_publication) values ('"+Guid.NewGuid()+"','"+Session["id"].ToString()+"','"+lbl_desc.Text.ToString()+"','"+ DateTime.Today.ToString("yyyy-MM-dd HH:mm:ss")+"') ";
            int lire = connexion.cmd.ExecuteNonQuery();
            if (lire > 0)
            {
                Response.Redirect("fil.aspx");
            }
        }


    }
}