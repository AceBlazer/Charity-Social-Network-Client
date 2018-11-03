using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.IO;

namespace charité
{
    public partial class modif_infos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btn_deconnecter_Click(object sender, EventArgs e)
        {
            Session["id"] = null;
            Response.Redirect("connecter.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            string sexe = RadioButtonList1.Text.ToString();


            using (Stream fs = FileUpload1.PostedFile.InputStream)
            {
                using (BinaryReader br = new BinaryReader(fs))
                {
                    byte[] bytes = br.ReadBytes((Int32)fs.Length);

                    connexion.cmd.CommandText = "update utilisateur set nom_uti='" + txt_nom.Text.ToString() + "',prenom_uti='" + txt_prenom.Text.ToString() + "',sexe='" + sexe + "',date_naissance='" + txt_naiss.Text.ToString() + "',fonction='" + txt_travail.Text.ToString() + "',tel='" + txt_tel.Text.ToString() + "',organisation='" + txt_comp.Text.ToString() + "',compte_google='" + txt_google.Text.ToString() + "',compte_twitter='" + txt_twitter.Text.ToString() + "',compte_facebook='" + txt_fb.Text.ToString() + "',adresse='" + txt_addresse.Text.ToString() + "',photo=@Content" + " where Oid='" + Session["id"].ToString() + "'";
                    connexion.cmd.Parameters.AddWithValue("@Content", bytes);
                    connexion.cnx.Close();
                    connexion.cnx.Open();
                    connexion.cmd.ExecuteNonQuery();
                    connexion.cnx.Close();
                }
            }
          //  Response.Redirect(Request.Url.AbsoluteUri);


            Session["nom"] = txt_nom.Text.ToString();
            Session["prenom"] = txt_prenom.Text.ToString();
            Session["sexe"] = sexe;
            Session["dnaiss"] = txt_naiss.Text.ToString();
            Session["fonction"] = txt_travail.Text.ToString();
            Session["organisation"] = txt_comp.Text.ToString();
            Session["addresse"] = txt_addresse.Text.ToString();
            Session["tel"] = txt_tel.Text.ToString();

            Response.Redirect("profil.aspx");


        }
    }
}