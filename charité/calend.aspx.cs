using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace charité
{
    public partial class calend : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("connecter.aspx");
            }
        }
        protected void btn_deconnecter_Click(object sender, EventArgs e)
        {
            Session["id"] = null;
            Response.Redirect("connecter.aspx");
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
                lbl_nbnotif2.Text = "<span class='badge badge-default'>" + lire1[0].ToString() + "</span>";
            }
            connexion.cnx.Close();
            connexion.cnx.Open();
            connexion.cmd.CommandText = "select * from notification where util='" + Session["id"].ToString() + "' and etat=0";
            MySqlDataReader lire = connexion.cmd.ExecuteReader();
            while (lire.Read() == true)
            {
                lbl_notif.Text += "<span>" + lire[4].ToString() + "</span>" + lire[1].ToString() + " <hr />";
            }
            connexion.cnx.Close();
            connexion.cnx.Open();
            connexion.cmd.CommandText = "update notification set etat=1 where util='" + Session["id"].ToString() + "' and etat=0";
            connexion.cmd.ExecuteNonQuery();
        }

        protected void Timer2_Tick(object sender, EventArgs e)
        {
            connexion.cnx.Close();
            connexion.cnx.Open();
            connexion.cmd.CommandText = "select * from message where expediteur='" + Session["id"].ToString() + "' or recepteur='" + Session["id"].ToString() + "'";
            MySqlDataReader lire2 = connexion.cmd.ExecuteReader();
            while (lire2.Read() == true)
            {
                if (lire2[3].ToString() == Session["id"].ToString())
                {
                    lbl_message.Text = "<li class='message me no - avatar'><div class='media right'><div class='media-body'><div class='bubble'><p style = 'color: #000000' >" + lire2[1].ToString() + "</p></div></div></div></li>";
                }
                else
                {
                    lbl_message.Text = "<li class='message you'><div class='media left'><div class='media-aside'><img class='avatar' src='assets/img/avatar.png' alt='avatar'></div><div class='media-body'><div class='bubble'><p style = 'color: #000000' >" + lire2.ToString() + "</p></div></div></div></li>";
                }
            }
        }
    }
}