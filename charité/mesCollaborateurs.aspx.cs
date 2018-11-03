using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace charité
{
    public partial class mesCollaborateurs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            for (int i = 0; i < global.MesCollaborateursinfos.Rows.Count; i++)
            {
                DataRow mydatarow = global.MesCollaborateursinfos.Rows[i];
                DataRow mydatarow1 = global.MesCollaborateurs.Rows[i];
                string id = mydatarow1["Oid"].ToString();
                string nom = mydatarow["nom"].ToString();
                string prenom = mydatarow["prenom"].ToString();
                string etat = mydatarow["etat"].ToString();
                string img= mydatarow["image"].ToString();
                lbl_coll.Text += "<div class='col-lg-4'><a href=\"profilVue.aspx?userID="+ id + "\">" + nom + "  " + prenom + "</a><br/><div class=\"img\"><img runat =\"server\" height='150px' width='200px' src=\"" + "data:image/png;base64," + img + "\"/></div></div>";
            }

        }
        protected void redir(object sender, EventArgs e)
        {
            Response.Redirect("creer.aspx");
        }
    }
}