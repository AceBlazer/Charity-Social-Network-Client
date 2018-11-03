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
        string ami = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["id"] == null)
            {
                Response.Redirect("connecter.aspx");
            }

            //topbar
            
                lbl_nom_top.Text = " " + Session["prenom"].ToString();
                img_top.Src = Session["profilimage"].ToString();
            

            connexion.cnx.Close();
            connexion.cnx.Open();
            connexion.cmd.CommandText = "select * from utilisateur where Oid='" + Session["id"].ToString() + "'";
            MySqlDataReader lire = connexion.cmd.ExecuteReader();
            if (lire.Read() == true || Session["id"] != null)
            {
                lbl_nom.Text = Session["nom"].ToString() + " " + Session["prenom"].ToString();
                lbl_fonction.Text = (string)Session["fonction"];
                lbl_sexe.Text = (string)Session["sexe"];
                lbl_ville.Text = (string)Session["addresse"];
                ProfileImage.ImageUrl = (string)Session["profilimage"];
                lbl_organisation.Text = (string)Session["organisation"];
                for (int i = 0; i < Convert.ToInt32(Session["nbetoiles"]); i++)
                {
                    lbl_etoiles.Text += "<i class='fa fa-star'></i>";
                }
                int c = Convert.ToInt32(Session["nbetoiles"]);
                while (c < 5)
                {
                    lbl_etoiles.Text += "<i class='fa fa-star-o'></i>";
                    c++;
                }
                lbl_cnt_demandes.Text = Session["nbdmd"].ToString();
                lbl_cont_offres.Text = Session["nboffre"].ToString();
                lbl_cont_evenements.Text = Session["nbevt"].ToString();



               
                connexion.cnx.Close();
                connexion.cnx.Open();
                connexion.cmd.CommandText = "select count(*) from notification where util='" + Session["id"].ToString() + "' and etat=0";
                MySqlDataReader lire1 = connexion.cmd.ExecuteReader();
                if (lire1.Read() == true)
                {
                    lbl_nbnotif2.Text = "<span class='badge badge-default'>" + lire1[0].ToString() + "</span>";
                }
                connexion.cnx.Close();

                lire1.Close();
                lire.Close();

            }

            //remplir
            
            connexion.cnx.Open();
            connexion.cmd.CommandText = "select * from evenement where createur_evenement='" + Session["id"].ToString() + "' order by date_publication_ev desc";
            MySqlDataReader lirec = connexion.cmd.ExecuteReader();
            while (lirec.Read()==true)
            {
                prof.Text+= "<div class='causes-list-box-wrapper' style='background-color: #FFFFFF; padding:5px'> <div class='causes-list-box'> <div class='img-progress'><div class='img-holder'> <img src = 'data:image/png;base64," + Convert.ToBase64String((byte[])lirec[2]).ToString()+"' alt class='img img-responsive'> </div></div> <div class='event-box' > <h4>"+ lirec[9].ToString()+" à <span class='location'><i class='fa fa-map-marker'></i> "+lirec[5].ToString()+"</span>  </h4>  </div>  <div class='details'>  <h3>"+lirec[8].ToString()+"</h3>  <h4>Collectés: <span>"+lirec[13].ToString()+"</span> / "+lirec[14].ToString()+"</h4> <p>"+lirec[1].ToString()+ "<br><a href = 'evenement-single.aspx?id=" + lirec[0].ToString ()+ "' class='btn theme-btn'>Voir plus</a> </p> </div> <div class='share'><span style = 'margin-left: 10px; margin-right: 10px' > Partager: </span><ul><li><a href = '#'><i class='fa fa-twitter'></i></a></li> <li><a href = '#' ><i class='fa fa-google-plus'></i></a></li> <li><a href = '#' ><i class='fa fa-facebook-square'></i></a></li> </ul> </div></div> </div> <br/>";
            }
            
            connexion.cnx.Close();
            lirec.Close();

            connexion.cnx.Open();
            connexion.cmd.CommandText = "select * from demande where createur_demande='" + Session["id"].ToString() + "' order by date_demande desc";
            MySqlDataReader lired = connexion.cmd.ExecuteReader();
            while (lired.Read() == true)
            {
                prof.Text += "<div class='causes-list-box-wrapper' style='background-color: #FFFFFF; padding:5px'> <div class='causes-list-box'> <div class='img-progress'><div class='img-holder'> <img src = 'data:image/png;base64," + Convert.ToBase64String((byte[])lired[2]).ToString() + "' alt class='img img-responsive'> </div></div> <div class='event-box' > <h4> Demande d'aide à <span class='location'><i class='fa fa-map-marker'></i> " + lired[9].ToString() + "</span>  </h4>  </div>  <div class='details'>  <h3>" + lired[7].ToString() + "</h3>  <h4>Besoins: <span>" + lired[8].ToString() + "</span> </h4> <p>" + lired[1].ToString() + "<br><a href = 'demande-single.aspx?id=" + lired[0].ToString() + "' class='btn theme-btn'>Voir plus</a> </p> </div> <div class='share'><span style = 'margin-left: 10px; margin-right: 10px' > Partager: </span><ul><li><a href = '#'><i class='fa fa-twitter'></i></a></li> <li><a href = '#' ><i class='fa fa-google-plus'></i></a></li> <li><a href = '#' ><i class='fa fa-facebook-square'></i></a></li> </ul> </div></div> </div> <br/>";
            }

            connexion.cnx.Close();
            lired.Close();

            connexion.cnx.Open();
            connexion.cmd.CommandText = "select * from offre where createur_offre='" + Session["id"].ToString() + "' order by date_offre desc";
            MySqlDataReader lireo = connexion.cmd.ExecuteReader();
            while (lireo.Read() == true)
            {
                prof.Text += "<div class='causes-list-box-wrapper' style='background-color: #FFFFFF; padding:5px'> <div class='causes-list-box'> <div class='img-holder'> <img src = 'data:image/png;base64," + Convert.ToBase64String((byte[])lireo[2]).ToString() + "' alt class='img img-responsive'> </div> <div class='event-box' > <h4> Demande d'aide à <span class='location'><i class='fa fa-map-marker'></i> " + lireo[9].ToString() + "</span>  </h4>  </div>  <div class='details'>  <h3>" + lireo[7].ToString() + "</h3>  <h4>Valeur: <span>" + lireo[8].ToString() + "</span> </h4> <p>" + lireo[1].ToString() + "<br><a href = 'offre-single.aspx?id=" + lireo[0].ToString() + "' class='btn theme-btn'>Voir plus</a> </p> </div> <div class='share'><span style = 'margin-left: 10px; margin-right: 10px' > Partager: </span><ul><li><a href = '#'><i class='fa fa-twitter'></i></a></li> <li><a href = '#' ><i class='fa fa-google-plus'></i></a></li> <li><a href = '#' ><i class='fa fa-facebook-square'></i></a></li> </ul> </div></div> </div> <br/>";
            }

            connexion.cnx.Close();
            lireo.Close();

            connexion.cnx.Open();
            connexion.cmd.CommandText = "select * from statut where createur='" + Session["id"].ToString() + "' order by date_publication desc";
            MySqlDataReader lires = connexion.cmd.ExecuteReader();
            while (lires.Read() == true)
            {
                prof.Text += "<div class='causes-list-box-wrapper' style='background-color: #FFFFFF; padding:5px'> <div class='causes-list-box'> <div class='event-box' > <h4> Statut </h4>  </div>  <div class='details'> <p>" + lires[2].ToString() + "</div> <div class='share'><span style = 'margin-left: 10px; margin-right: 10px' > Partager: </span><ul><li><a href = '#'><i class='fa fa-twitter'></i></a></li> <li><a href = '#' ><i class='fa fa-google-plus'></i></a></li> <li><a href = '#' ><i class='fa fa-facebook-square'></i></a></li> </ul> </div></div> </div> <br/>";
            }

            connexion.cnx.Close();
            lires.Close();

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

        protected void redirevt(object sender, EventArgs e)
        {
            Response.Redirect("creer.aspx");
        }
        protected void redirstatut(object sender, EventArgs e)
        {
            Response.Redirect("creerStatut.aspx");
        }
        protected void redirdmd(object sender, EventArgs e)
        {
            Response.Redirect("creerDemande.aspx");
        }
        protected void rediroffre(object sender, EventArgs e)
        {
            Response.Redirect("creerOffre.aspx");
        }







    }
    }
