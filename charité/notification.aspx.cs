using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace charité
{
    public partial class notification : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("connecter.aspx");
            }
            connexion.cnx.Close();
            connexion.cnx.Open();
            connexion.cmd.CommandText="select * from notification where util='"+Session["id"]+"'";
            MySqlDataReader lire = connexion.cmd.ExecuteReader();
            while (lire.Read() == true)
            {
                lbl_notif.Text += "<hr/>"+lire[4].ToString()+"<br/>"+lire[1].ToString();
            }
        }
        protected void redir(object sender, EventArgs e)
        {
            Response.Redirect("creer.aspx");
        }
    }
}