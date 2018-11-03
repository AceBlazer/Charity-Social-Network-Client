using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace charité
{
    public partial class creerDemande : System.Web.UI.Page
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
            string vdep = start.Value;
         

            try
            {
                   connexion.cnx.Open();

               

                using (Stream fs = FileUpload1.PostedFile.InputStream)
                {
                    using (BinaryReader br = new BinaryReader(fs))
                    {
                        string NowFormatForMySql = DateTime.Today.ToString("yyyy-MM-dd HH:mm:ss");
                        byte[] bytes = br.ReadBytes((Int32)fs.Length);
                        string desc = lbl_desc.Text.ToString();
                        string descnew = desc.Replace("'", "`");
                        connexion.cmd.CommandText = "insert into demande (Oid,description_demande,image,categorie_demande,titre_demande,valeur_demande,lieu_demande,date_demande,createur_demande) values ('" + id + "','" + descnew + "',@Content,'" +categ.Text.ToString()+"','"+lbl_titre.Text.ToString()+"','"+lbl_vali.Text.ToString()+"','"+vdep+"','"+NowFormatForMySql+"','"+Session["id"].ToString()+"')";


                        connexion.cmd.Parameters.AddWithValue("@Content", bytes);

                        if (connexion.cmd.ExecuteNonQuery() > 0)
                        {
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
                  connexion.cnx.Close();
                connexion.cmd.Parameters.Clear();
            }
        }
    }
}
