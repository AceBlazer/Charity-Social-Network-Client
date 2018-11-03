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
    public partial class profilVue : System.Web.UI.Page
    {
        public int amis;
        protected void Page_Load(object sender, EventArgs e)
        {
            amis = -1;
            string id = Request.QueryString["userID"];
            connexion.cnx.Close();
            connexion.cnx.Open();
            connexion.cmd.CommandText = "select * from utilisateur where Oid='" + id.ToString() + "'";
            MySqlDataReader lire = connexion.cmd.ExecuteReader();
            if (lire.Read() == true)
            {
                lbl_nom.Text = lire[2].ToString() + " " + lire[1].ToString();
                lbl_fonction.Text = lire[5].ToString();
                lbl_sexe.Text = lire[3].ToString();
                lbl_ville.Text = lire[6].ToString();
                //lbl_profileImage.Text = "<div class=\"img-holder\"><img runat =\"server\" src=\"" + "data:image/png;base64," + Convert.ToBase64String((byte[])lire[21]) + "\" alt class=\"img img-responsive\" height=\"150px\" width=\"150px\" /></div>";
                ProfileImage.ImageUrl = "data:image/png;base64," + Convert.ToBase64String((byte[])lire[21]);
            }
            connexion.cnx.Close();
            if (Session["id"] != null)
            {
                int compteur = 0;
                
                if (global.MesCollaborateurs.Rows.Count > 0) {
                    DataRow myrow = global.MesCollaborateurs.Rows[compteur];
                    while ((myrow[compteur].ToString() != Request.QueryString["userID"]) && (compteur < global.MesCollaborateurs.Rows.Count))
                    compteur++;
                if (myrow["Oid"].ToString()==Request.QueryString["userID"] && myrow["Etat_Amitie"].ToString()=="Amis")
                {
                    Ajouter.Text = "AMIS";
                    amis = compteur;
                }
                else 
                {
                    if (myrow["Oid"].ToString() == Request.QueryString["userID"] && myrow["Etat_Amitie"].ToString() == "En attente1")
                    {
                            Ajouter.Text = "ACCEPTER INVITATION";
                            amis = compteur;
                    }
                    else {if (myrow["Oid"].ToString() == Request.QueryString["userID"] && myrow["Etat_Amitie"].ToString() == "En attente2")
                        {  Ajouter.Text = "ANNULER INVITATION";
                                amis = compteur;
                        }
                            else { Ajouter.Text = "AJOUTER"; }
                        }
                }
                }
             if(global.MesCollaborateurs.Rows.Count == 0)
                    Ajouter.Text = "AJOUTER";
            }
            else
            {
                Ajouter.Visible = false;
            }


            //remplir

            connexion.cnx.Open();
            connexion.cmd.CommandText = "select * from evenement where createur_evenement='" + id.ToString() + "' order by date_publication_ev desc";
            MySqlDataReader lirec = connexion.cmd.ExecuteReader();
            while (lirec.Read() == true)
            {
                prof.Text += "<div class='causes-list-box-wrapper' style='background-color: #FFFFFF; padding:5px'> <div class='causes-list-box'> <div class='img-progress'><div class='img-holder'> <img src = 'data:image/png;base64," + Convert.ToBase64String((byte[])lirec[2]).ToString() + "' alt class='img img-responsive'> </div></div> <div class='event-box' > <h4>" + lirec[9].ToString() + " à <span class='location'><i class='fa fa-map-marker'></i> " + lirec[5].ToString() + "</span>  </h4>  </div>  <div class='details'>  <h3>" + lirec[8].ToString() + "</h3>  <h4>Collectés: <span>" + lirec[13].ToString() + "</span> / " + lirec[14].ToString() + "</h4> <p>" + lirec[1].ToString() + "<br><a href = 'evenement-single.aspx?id=" + lirec[0].ToString() + "' class='btn theme-btn'>Voir plus</a> </p> </div> <div class='share'><span style = 'margin-left: 10px; margin-right: 10px' > Partager: </span><ul><li><a href = '#'><i class='fa fa-twitter'></i></a></li> <li><a href = '#' ><i class='fa fa-google-plus'></i></a></li> <li><a href = '#' ><i class='fa fa-facebook-square'></i></a></li> </ul> </div></div> </div> <br/>";
            }

            connexion.cnx.Close();
            lirec.Close();

            connexion.cnx.Open();
            connexion.cmd.CommandText = "select * from demande where createur_demande='" + id.ToString() + "' order by date_demande desc";
            MySqlDataReader lired = connexion.cmd.ExecuteReader();
            while (lired.Read() == true)
            {
                prof.Text += "<div class='causes-list-box-wrapper' style='background-color: #FFFFFF; padding:5px'> <div class='causes-list-box'> <div class='img-progress'><div class='img-holder'> <img src = 'data:image/png;base64," + Convert.ToBase64String((byte[])lired[2]).ToString() + "' alt class='img img-responsive'> </div></div> <div class='event-box' > <h4> Demande d'aide à <span class='location'><i class='fa fa-map-marker'></i> " + lired[9].ToString() + "</span>  </h4>  </div>  <div class='details'>  <h3>" + lired[7].ToString() + "</h3>  <h4>Besoins: <span>" + lired[8].ToString() + "</span> </h4> <p>" + lired[1].ToString() + "<br><a href = 'demande-single.aspx?id=" + lired[0].ToString() + "' class='btn theme-btn'>Voir plus</a> </p> </div> <div class='share'><span style = 'margin-left: 10px; margin-right: 10px' > Partager: </span><ul><li><a href = '#'><i class='fa fa-twitter'></i></a></li> <li><a href = '#' ><i class='fa fa-google-plus'></i></a></li> <li><a href = '#' ><i class='fa fa-facebook-square'></i></a></li> </ul> </div></div> </div> <br/>";
            }

            connexion.cnx.Close();
            lired.Close();

            connexion.cnx.Open();
            connexion.cmd.CommandText = "select * from offre where createur_offre='" + id.ToString() + "' order by date_offre desc";
            MySqlDataReader lireo = connexion.cmd.ExecuteReader();
            while (lireo.Read() == true)
            {
                prof.Text += "<div class='causes-list-box-wrapper' style='background-color: #FFFFFF; padding:5px'> <div class='causes-list-box'> <div class='img-holder'> <img src = 'data:image/png;base64," + Convert.ToBase64String((byte[])lireo[2]).ToString() + "' alt class='img img-responsive'> </div> <div class='event-box' > <h4> Demande d'aide à <span class='location'><i class='fa fa-map-marker'></i> " + lireo[9].ToString() + "</span>  </h4>  </div>  <div class='details'>  <h3>" + lireo[7].ToString() + "</h3>  <h4>Valeur: <span>" + lireo[8].ToString() + "</span> </h4> <p>" + lireo[1].ToString() + "<br><a href = 'offre-single.aspx?id=" + lireo[0].ToString() + "' class='btn theme-btn'>Voir plus</a> </p> </div> <div class='share'><span style = 'margin-left: 10px; margin-right: 10px' > Partager: </span><ul><li><a href = '#'><i class='fa fa-twitter'></i></a></li> <li><a href = '#' ><i class='fa fa-google-plus'></i></a></li> <li><a href = '#' ><i class='fa fa-facebook-square'></i></a></li> </ul> </div></div> </div> <br/>";
            }

            connexion.cnx.Close();
            lireo.Close();

            connexion.cnx.Open();
            connexion.cmd.CommandText = "select * from statut where createur='" + id.ToString() + "' order by date_publication desc";
            MySqlDataReader lires = connexion.cmd.ExecuteReader();
            while (lires.Read() == true)
            {
                prof.Text += "<div class='causes-list-box-wrapper' style='background-color: #FFFFFF; padding:5px'> <div class='causes-list-box'> <div class='img-holder'> <img src = 'data:image/png;base64," + Convert.ToBase64String((byte[])lires[4]).ToString() + "' alt class='img img-responsive'> </div> <div class='event-box' > <h4> Statut </h4>  </div>  <div class='details'> <p>" + lired[2].ToString() + "</div> <div class='share'><span style = 'margin-left: 10px; margin-right: 10px' > Partager: </span><ul><li><a href = '#'><i class='fa fa-twitter'></i></a></li> <li><a href = '#' ><i class='fa fa-google-plus'></i></a></li> <li><a href = '#' ><i class='fa fa-facebook-square'></i></a></li> </ul> </div></div> </div> <br/>";
            }

            connexion.cnx.Close();
            lires.Close();


        }
        protected void btn_deconnecter_Click(object sender, EventArgs e)
        {
            Session["id"] = null;
            Response.Redirect("connecter.aspx");
        }
        protected void btn_Ajouter_click(object sender, EventArgs e)
        {
            if (Ajouter.Text == "AJOUTER")
            {
                connexion.cnx.Open();
                connexion.cmd.CommandText = "insert into collaborateurs(Oid,utilisateur1,utilisateur2,etat_amitie) values ('"+ Guid.NewGuid().ToString() + "','"+Session["id"].ToString() +"','"+ Request.QueryString["userID"]+ "','En attente')";
                connexion.cmd.ExecuteNonQuery();
                global.MesCollaborateurs.Rows.Add(Request.QueryString["userID"],"En Attente1");
                Ajouter.Text = "EN ATTENTE";
            }
            else
            {
                if (Ajouter.Text == "AMIS")
                {
                    connexion.cnx.Open();
                    connexion.cmd.CommandText = "delete from collaborateurs where ( utilisateur1='"+Session["id"].ToString ()+"'and utilisateur2 ='"+Request.QueryString["userId"]+ "') or ( utilisateur2='" + Session["id"].ToString() + "'and utilisateur1 ='" + Request.QueryString["userId"] + "')";
                    connexion.cmd.ExecuteNonQuery();
                    connexion.cnx.Close();
                    global.MesCollaborateurs.Rows[amis].Delete();
                    Ajouter.Text = "AJOUTER";

                }
                else
                {
                    if(Ajouter.Text=="EN ATTENTE")
                    {
                        connexion.cnx.Open();
                        connexion.cmd.CommandText = "delete from collaborateurs where ( utilisateur1='" + Session["id"].ToString() + "'and utilisateur2 ='" + Request.QueryString["userId"] + "') or ( utilisateur2='" + Session["id"].ToString() + "'and utilisateur1 ='" + Request.QueryString["userId"] + "')";
                        connexion.cmd.ExecuteNonQuery();
                        connexion.cnx.Close();
                        global.MesCollaborateurs.Rows[amis].Delete();
                        Ajouter.Text = "AJOUTER";
                    }
                    else if(Ajouter.Text=="ACCEPTER INVITATION")
                          {
                        connexion.cnx.Open();
                        connexion.cmd.CommandText = "update collaborateurs set etat_amitie='Amis' where ( utilisateur2='" + Session["id"].ToString() + "' and utilisateur1 ='" + Request.QueryString["userId"] + "')";
                        connexion.cmd.ExecuteNonQuery();
                        connexion.cnx.Close();
                        global.MesCollaborateurs.Rows[amis]["Etat_Amitie"] = "Amis";
                        Ajouter.Text = "AMIS";
                          }
                    else
                    {
                        if(Ajouter.Text == "ANNULER INVITATION")
                        {
                            connexion.cnx.Open();
                            connexion.cmd.CommandText = "delete from collaborateurs where ( utilisateur1='" + Session["id"].ToString() + "'and utilisateur2 ='" + Request.QueryString["userId"] + "') or ( utilisateur2='" + Session["id"].ToString() + "'and utilisateur1 ='" + Request.QueryString["userId"] + "')";
                            connexion.cmd.ExecuteNonQuery();
                            connexion.cnx.Close();
                            global.MesCollaborateurs.Rows[amis].Delete();
                            Ajouter.Text = "AJOUTER";

                        }
                    }
                }   
            }
        }
    }
}