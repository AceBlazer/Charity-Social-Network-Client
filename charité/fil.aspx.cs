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
    public partial class fil : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("connecter.aspx");
            }

            lbl_nb_collaborateurs.Text = " "+global.MesCollaborateurs.Rows.Count.ToString();


                lbl_nom.Text = Session["nom"].ToString() + " " + Session["prenom"].ToString();
            ProfileImage.ImageUrl = (string)Session["profilimage"];
            postimage.ImageUrl = (string)Session["profilimage"];


            global.mesPub = new DataTable();
            connexion.cnx.Close();
            connexion.cnx.Open();
            connexion.cmd.CommandText = "select * from evenement where createur_evenement='"+Session["id"].ToString()+"'";
            MySqlDataReader lire = connexion.cmd.ExecuteReader();
            global.mesPub.Columns.Add("id", typeof(string));
            global.mesPub.Columns.Add("img", typeof(string));
            global.mesPub.Columns.Add("titre", typeof(string));
            global.mesPub.Columns.Add("desc", typeof(string));
            global.mesPub.Columns.Add("vi", typeof(string));
            global.mesPub.Columns.Add("va", typeof(string));
            global.mesPub.Columns.Add("date", typeof(string));
            global.mesPub.Columns.Add("lieu", typeof(string));
            while (lire.Read())
            {
                global.mesPub.Rows.Add(lire[0].ToString(), Convert.ToBase64String((byte[])lire[2]), lire[8].ToString(), lire[1].ToString(), lire[13].ToString(), lire[14].ToString(), lire[15].ToString(), lire[12].ToString());               
            }
            lire.Close();
            connexion.cnx.Close();


            connexion.cnx.Open();
            connexion.cmd.CommandText = "select * from demande where createur_demande='" + Session["id"].ToString() + "'";
            MySqlDataReader lire1 = connexion.cmd.ExecuteReader();
            while(lire1.Read())
            {
                global.mesPub.Rows.Add(lire1[0].ToString(), Convert.ToBase64String((byte[])lire1[2]), lire1[8].ToString(), lire1[1].ToString(), "", lire1[8].ToString(), lire1[10].ToString(), lire1[9].ToString());
            }
            lire1.Close();
            connexion.cnx.Close();


            connexion.cnx.Open();
            connexion.cmd.CommandText = "select * from offre where createur_offre='" + Session["id"].ToString() + "'";
            MySqlDataReader lire2 = connexion.cmd.ExecuteReader();
            while (lire2.Read())
            {
                global.mesPub.Rows.Add(lire2[0].ToString(), Convert.ToBase64String((byte[])lire2[2]), lire2[6].ToString(), lire2[1].ToString(), "", lire2[7].ToString(), lire2[9].ToString(), lire2[8].ToString());
            }
            lire2.Close();
            connexion.cnx.Close();
            



           

            for (int i = 0; i < global.MesCollaborateurs.Rows.Count; i++)
            {
                DataRow mydatarow = global.MesCollaborateurs.Rows[i];
                string utili = mydatarow["Oid"].ToString();
                connexion.cnx.Close();
                connexion.cnx.Open();
                connexion.cmd.CommandText = "select * from evenement where createur_evenement='" + utili + "'";
                MySqlDataReader lire3 = connexion.cmd.ExecuteReader();

                while (lire3.Read())
                {
                    global.mesPub.Rows.Add(lire3[0].ToString(), Convert.ToBase64String((byte[])lire3[2]), lire3[8].ToString(), lire3[1].ToString(), lire3[13].ToString(), lire3[14].ToString(), lire3[15].ToString(), lire3[12].ToString());
                }
                lire3.Close();
                connexion.cnx.Close();

                connexion.cnx.Open();
                connexion.cmd.CommandText = "select * from demande where createur_demande='" + utili + "'";
                MySqlDataReader lire4 = connexion.cmd.ExecuteReader();
                while (lire4.Read())
                {
                    global.mesPub.Rows.Add(lire4[0].ToString(), Convert.ToBase64String((byte[])lire4[2]), lire4[8].ToString(), lire4[1].ToString(), "", lire4[8].ToString(), lire4[10].ToString(), lire4[9].ToString());
                }
                lire4.Close();
                connexion.cnx.Close();


                connexion.cnx.Open();
                connexion.cmd.CommandText = "select * from offre where createur_offre='" + utili + "'";
                MySqlDataReader lire5 = connexion.cmd.ExecuteReader();
                while (lire5.Read())
                {
                    global.mesPub.Rows.Add(lire5[0].ToString(), Convert.ToBase64String((byte[])lire5[2]), lire5[6].ToString(), lire5[1].ToString(), "", lire5[7].ToString(), lire5[9].ToString(), lire5[8].ToString());
                }
                lire5.Close();
                connexion.cnx.Close();
                


            }
            global.mesPub.DefaultView.Sort = "date";
            global.mesPub = global.mesPub.DefaultView.ToTable();
            DataTable distinctTable = global.mesPub.DefaultView.ToTable( /*distinct*/ true);


            //affich
            for (int i = (distinctTable.Rows.Count)-1; i>=0 ; i--)
            {
                DataRow mydatarow = distinctTable.Rows[i];
                post.Text += mydatarow["date"].ToString() + "<div class='causes-list-box-wrapper' style='background-color: #FFFFFF; padding:5px'> <div class='causes-list-box'> <div class='img-progress'><div class='img-holder'> <img src = 'data:image/png;base64," + mydatarow["img"].ToString() + "' alt class='img img-responsive'> </div></div> <div class='event-box' > <h4> <span class='location'><i class='fa fa-map-marker'></i> " + mydatarow["lieu"].ToString() + "</span>  </h4>  </div>  <div class='details'>  <h3>" + mydatarow["titre"].ToString() + "</h3>  <h4>Collectés: <span>" + mydatarow["vi"].ToString() + "</span> / " + mydatarow["va"].ToString() + "</h4> <p>" + mydatarow["desc"].ToString() + "<br><a href = 'evenement-single.aspx?id=" + mydatarow["id"].ToString() + "' class='btn theme-btn'>Voir plus</a> </p> </div> <div class='share'><span style = 'margin-left: 10px; margin-right: 10px' > Partager: </span><ul><li><a href = '#'><i class='fa fa-twitter'></i></a></li> <li><a href = '#' ><i class='fa fa-google-plus'></i></a></li> <li><a href = '#' ><i class='fa fa-facebook-square'></i></a></li> </ul> </div></div> </div> <br/>";

            }

        }

        protected void btn_deconnecter_Click(object sender, EventArgs e)
        {
            Session["id"] = null;
            Response.Redirect("connecter.aspx");
        }
    }
}