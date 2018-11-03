using charité.Les_classes_métiers;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace charité
{
    public partial class evenement_single : System.Web.UI.Page
    {
        Dictionary<string, string> holidays = new Dictionary<string, string>();
        protected DataSet dsHolidays;
        string id;
        string typeUtil;
        protected void Page_Load(object sender, EventArgs e)
        {
            

                try
            {
                lbl_createur.Text = "";
                id = Request.QueryString["id"];
                lbl_titre.Text = id.ToString();
                connexion.cnx.Close();
                connexion.cnx.Open();
                connexion.cmd.CommandText = "select * from evenement where Oid='" + id.ToString() + "' ";
                MySqlDataReader lire = connexion.cmd.ExecuteReader();

                
                


                if (lire.Read() == true)
                {

                    if (lire[11].ToString() != null)
                    {
                        from.Value = lire[11].ToString();
                    }
                    if (lire[12].ToString() != null)
                    {
                        to.Value = lire[12].ToString();
                    }
                    DateTime d = Convert.ToDateTime(lire[3].ToString());
                    DateTime f = Convert.ToDateTime(lire[4].ToString());
                    string NowFormatForMySql1 = d.ToString("dd-MM-yyyy");
                    string NowFormatForMySql2 = f.ToString("dd-MM-yyyy");
                    lbl_titre.Text = lire[8].ToString();
                    lbl_details.Text = lire[1].ToString();
                    lbl_img.Text = "<img runat =\"server\" src=\"" + "data:image/png;base64," + Convert.ToBase64String((byte[])lire[2]) + "\" height=\"50%\" width=\"70%\" />";
                    lbl_lieu.Text = lire[5].ToString();
                    lbl_date.Text ="Début : "+  NowFormatForMySql1 +"<br/>Fin : "+ NowFormatForMySql2 ;
                    NowFormatForMySql1 = d.ToString("HH:mm");
                    NowFormatForMySql2 = f.ToString("HH:mm");
                    lbl_temp.Text = NowFormatForMySql1 + " - " + NowFormatForMySql2;
                    string util = lire[10].ToString();
                    lbl_type.Text = "Catégorie : "+ lire[9].ToString();
                    lire.Close();
                    connexion.cnx.Close();




                    connexion.cnx.Open();
                    connexion.cmd.CommandText = "select * from utilisateur where Oid ='" + util + "'";
                    lire = connexion.cmd.ExecuteReader();
                    lire.Read();
                    lbl_createur.Text += "<a href=\"profilVue.aspx?userID=" + util + "\">" + lire[1].ToString() + " " + lire[2].ToString() + "</a>";
                    lire.Close();
                    connexion.cnx.Close();
                    if (Session["id"] != null)
                    {
                        connexion.cnx.Open();
                        connexion.cmd.CommandText = "select * from droit_acces where (utilisateur ='" + Session["id"].ToString() + "') AND (evenement='" + id + "')";
                        lire = connexion.cmd.ExecuteReader();
                        if (lire.Read() == true)
                        {
                            typeUtil = lire[2].ToString();
                            Participer.Text = "Participé ✔";
                            Participer.CssClass = "btn";
                            Participer.ForeColor = System.Drawing.Color.Blue;
                            Participer.ToolTip = "Annuler ma participation";
                            if (lire[2].ToString() == "Consultateur" )
                            {
                                Modifier.Visible = false;
                            }
                        }
                        else
                        {
                            Participer.Text = "Participer +";
                            Participer.CssClass = "bnt theme-btn";
                            Participer.ForeColor = System.Drawing.Color.White;
                            Participer.ToolTip = "Participer";
                            Modifier.Visible = false;
                        }
                    }
                    else { Participer.Visible = false;
                           partager.Visible = false;
                           Modifier.Visible = false;
                    }
                }
                lire.Close();
                connexion.cnx.Close();
                connexion.cnx.Open();
                connexion.cmd.CommandText = "select * from commentaire_evenement where evenement='" + id.ToString() + "' order by date_comm ;";
                 lire = connexion.cmd.ExecuteReader();
                global.tableCommentsevent = new DataTable();
                global.tableCommentsevent.Columns.Add("util", typeof(string));
                global.tableCommentsevent.Columns.Add("continu", typeof(string));
                global.tableCommentsevent.Columns.Add("date", typeof(String));
                while (lire.Read() == true)
                {
                    global.tableCommentsevent.Rows.Add(lire[2].ToString(),lire[3].ToString(), lire[4].ToString());
                }
                lire.Close();
                connexion.cnx.Close();
                lbl_comments.Text = "";
                for (int i = 0; i < global.tableCommentsevent.Rows.Count; i++)
                {
                    DataRow mydatarow = global.tableCommentsevent.Rows[i];
                    string utili = mydatarow["util"].ToString();
                    string cont = mydatarow["continu"].ToString();
                    string dat = mydatarow["date"].ToString();
                    connexion.cnx.Open();
                    connexion.cmd.CommandText = "select * from utilisateur where Oid='" + utili.ToString() + "'";
                    lire = connexion.cmd.ExecuteReader();
                    if(lire.Read()== true)
                    lbl_comments.Text += "<img runat =\"server\"  src=\"" + "data:image/png;base64," + Convert.ToBase64String((byte[])lire[21]) + "\"  class=\"img-circle\" height=\"40\" width=\"40\" /><a href=\"profilVue.aspx?userID="+lire[0].ToString ()+ "\">"+"  "+lire[2].ToString() +" "+lire[1].ToString() + "</a><div><p style=\"color: #000000\">" +cont.ToString()+ "</p></div><hr style=\"color: #ffffff; font-size: 1px\" /> ";
                    connexion.cnx.Close();
            }



                
                //connexion.cnx.Close();
                //connexion.cnx.Open();
                //connexion.cmd.CommandText = "select * from demande order by date_demande desc ;";
                //lire = connexion.cmd.ExecuteReader();
                //lbl_demandes.Text = "";
                //for (int i = 0; (i < 3) && (lire.Read()); i++)
                //{
                //    lbl_demandes.Text += "<div class=\"col col-md-4 col-xs-6\"><div class=\"title\"><ul><li><h3>" + lire[7].ToString() + "</h3></li><li><i class=\"fa fa-map-marker\"></i>" + lire[9].ToString() + "</li></ul></div><div class=\"img-progress\"><div class=\"img-holder\"><img runat=\"server\" src=\"" + "data:image/png;base64," + Convert.ToBase64String((byte[])lire[2]) + "\" alt class=\"img img-responsive\" height=\"40%\" width=\"50%\" ></div><div class=\"progress\"><div class=\"progress-bar\" data-percent=\"85\"></div></div></div><div class=\"donate-amount\"><ul><li>Raised: <span>$52,872</span> / $70,000</li><li><i class=\"fa fa-clock-o\"></i> 95 days</li></ul></div><div class=\"text\" ><p>" + lire[1].ToString() + "</p><a href = 'demande-single.aspx?id=" + lire[0].ToString() + "' class=\"btn theme-btn\">Voir plus</a></div></div>";

        //}
        //lire.Close();
        //connexion.cnx.Close();
        }
           catch (Exception expt) { /*Response.Redirect("evenements-recents.aspx");*/ }
        }
             protected void Button2_Click(object sender, EventArgs e)
        {
            if (Session["id"] != null)
            {
                string idcmt = Guid.NewGuid().ToString();
                string usID = (string)Session["id"];
                string date = DateTime.Now.ToString();
                string img = Session["profilimage"].ToString();


                connexion.cnx.Open();
                connexion.cmd.CommandText = "insert into commentaire_evenement (Oid,evenement,contenu,utilisateur)  values('" + idcmt + "','" + id+ "','" + txt_Comment.Text.ToString()+"','"+ usID +"')";
                connexion.cmd.ExecuteNonQuery();
                lbl_comments.Text  += "<img runat =\"server\"  src=\"" +  img + "\"  class=\"img-circle\" height=\"40\" width=\"40\" /><a href=\"profilVue.aspx?userID=" + Session["id"].ToString() + "\">" + "  " + Session["prenom"].ToString()  + " " + Session["nom"].ToString() + "</a><div><p style=\"color: #000000\">" + txt_Comment.Text.ToString() + "</p></div><hr style=\"color: #ffffff; font-size: 1px\" /> ";
                txt_Comment.Text = "";
            }


        }

       


        protected void CalendarDRender(object sender, DayRenderEventArgs e)
        {

            connexion.cnx.Close();
            connexion.cnx.Open();
            DateTime debut,fin;
            connexion.cmd.CommandText = "select date_debut_ev,titre_evenement,date_fin_ev from evenement where Oid='"+id.ToString()+"'";
            try
            {
                MySqlDataReader dr;
               dr=connexion.cmd.ExecuteReader();
                if(dr.Read())
                {
                    debut = (DateTime)dr[0];
                    fin=(DateTime)dr[2];    
                    if (debut == e.Day.Date)
                    {
                        e.Cell.Controls.Add(new LiteralControl("\n Début"));
                        e.Cell.BackColor = System.Drawing.Color.Blue;
                        e.Cell.ForeColor = System.Drawing.Color.White;
                        e.Cell.Font.Bold = true;
                    }
                    if (fin == e.Day.Date)
                    {
                        e.Cell.Controls.Add(new LiteralControl("\n Fin"));
                        e.Cell.BackColor = System.Drawing.Color.Red;
                        e.Cell.ForeColor = System.Drawing.Color.White;
                        e.Cell.Font.Bold = true;
                    }




                }
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
            connexion.cnx.Close();
        }

        protected void btn_participer_click (object sender , EventArgs e)
        {
            if ((Session["id"] != null)&&(Participer.Text== "Participer +"))
            {
                DroitAcces da = new DroitAcces(Guid.NewGuid().ToString(), id ,Session["id"].ToString(),"consultateur",DateTime.Now);
                connexion.cnx.Open();
                connexion.cmd.CommandText = "insert into droit_acces (Oid,droit,utilisateur,evenement,date_participation) values('" + da.GetOid()+"','"+da.GetDroit()+"','"+da.GetOidUtilisateur() + "','" +da.GetOidEvenement() + "','" +da.GetDateParticipationToString ()+"')";
                connexion.cmd.ExecuteNonQuery();
                connexion.cnx.Close();
                Participer.Text = "Participé ✔";
                Participer.CssClass = "btn";
                Participer.ForeColor = System.Drawing.Color.LightGreen  ;
                Participer.ToolTip = "Annuler ma participation";
            }
            else
            {
                connexion.cnx.Open();
                connexion.cmd.CommandText = "delete from droit_acces where (evenement ='"+Request.QueryString["id"]+"') AND (utilisateur = '"+Session["id"].ToString()+"')";
                connexion.cmd.ExecuteNonQuery();
                connexion.cnx.Close();
                Participer.Text = "Participer +";
                Participer.CssClass = "bnt theme-btn";
                Participer.ForeColor = System.Drawing.Color.White;
                Participer.ToolTip = "Participer";

            }

        }
        
        protected void btn_modifier_click(object sender, EventArgs e)
        {

            Response.Redirect("Modifier_evt.aspx?id=" + Request.QueryString["id"] + "&type=" + typeUtil);
            
        }
        protected void btn_partager_click(object sender, EventArgs e)
        {

            

        }
        protected void btn_inviter_click(object sender, EventArgs e)
        {



        }






        protected void btn_deconnecter_Click(object sender, EventArgs e)
        {
            Session["id"] = null;
            Response.Redirect("connecter.aspx");
        }

    }
}