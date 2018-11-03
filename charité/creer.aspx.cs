using MySql.Data.MySqlClient;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace charité
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("connecter.aspx");
            }
            
        }

        protected void creer(object sender, EventArgs e)
        {
            string id = Guid.NewGuid().ToString();
            string typeEvt = "";
            string vdep = start.Value;
            string varr = end.Value;
            string distance;

            try
            {
                //    connexion.cnx.Open();
                
                    if (lst_type_ev.SelectedValue == "Educatif")
                    {
                        typeEvt = "Educatif";
                    }
                    if (lst_type_ev.SelectedValue == "Concert")
                    {
                        typeEvt = "Concert";
                    }
                    if (lst_type_ev.SelectedValue == "Fête")
                    {
                        typeEvt = "Fête";
                    }
                    if (lst_type_ev.SelectedValue == "Collection")
                    {
                        typeEvt = "Campagne";
                    }
                    if (lst_type_ev.SelectedValue == "Visite")
                    {
                        typeEvt = "Visite";
                    }
                    if (lst_type_ev.SelectedValue == "Défi")
                    {
                        typeEvt = "Défi";
                    }

                    using (Stream fs = FileUpload1.PostedFile.InputStream)
                    {
                        using (BinaryReader br = new BinaryReader(fs))
                        {
                            string NowFormatForMySql = DateTime.Today.ToString("yyyy-MM-dd HH:mm:ss");
                            byte[] bytes = br.ReadBytes((Int32)fs.Length);
                            string desc = lbl_desc.Text.ToString();
                            string descnew = desc.Replace("'", "`");
                            connexion.cmd.CommandText = "insert into evenement (Oid,description_evenement,image,date_debut_ev,date_fin_ev,adresse,type_evenement,createur_evenement,ville_depart,ville_arrivee,valeur_initiale,valeur_attendue,titre_evenement,date_publication_ev) values ('" + id + "','" + descnew + "',@Content,'" + lbl_dd.Text.ToString()+" "+lbl_td.Text.ToString()  + "','" + lbl_df.Text.ToString()+" "+lbl_tf.Text.ToString()  + "','" + varr + "','" + typeEvt + "','" + Session["id"].ToString() + "','" + vdep + "','" + varr + "','" + lbl_vali.Text.ToString() + "','" + lbl_vala.Text.ToString() + "','"+lbl_titre.Text.ToString()+"','"+NowFormatForMySql +"')";


                            connexion.cmd.Parameters.AddWithValue("@Content", bytes);

                            connexion.cnx.Close();

                            connexion.cnx.Open();
                            if (connexion.cmd.ExecuteNonQuery() > 0)
                            {
                                //proximité
                                
                                connexion.cnx.Close();
                                connexion.cnx.Open();
                                connexion.cmd.CommandText = "select * from evenement";
                                MySqlDataReader lire1 = connexion.cmd.ExecuteReader();
                                global.tablevarr = new DataTable();
                                global.tablevarr.Columns.Add("darr", typeof(string));
                                global.tablevarr.Columns.Add("usr", typeof(string));
                                while (lire1.Read() == true)
                                {
                                    global.tablevarr.Rows.Add(lire1[12].ToString(),lire1[10].ToString());
                                }

                                for (int i = 0; i < global.tablevarr.Rows.Count; i++)
                                {
                                    DataRow mydatarow = global.tablevarr.Rows[i];
                                    string varrs = mydatarow["darr"].ToString();
                                    string usr= mydatarow["usr"].ToString();

                                    Response.Write(varrs);
                                    Response.Write(varr);
                                    var distance1 = Geolocation.GetDistance(varrs, varr, (DistanceUnit)Enum.Parse(typeof(DistanceUnit), "Kilometers"));


                                    distance = distance1.ToString("0.00 ") + "Km";
                                    Response.Write(distance.ToString());


                                    if (distance1 < 40 && Session["id"].ToString()!=usr)
                                    {
                                        //notifier l'autre utilisateur
                                        connexion.cnx.Close();
                                        connexion.cnx.Open();
                                        string nid = Guid.NewGuid().ToString();
                                        string formatForMySql = DateTime.Today.ToString("yyyy-MM-dd HH:mm");
                                        string notif = "Un évènement est à proximité de votre. Créé par: " + Session["nom"].ToString() + " " + Session["prenom"].ToString() + ", intitulé: " + lbl_titre.Text.ToString() + ", près de: " + distance + " de votre évènement.";
                                        connexion.cmd.CommandText = "insert into notification (Oid,continu,etat,date,util) values ('"+nid+"','" + notif + "',0,'" + formatForMySql + "','"+usr+"')";
                                        connexion.cmd.ExecuteNonQuery();
                                        connexion.cnx.Close();
                                    }
                                    else
                                    {

                                    }
                                
                                }
                                lire1.Close();
                                connexion.cnx.Close();


                                Response.Redirect("fil.aspx");
                            }
                            connexion.cnx.Close();


                        }
                    }
                    Response.Redirect(Request.Url.AbsoluteUri);

                    

                

            }
            catch (Exception expt)
            {
                string er = expt.ToString();
                Response.Write("<h3>" + er + "</h3>");
                expt.ToString();
            }
            finally
            {
                //  connexion.cnx.Close();
                connexion.cmd.Parameters.Clear();
            }
        }









    }
}