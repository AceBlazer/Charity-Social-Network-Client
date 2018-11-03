using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using MySql.Data;
using System.Runtime.Remoting.Contexts;
using System.Drawing;
using System.Data;
namespace charité
{
    public partial class evenements_recents : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //try
            //{
            //lbl_demande.Text += "<div >";
            //Label2.Text += "<a href=\"javascript: onClick=showPage('1')\">  1  </a>";
            int i = 0;
            int j = 1;
            String ids = "0";

            if (!String.IsNullOrEmpty(Request.QueryString["pID"]))
            {

                ids = Request.QueryString["pID"];
                int id = Convert.ToInt32(ids);
                lbl_evt.Text = " ";
                for (i = ((id * 6) - 6); (i < id * 6) && (i < global.tableevt.Rows.Count); i++)
                {
                    DataRow mydatarow = global.tableevt.Rows[i];
                    string valeur2 = mydatarow["2"].ToString();
                    string valeur3 = mydatarow["3"].ToString();
                    string valeur4 = mydatarow["4"].ToString();
                    string valeur5 = mydatarow["5"].ToString();
                    string valeur6 = mydatarow["6"].ToString();
                    string tit = mydatarow["1"].ToString();
                    lbl_evt.Text += " <div class=\"col col-md-4 col-xs-6\">  <div class=\"title\"> <ul> <li><h3>" + tit + "</h3></li> <li><i class=\"fa fa-map-marker\"></i>" + valeur2 + "</li>  </ul>  </div> <div class=\"img-progress\">  <div class=\"img-holder\"><img runat =\"server\" src=\"" + "data:image/png;base64," + valeur3 + "\" alt class=\"img img-responsive\"  /> </div> <div class=\"progress\"> </div>  </div>   <div class=\"donate-amount\">   <ul> <li>Besoins: <span>" + valeur4 + "</span> </li> <li><i class=\"fa fa-clock-o\"></i> 95 days</li>  </ul>  </div> <div class=\"text\"> <p>" + valeur5 + "</p>  <a href = 'evenement-single.aspx?id=" + valeur6 + "' class=\"btn theme-btn\">Voir plus</a>   </div> <br/></div> ";
                }
                i = global.tableevt.Rows.Count;
                if (i % 6 == 0)
                {
                    j = i / 6;
                }
                else
                {
                    j = (i / 6) + 1;
                }
                if (id > 1)
                {
                    int c = id - 1;
                    Label6.Text = "<div class=\"pagination-wrapper\"><ul><li><a href =\"demandes-recentes1.aspx?pID=" + c.ToString() + "\"aria -label=\"Previous\"><i class=\"fa fa-angle-left\"></i></a></li>";
                }
                else
                    Label6.Text = "<div class=\"pagination-wrapper\"><ul><li><a href = \"#\" aria-label=\"Previous\"><i class=\"fa fa-angle-left\"></i></a></li>";
                for (int a = 1; a <= j; a++)
                { Label6.Text += "<li><a href=\"evenements-recents.aspx?pID=" + a.ToString() + "\" >" + a.ToString() + "</a></li>"; }
                if (j > id)
                {
                    int b = id + 1;
                    Label6.Text += "<li><a href =\"evenements-recents.aspx?pID=" + b.ToString() + "\" aria - label = \"Next\" ><i class=\"fa fa-angle-right\"></i></a></li></ul></div>";
                }
                else
                    Label6.Text += "<li><a href = \"#\" aria - label = \"Next\" ><i class=\"fa fa-angle-right\"></i></a></li></ul></div>";
            }
            else
            {
                global.tableevt = new DataTable();
                connexion.cnx.Close();
                connexion.cnx.Open();
                connexion.cmd.CommandText = "select * from evenement order by date_publication_ev desc ";
                MySqlDataReader lire = connexion.cmd.ExecuteReader();
                global.tableevt.Columns.Add("1", typeof(string));
                global.tableevt.Columns.Add("2", typeof(string));
                global.tableevt.Columns.Add("3", typeof(string));
                global.tableevt.Columns.Add("4", typeof(string));
                global.tableevt.Columns.Add("5", typeof(string));
                global.tableevt.Columns.Add("6", typeof(string));
                while (lire.Read() == true)
                {
                    global.tableevt.Rows.Add(lire[8].ToString(), lire[5].ToString(), Convert.ToBase64String((byte[])lire[2]), lire[9].ToString(), lire[1].ToString(), lire[0].ToString());
                    i++;

                    if (i < 7)
                    {
                        lbl_evt.Text += " <div class=\"col col-md-4 col-xs-6\">  <div class=\"title\"> <ul> <li><h3>" + lire[8].ToString() + "</h3></li> <li><i class=\"fa fa-map-marker\"></i>" + lire[5].ToString() + "</li>  </ul>  </div> <div class=\"img-progress\">  <div class=\"img-holder\"><img runat =\"server\" src=\"" + "data:image/png;base64," + Convert.ToBase64String((byte[])lire[2]) + "\"alt class=\"img img-responsive\" /> </div> <div class=\"progress\"> </div>  </div>   <div class=\"donate-amount\">   <ul> <li>Besoins: <span>" + lire[9].ToString() + "</span> </li> <li><i class=\"fa fa-clock-o\"></i> 95 days</li>  </ul>  </div> <div class=\"text\"> <p style=\"overflow: auto; display: inline - block; height: 2em\">" + lire[1].ToString() + "</p>  <a href = 'evenement-single.aspx?id=" + lire[0].ToString() + "' class=\"btn theme-btn\">Voir plus</a>   </div> <br/></div> ";
                    }
                }
              
                lire.Close();
                connexion.cnx.Close();
                if (i % 6 == 0)
                {
                    j = i / 6;
                }
                else
                {
                    j = (i / 6) + 1;
                }
                Label6.Text = "<div class=\"pagination-wrapper\"><ul><li><a href = \"#\" aria-label=\"Previous\"><i class=\"fa fa-angle-left\"></i></a></li>";
                for (int a = 1; a <= j; a++)
                { Label6.Text += "<li><a href=\"evenements-recents.aspx?pID=" + a.ToString() + "\" >" + a.ToString() + "</a></li>\n"; }
                Label6.Text += "<li><a href = \"evenements-recents.aspx?pID=2\" aria - label = \"Next\" ><i class=\"fa fa-angle-right\"></i></a></li></ul></div>";
            }
            //catch (Exception exp) { Response.Redirect("erreur.aspx")}
            //finally {

            //    connexion.cnx.Close(); }


        }
        protected void btn_deconnecter_Click(object sender, EventArgs e)
        {
            Session["id"] = null;
            Response.Redirect("connecter.aspx");
        }


        protected void redir(object sender, EventArgs e)
        {
            Response.Redirect("creer.aspx");
        }
    }
}