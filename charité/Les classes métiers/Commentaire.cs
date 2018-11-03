using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace charité.MesClasses
{
    public class Commentaire
    {
        private string Oid;
        private string Contenu;
        private DateTime DatePublication;
        private string OidCreateur;
        private string OidPublication;

        public Commentaire()
        {
            Oid = Guid.NewGuid().ToString();
            Contenu = "";
            DatePublication = DateTime.Now;
            OidCreateur = "";
            OidPublication = "";
        }

        public Commentaire (string id, string contenuCommentaire, string IdCreateur, string idPub ,DateTime datePub)
        {
            Oid = id;
            Contenu = contenuCommentaire;
            DatePublication = datePub;
            OidCreateur = IdCreateur;
            OidPublication = idPub;
        }

        public string GetOid()
        {
            return Oid;
        }

        public void SetOid(string value)
        {
            Oid = value;
        }

        public string GetContenu()
        {
            return Contenu ;
        }

        public void SetContenu(string value)
        {
            Contenu = value;
        }

        public string GetOidCreateur()
        {
            return OidCreateur;
        }

        public void SetOidCreateur(string value)
        {
            OidCreateur = value;
        }

        public string GetOidPublication()
        {
            return OidPublication;
        }

        public void SetOidPublication(string value)
        {
            OidPublication = value;
        }

        public DateTime  GetDatePublication()
        {
            return DatePublication ;
        }

        public void SetDatePublication(DateTime value)
        {
            DatePublication = value;
        }
    }
}