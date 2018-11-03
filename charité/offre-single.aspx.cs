using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace charité
{
    public partial class offre_single : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                string id = Request.QueryString["id"];
                lbl_titre.Text = id.ToString();
                connexion.cnx.Close();
                connexion.cnx.Open();
                connexion.cmd.CommandText = "select * from offre where Oid='" + id.ToString() + "' ";
                MySqlDataReader lire = connexion.cmd.ExecuteReader();
                if (lire.Read() == true)
                {
                    lbl_titre.Text = lire[6].ToString();
                    lbl_details.Text = lire[1].ToString();
                    lbl_img.Text = "<img runat =\"server\" src=\"" + "data:image/png;base64," + Convert.ToBase64String((byte[])lire[2]) + "\"  height=\"600px\" width=\"800px\" />";
                    lbl_lieu.Text = lire[8].ToString();
                    lbl_date.Text = "   Publié le : " + lire[9].ToString() + " par: ";
                    string util = lire[10].ToString();
                    lire.Close();
                    connexion.cnx.Close();
                    connexion.cnx.Open();
                    connexion.cmd.CommandText = "select * from utilisateur where Oid ='" + util + "'";
                    lire = connexion.cmd.ExecuteReader();
                    lire.Read();
                    lbl_date.Text += "<a href=\"profilVue.aspx?userID=" + util + "\">" + lire[1].ToString() + " " + lire[2].ToString() + "</a>";
                }
                lire.Close();
                connexion.cnx.Close();
                connexion.cnx.Open();
                connexion.cmd.CommandText = "select * from offre order by date_offre desc ;";
                lire = connexion.cmd.ExecuteReader();
                lbl_demandes.Text = "";
                for (int i = 0; (i < 3) && (lire.Read()); i++)
                {
                    lbl_demandes.Text += "<div class=\"col col-md-4 col-xs-6\"><div class=\"title\"><ul><li><h3>" + lire[6].ToString() + "</h3></li><li><i class=\"fa fa-map-marker\"></i>" + lire[8].ToString() + "</li></ul></div><div class=\"img-progress\"><div class=\"img-holder\"><img runat=\"server\" src=\"" + "data:image/png;base64," + Convert.ToBase64String((byte[])lire[2]) + "\" alt class=\"img img-responsive\" height=\"40%\" width=\"50%\" ></div><div class=\"progress\"><div class=\"progress-bar\" data-percent=\"85\"></div></div></div><div class=\"donate-amount\"><ul><li>offre: <span>"+lire[7].ToString()+"</span></li><li><i class=\"fa fa-clock-o\"></i> 95 days</li></ul></div><div class=\"text\" ><p>" + lire[1].ToString() + "</p><a href = 'offre-single.aspx?id=" + lire[0].ToString() + "' class=\"btn theme-btn\">Voir plus</a></div></div>";

                }
                lire.Close();
                connexion.cnx.Close();
            }
            catch (Exception expt) { Response.Redirect("offres-recents.aspx"); }
        }
    }
}