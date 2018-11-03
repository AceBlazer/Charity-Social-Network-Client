using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace charité
{
    public partial class MesEvenements : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] != null)
            {
                try
                {
                    connexion.cnx.Open();
                    connexion.cmd.CommandText = "select * from evenement where createur_evenement ='" + Session["id"].ToString() + "' order by date_publication_ev desc";
                    MySqlDataReader lire = connexion.cmd.ExecuteReader();
                    while(lire.Read() == true)
                    {
                        Evenement evt = new Evenement(lire[0].ToString(),lire[8].ToString(),lire[1].ToString(), Convert.ToBase64String((byte[])lire[2]),lire[11].ToString(),lire[12].ToString(),lire[9].ToString(), Convert.ToDateTime(lire[3]), Convert.ToDateTime(lire[4]),Convert.ToDateTime( lire[15]),lire[10].ToString ());
                        Label1.Text += "<div class=\"causes-list-box\"> <li><i class=\"fa fa-map-marker\"></i>" + evt.GetArrivee() + "</li><div class=\"img-holder\"><img src = \"data:image/png;base64," + evt.GetImage() + "\" alt class=\"img img-responsive\"></div><div class=\"details\"><h3>" + evt.GetTitre() + "</h3><div class=\"progress\"></div> <p>" + evt.GetDescription() + "</p> <a href = \"evenement-single.aspx?id=" + evt.GetOid() + "\" class=\"btn theme-btn\">Voir plus ...</a></div></div>";
                    }
                    connexion.cnx.Close();
                    lire.Close();
                }
                catch (Exception exp) { Response.Redirect("profil.aspx"); }

            }
            else { Response.Redirect("connecter.aspx"); }

        }
    }
}