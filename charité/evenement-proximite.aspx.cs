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
    public partial class evenement_proxilite : System.Web.UI.Page
    {
        public string longit = "";
        public string lat = "";
        string distance;

        protected async void Page_Load(object sender, EventArgs e)
        {
            string adresse = "Vous êtes près de : " + "Monastir,Tunisie";
            //topbar
            if (Session["id"] != null)
            {
                lbl_nom_top.Text = " " + Session["prenom"].ToString();
                img_top.Src = Session["profilimage"].ToString();
            }
            proximitee.Text = adresse;

            connexion.cnx.Close();
            connexion.cnx.Open();
            connexion.cmd.CommandText = "select * from evenement";
            MySqlDataReader lire1 = connexion.cmd.ExecuteReader();
            global.tablevarrev = new DataTable();
            global.tablevarrev.Columns.Add("darr", typeof(string));
            global.tablevarrev.Columns.Add("usr", typeof(string));
            global.tablevarrev.Columns.Add("Oid", typeof(string));
            while (lire1.Read() == true)
            {
                global.tablevarrev.Rows.Add(lire1[12].ToString(), lire1[10].ToString(), lire1[0].ToString());
            }

            for (int i = 0; i < global.tablevarrev.Rows.Count; i++)
            {
                DataRow mydatarow = global.tablevarrev.Rows[i];
                string varrs = mydatarow["darr"].ToString();
                string usr = mydatarow["usr"].ToString();
                string id = mydatarow["Oid"].ToString();

             



                var distance1 = Geolocation.GetDistance(varrs, "Monastir", (DistanceUnit)Enum.Parse(typeof(DistanceUnit), "Kilometers"));


                distance = distance1.ToString("0.00 ") + "Km";



                if (distance1 < 40)
                {
                    connexion.cnx.Close();
                    connexion.cnx.Open();
                    connexion.cmd.CommandText = "select * from evenement where Oid='" + id + "'";
                    MySqlDataReader lire = connexion.cmd.ExecuteReader();
                    while (lire.Read())
                    {

                        lbl_ev_prox.Text += " <div class=\"col col-md-4 col-xs-6\">  <div class=\"title\"> <ul> <li><h3>" + lire[8].ToString() + "</h3></li> <li><i class=\"fa fa-map-marker\"></i>" + lire[5].ToString() + "</li>  </ul>  </div> <div class=\"img-progress\">  <div class=\"img-holder\"><img runat =\"server\" src=\"" + "data:image/png;base64," + Convert.ToBase64String((byte[])lire[2]) + "\"alt class=\"img img-responsive\" /> </div> <div class=\"progress\"> </div>  </div>   <div class=\"donate-amount\">   <ul> <li>Besoins: <span>" + lire[9].ToString() + "</span> </li> <li><i class=\"fa fa-clock-o\"></i> 95 days</li>  </ul>  </div> <div class=\"text\"> <p style=\"overflow: auto; display: inline - block; height: 2em\">" + lire[1].ToString() + "</p>  <a href = 'evenement-single.aspx?id=" + lire[0].ToString() + "' class=\"btn theme-btn\">Voir plus</a>  <br/><center>  Près de: " + distance + " </center>  </div> <br/></div> ";
                    }
                }
                else
                {

                }

            }
            lire1.Close();
            connexion.cnx.Close();





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