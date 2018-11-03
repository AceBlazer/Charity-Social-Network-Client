using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace charité
{
    public partial class demande_coll : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("connecter.aspx");
            }

            //topbar
            if (Session["id"] != null)
            {
                lbl_nom_top.Text = " " + Session["prenom"].ToString();
                img_top.Src = Session["profilimage"].ToString();
            }




            for (int i = 0; i < global.MesCollaborateurs.Rows.Count; i++)
            {

                connexion.cnx.Open();
                DataRow mydatarow = global.MesCollaborateurs.Rows[i];
                string utili = mydatarow["Oid"].ToString();
                DataRow mydatarowinfos = global.MesCollaborateursinfos.Rows[i];
                string nom = mydatarowinfos["nom"].ToString();
                string prenom = mydatarowinfos["prenom"].ToString();

                connexion.cmd.CommandText = "select * from demande where createur_demande='" + utili + "'";
                MySqlDataReader lire = connexion.cmd.ExecuteReader();
                if (lire.Read() != false)
                {
                    lbl_dmd.Text += "<h3>Les demandes d'aide Creés par : <a href=\"profilVue.aspx?userID=" + utili + "\">" + prenom + " " + nom + "</a><h3/><hr/>";
                    lbl_dmd.Text += " <div class=\"col col-md-4 col-xs-6\">  <div class=\"title\"> <ul> <li><h3>" + lire[7].ToString() + "</h3></li> <li><i class=\"fa fa-map-marker\"></i>" + lire[9].ToString() + "</li>  </ul>  </div> <div class=\"img-progress\">  <div class=\"img-holder\"><img runat =\"server\" src=\"" + "data:image/png;base64," + Convert.ToBase64String((byte[])lire[2]) + "\"alt class=\"img img-responsive\" /> </div> <div class=\"progress\"> </div>  </div>   <div class=\"donate-amount\">   <ul> <li>Besoins: <span>" + lire[8].ToString() + "</span> </li> <li><i class=\"fa fa-clock-o\"></i> 95 days</li>  </ul>  </div> <div class=\"text\"> <p style=\"overflow: auto; display: inline - block; height: 2em\">" + lire[1].ToString() + "</p>  <a href = 'demande-single.aspx?id=" + lire[0].ToString() + "' class=\"btn theme-btn\">Voir plus</a>   </div> <br/></div> ";
                }
                while (lire.Read())
                {

                    lbl_dmd.Text += " <div class=\"col col-md-4 col-xs-6\">  <div class=\"title\"> <ul> <li><h3>" + lire[7].ToString() + "</h3></li> <li><i class=\"fa fa-map-marker\"></i>" + lire[9].ToString() + "</li>  </ul>  </div> <div class=\"img-progress\">  <div class=\"img-holder\"><img runat =\"server\" src=\"" + "data:image/png;base64," + Convert.ToBase64String((byte[])lire[2]) + "\"alt class=\"img img-responsive\" /> </div> <div class=\"progress\"> </div>  </div>   <div class=\"donate-amount\">   <ul> <li>Besoins: <span>" + lire[8].ToString() + "</span> </li> <li><i class=\"fa fa-clock-o\"></i> 95 days</li>  </ul>  </div> <div class=\"text\"> <p style=\"overflow: auto; display: inline - block; height: 2em\">" + lire[1].ToString() + "</p>  <a href = 'demande-single.aspx?id=" + lire[0].ToString() + "' class=\"btn theme-btn\">Voir plus</a>   </div> <br/></div> ";

                }
                connexion.cnx.Close();

            }
        }

             protected void redir(object sender, EventArgs e)
        {
            Response.Redirect("creer.aspx");
        }

        protected void btn_deconnecter_Click(object sender, EventArgs e)
        {
            connexion.cnx.Close();
            connexion.cnx.Open();
            connexion.cmd.CommandText = "update utilisateur set etat=0 where Oid='" + Session["id"] + "'";
            connexion.cmd.ExecuteNonQuery();
            connexion.cnx.Close();
            Session["id"] = null;
            Response.Redirect("connecter.aspx");
        }


    }
    
}