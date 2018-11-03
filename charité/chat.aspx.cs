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
    public partial class chat : System.Web.UI.Page
    {
        bool selected = false;
        string ami="";
        string nomc = "";
        string prenomc = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["id"]==null)
            {
                Response.Redirect("connecter.aspx");
            }
        }

        protected void Timer2_Tick(object sender, EventArgs e)
        {
            lbl_message.Text = "";
              connexion.cnx.Close();
            connexion.cnx.Open();
            

            
            connexion.cmd.CommandText = "SET FOREIGN_KEY_CHECKS=0; select * from message where recepteur='" + ami+"' and expediteur='"+Session["id"].ToString()+"' or expediteur='"+ Session["id"].ToString() + "' and recepteur='"+ami+ "'; SET FOREIGN_KEY_CHECKS=0";
            global.messages = new DataTable();
            global.messages.Columns.Add("msg", typeof(string));

            MySqlDataReader lire2 = connexion.cmd.ExecuteReader();
           
            string message = "";
            while (lire2.Read()) {
                
               
                if (lire2[3].ToString()==Session["id"].ToString()) {
                if(lire2[1].ToString()!=message) { 
                lbl_message.Text += "<div class='img-rounded' style='bckground-color:darkorange'> Moi: " + lire2[1].ToString() + "</div><br/>";

                    
                }
               
                }
                else
                {
                    if (lire2[1].ToString() != message)
                    {
                        lbl_message.Text += "<div class='img-rounded' style='bckground-color:darkgrey;'> Lui: " + lire2[1].ToString() + "</div><br/>";

                       
                    }
                   
                
                }
                
            }
           
            

        }




        protected void Timer3_Tick(object sender, EventArgs e)
        {
            string a = "";
            for (int i = 0; i < global.MesCollaborateurs.Rows.Count; i++)
            {
                DataRow mydatarow = global.MesCollaborateursinfos.Rows[i];
                string nom = mydatarow["nom"].ToString();
                string prenom = mydatarow["prenom"].ToString();
                string image = mydatarow["image"].ToString();
                string etat = mydatarow["etat"].ToString();

                if (mydatarow["etat"].ToString() == "0")
                {
                    a += "<li class='user'><div class='media left'><div class='media-aside'><img class='img-circle' src='data:image/png;base64," + image + "' height='50px' width='50px'>   " + nom + " " + prenom + "</div></div></li><hr/>";
                }
                if (lbl_enligne.Text != a)
                    lbl_enligne.Text = a;
            }

        }

      

        protected void selectcol(object sender, EventArgs e)
        {
            namec.Text = tb.Text;
            string[] splits = tb.Text.Split(' ');
            nomc =splits[0];
            prenomc =splits[1];
            connexion.cnx.Close();
            connexion.cnx.Open();
            connexion.cmd.CommandText="select Oid from utilisateur where nom_uti='"+nomc+"' and prenom_uti='"+prenomc+"'";
            MySqlDataReader lire= connexion.cmd.ExecuteReader();
            if (lire.Read()==true)
            {
                ami = lire[0].ToString();
            }
            selected = true;

        }

        protected void sendm(object sender, EventArgs e)
        {
            connexion.cnx.Close();
            connexion.cnx.Open();
            
            connexion.cmd.CommandText = "SET FOREIGN_KEY_CHECKS=0; insert into message (Oid,contenu,expediteur,recepteur) values ('" + Guid.NewGuid().ToString()+"','"+txt_msg.Text+"','"+Session["id"].ToString()+ "',@Content); SET FOREIGN_KEY_CHECKS=1";
            connexion.cmd.Parameters.Add("@Content",ami);
            connexion.cmd.ExecuteNonQuery();
            connexion.cmd.Parameters.Clear();
           
        }

    }
}