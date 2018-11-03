using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace charité
{
    public partial class notifrealtime : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["id"]==null)
            {
                Response.Redirect("connecter.aspx");
            }
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            connexion.cnx.Close();
            connexion.cnx.Open();
            connexion.cmd.CommandText = "select count(*) from notification where util='" + Session["id"].ToString() + "' and etat=0";
            MySqlDataReader lire1 = connexion.cmd.ExecuteReader();
            if (lire1.Read() == true)
            {
                lbl_nbnotif.Text = lire1[0].ToString();               
            }
            connexion.cnx.Close();
            connexion.cnx.Open();
            connexion.cmd.CommandText = "select * from notification where util='" + Session["id"].ToString() + "' and etat=0";
            MySqlDataReader lire = connexion.cmd.ExecuteReader();
            while (lire.Read() == true)
            {
                lbl_notif.Text += "<span>" + lire[4].ToString() + "</span>" + "<br/>" + lire[1].ToString() + " <hr />";
            }
            connexion.cnx.Close();
            connexion.cnx.Open();
            connexion.cmd.CommandText = "update notification set etat=1 where util='" + Session["id"].ToString() + "' and etat=0";
            connexion.cmd.ExecuteNonQuery();
        }

        protected void redir(object sender, EventArgs e)
        {
            Response.Redirect("creer.aspx");
        }
    }
}