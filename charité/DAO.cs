using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace charité
{
    public class DAO
    {

        //return 2 si effectuer et 0 sinon
        public int supprimerCollaborateur(string idUser)
        {
            int x = 0;
            int y = 0;
            connexion.cnx.Open();
            connexion.cmd.CommandText = "delete from collaborateurs where utilisateur='" + idUser + "'";
            x = connexion.cmd.ExecuteNonQuery();
            connexion.cmd.CommandText = "insert into collaborateurs(Oid,utilisateur) values('" + Guid.NewGuid().ToString() + "','" + idUser + "')";
            y = connexion.cmd.ExecuteNonQuery();
            connexion.cnx.Close();
            return (x+y);

        }

    }
}