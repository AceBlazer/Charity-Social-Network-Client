using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using ASPSnippets.FaceBookAPI;
using System.Web.Script.Serialization;
using ASPSnippets.GoogleAPI;
using ASPSnippets.TwitterAPI;
using System.Data;
using System.IO;

namespace charité
{

    public partial class connecter : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            { }
            else
            {
                second.Visible = false;
            }

            try
            {
                GoogleConnect.ClientId = "767999389552-m1vht5hddgj8ov7bubchj85qjgpao7hc.apps.googleusercontent.com";
                GoogleConnect.ClientSecret = "vCObJ_O3NJdbmG6rh4JfJVr7";
                GoogleConnect.RedirectUri = Request.Url.AbsoluteUri.Split('?')[0];

                FaceBookConnect.API_Key = "1827610537563435";
                FaceBookConnect.API_Secret = "b1799d7841435dd88c84ef76a95733ee";

                TwitterConnect.API_Key = "7hUliIkwvetS4e9DXZNqfQgAp";
                TwitterConnect.API_Secret = "pwlU8hzVHpnkDM77I6vKJYc392mWtZOyZoJwqoSGY5TpCOdQCR";


                if (!IsPostBack)
                {
                    if (Request.QueryString["error"] == "access_denied")
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('User has denied access.')", true);
                        return;
                    }


                    string code = Request.QueryString["code"];

                    if (Session["checkValue"].ToString().Contains("facebook"))
                    {
                        if (!string.IsNullOrEmpty(Request.QueryString["code"]))
                        {


                            string data = FaceBookConnect.Fetch(code, "me?fields=id,name,email");
                            Facebook faceBookUser = new JavaScriptSerializer().Deserialize<Facebook>(data);
                            faceBookUser.PictureUrl = string.Format("https://graph.facebook.com/{0}/picture", faceBookUser.Id);
                            
                            Session["id"] = faceBookUser.Id;
                            Session["nom"] = faceBookUser.Name;
                            Session["profilimage"] = faceBookUser.PictureUrl;
                            Session["prenom"] = "";
                            Session["nbevt"] = "0";
                            Session["nbdmd"] = "0";
                            Session["nboffre"] = "0";

                            Response.Redirect("profil.aspx");
                        }
                    }




                    if (Session["checkValue"].ToString().Contains("google"))
                    {
                        if (!string.IsNullOrEmpty(Request.QueryString["code"]))
                        {
                            string json = GoogleConnect.Fetch("me", code);
                            GoogleUser profile = new JavaScriptSerializer().Deserialize<GoogleUser>(json);
                            
                            Session["id"] = profile.Id;
                            Session["nom"] = profile.DisplayName;
                            Session["profilimage"] = profile.Image.Url;
                            Session["prenom"] = "";
                            Session["nbevt"] = "0";
                            Session["nbdmd"] = "0";
                            Session["nboffre"] = "0";

                            Response.Redirect("profil.aspx");
                        }

                    }


                    if (Session["checkValue"].ToString().Contains("twitter"))
                    {
                        if (TwitterConnect.IsAuthorized)
                        {
                            TwitterConnect twitter = new TwitterConnect();

                            DataTable dt = twitter.FetchProfile();
                            

                            Session["id"] = dt.Rows[0]["Id"].ToString();
                            Session["nom"] = dt.Rows[0]["name"].ToString();
                            Session["profilimage"] = dt.Rows[0]["profile_image_url"].ToString();
                            Session["prenom"] = "";
                            Session["nbevt"] = "0";
                            Session["nbdmd"] = "0";
                            Session["nboffre"] = "0";

                            Response.Redirect("profil.aspx");
                        }
                        if (TwitterConnect.IsDenied)
                        {
                            ClientScript.RegisterStartupScript(this.GetType(), "key", "alert('User has denied access.')", true);
                        }
                    }
                }

            }
            catch (Exception ex)
            {

            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                connexion.cnx.Close();
                connexion.cnx.Open();
                connexion.cmd.CommandText = "select* from utilisateur where e_mail='" + txt_log.Text.ToString() + "' and mot_pass='" + txt_pass.Text.ToString() + "'  ";
                MySqlDataReader lire = connexion.cmd.ExecuteReader();
                if (lire.Read() == true)
                { string idu = lire[0].ToString();
                    Session["id"] = lire[0].ToString();
                    Session["nom"] = lire[1].ToString();
                    Session["prenom"] = lire[2].ToString();
                    Session["sexe"] = lire[3].ToString();
                    Session["dnaiss"] = lire[4].ToString();
                    Session["fonction"] = lire[5].ToString();
                    Session["addresse"] = lire[6].ToString();
                    Session["tel"] = lire[7].ToString();
                    Session["nbetoiles"] = lire[12].ToString();
                    Session["organisation"] = lire[13].ToString();
                    Session["comptegoogle"] = lire[15].ToString();
                    Session["comptetwitter"] = lire[16].ToString();
                    Session["comptefacebook"] = lire[17].ToString();
                    Session["nbcollaborateurs"] = lire[23].ToString();
                    Session["nbevt"] = lire[18].ToString();
                    Session["nbdmd"] = lire[19].ToString();
                    Session["nboffre"] = lire[20].ToString();
                    Session["profilimage"] = "data:image/png;base64," +Convert.ToBase64String((byte[])lire[21]);
                    int nbcoll =Convert.ToInt32(lire[23].ToString());
                    lire.Close();
                    connexion.cnx.Close();
                    global.MesCollaborateurs = new DataTable();
                    connexion.cnx.Open();
                    connexion.cmd.CommandText = "select * from collaborateurs where (utilisateur1 ='"+idu+ "')OR(utilisateur2 ='" + idu + "')";
                    lire = connexion.cmd.ExecuteReader();
                    global.MesCollaborateurs.Columns.Add("Oid", typeof(string));
                    global.MesCollaborateurs.Columns.Add("Etat_Amitie", typeof(string));
                    int i = 2;
                    while (lire.Read())
                    {if (lire[1].ToString() == Session["id"].ToString()&& lire[3].ToString()=="En attente")
                        { i = 1;
                          global.MesCollaborateurs.Rows.Add(lire[i].ToString(), lire[3].ToString() + i.ToString());
                        }
                        else { if(lire[3].ToString() == "En attente")
                          global.MesCollaborateurs.Rows.Add(lire[i].ToString(), lire[3].ToString() + i.ToString());
                        else { if (lire[1].ToString() == idu )
                                global.MesCollaborateurs.Rows.Add(lire[2].ToString(), lire[3].ToString() );
                        else
                                    global.MesCollaborateurs.Rows.Add(lire[1].ToString(), lire[3].ToString());
                            }
                        }

                    }
                    lire.Close();
                    connexion.cnx.Close();
                    global.MesCollaborateursinfos = new DataTable();
                    global.MesCollaborateursinfos.Columns.Add("id", typeof(string));
                    global.MesCollaborateursinfos.Columns.Add("nom", typeof(string));
                    global.MesCollaborateursinfos.Columns.Add("prenom", typeof(string));
                    global.MesCollaborateursinfos.Columns.Add("image", typeof(string));
                    global.MesCollaborateursinfos.Columns.Add("etat", typeof(string));
                    for (i = 0; i < global.MesCollaborateurs.Rows.Count; i++)
                    {
                        DataRow mydatarow = global.MesCollaborateurs.Rows[i];
                        string utili = mydatarow["Oid"].ToString();
                        connexion.cnx.Open();
                        connexion.cmd.CommandText = "select * from utilisateur where(Oid = '"+utili+"')";
                        lire = connexion.cmd.ExecuteReader();
                        lire.Read();
                        global.MesCollaborateursinfos.Rows.Add(utili,lire[1].ToString(), lire[2].ToString(), Convert.ToBase64String((byte[])lire[21]), lire[22].ToString());
                        connexion.cnx.Close();
                    }
                    connexion.cnx.Open();
                    connexion.cmd.CommandText="update utilisateur set etat=1 where Oid='"+Session["id"]+"'";
                    connexion.cmd.ExecuteNonQuery();
                    connexion.cnx.Close();

                    Response.Redirect("profil.aspx");
                }
                lire.Close();
            }

            finally
            {
                connexion.cnx.Close();
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            string sexe = "";
            string id = Guid.NewGuid().ToString();

            try
            {
                string logi = txt_email.Text.ToString();
                string mdp = txt_pass1.Text.ToString();
                connexion.cnx.Open();
                sexe = RadioButtonList1.Text.ToString();
                connexion.cmd.CommandText = "select count(*) from utilisateur where e_mail='" + txt_email.Text.ToString() + "'";
                int existe = Convert.ToInt32(connexion.cmd.ExecuteScalar());
                connexion.cnx.Close();
                if (existe > 0)
                {

                    ltNotify.Text = "adresse existe deja";
                }
                else
                {
                    using (Stream fs = FileUpload1.PostedFile.InputStream)
                    {
                        using (BinaryReader br = new BinaryReader(fs))
                        {
                            byte[] bytes = br.ReadBytes((Int32)fs.Length);
                            
                            connexion.cnx.Open();
                            connexion.cmd.CommandText = "insert into utilisateur (Oid,nom_uti,prenom_uti,e_mail,sexe,date_naissance,fonction,adresse,tel,mot_pass,photo,nb_etoiles,nbr_coll)  values('" + id + "','" + txt_nom.Text.ToString() + "','" + txt_prenom.Text.ToString() + "','" + txt_email.Text.ToString() + "','" + sexe + "','" + txt_naiss.Text.ToString() + "','" + txt_fonc.Text.ToString() + "','" + txt_address.Text.ToString() + "'," + txt_tel.Text.ToString() + ",'" + txt_pass1.Text.ToString() + "',@Content,0,0)";
                            connexion.cmd.Parameters.AddWithValue("@Content", bytes);
                            if (connexion.cmd.ExecuteNonQuery() > 0)
                            {

                                connexion.cnx.Close();
                                connexion.cnx.Open();
                                connexion.cmd.CommandText = "select* from utilisateur where e_mail='" + logi + "' and mot_pass='" + mdp + "'  ";
                                MySqlDataReader lire = connexion.cmd.ExecuteReader();
                                if (lire.Read() == true)
                                {
                                    Session["id"] = lire[0].ToString();
                                    Session["nom"] = lire[1].ToString();
                                    Session["prenom"] = lire[2].ToString();
                                    Session["sexe"] = lire[3].ToString();
                                    Session["dnaiss"] = lire[4].ToString();
                                    Session["fonction"] = lire[5].ToString();
                                    Session["addresse"] = lire[6].ToString();
                                    Session["tel"] = lire[7].ToString();
                                    Session["nbetoiles"] = lire[12].ToString();
                                    Session["organisation"] = lire[13].ToString();
                                    Session["comptegoogle"] = lire[15].ToString();
                                    Session["comptetwitter"] = lire[16].ToString();
                                    Session["comptefacebook"] = lire[17].ToString();
                                    Session["nbevt"] = lire[18].ToString();
                                    Session["nbdmd"] = lire[19].ToString();
                                    Session["nboffre"] = lire[20].ToString();
                                    Session["profilimage"] = "data:image/png;base64," + Convert.ToBase64String((byte[])lire[21]);
                                   
                                   // Response.Redirect("profil.aspx");
                                }
                                lire.Close();
                                connexion.cnx.Close();
                                Response.Redirect("profil.aspx");

                            }
                            else
                            {
                                Response.Write("<h3>profil problème</h3>");
                            }
                        }
                    }
                }
            }
            catch (Exception expt)
            {
                string er = expt.ToString();
                Response.Write("<h3>" + er + "</h3>");
                expt.ToString();
            }

            finally { connexion.cnx.Close(); }

        }



        protected void Loginfb(object sender, EventArgs e)
        {
            Session["checkValue"] = "facebook";
            FaceBookConnect.Authorize("user_photos,email", Request.Url.AbsoluteUri.Split('?')[0]);
        }

        protected void Loging(object sender, EventArgs e)
        {
            Session["checkValue"] = "google";
            GoogleConnect.Authorize("profile", "email");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            if (!TwitterConnect.IsAuthorized)
            {
                TwitterConnect twitter = new TwitterConnect();
                Session["checkValue"] = "twitter";
                twitter.Authorize(Request.Url.AbsoluteUri.Split('?')[0]);
            }
        }

        protected void Clear(object sender, EventArgs e)
        {
            GoogleConnect.Clear();
        }
    }
}
