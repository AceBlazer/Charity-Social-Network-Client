using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;

namespace charité
{
    public partial class profil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["id"] == null)
            {
                Response.Redirect("connecter.aspx");
            }
            connexion.cnx.Close();
            connexion.cnx.Open();
            connexion.cmd.CommandText = "select * from utilisateur where Oid='" + Session["id"].ToString() + "'";
            MySqlDataReader lire = connexion.cmd.ExecuteReader();
            if (lire.Read() == true || Session["id"]!=null )
            {
                lbl_nom.Text = Session["nom"].ToString() + " " + Session["prenom"].ToString();
                lbl_fonction.Text = (string)Session["fonction"];
                lbl_sexe.Text = (string)Session["sexe"];
                lbl_ville.Text = (string)Session["addresse"];
                ProfileImage.ImageUrl = (string)Session["profilimage"];

            }

      

        }
        protected void btn_deconnecter_Click(object sender, EventArgs e)
        {
            Session["id"] = null;
            Response.Redirect("connecter.aspx");
        }

    
    }
}