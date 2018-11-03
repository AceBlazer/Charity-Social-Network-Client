using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace charité.Les_classes_métiers
{
    public class Message
    {
        private string Oid;
        private string Contenu;
        private DateTime DateEnvoi;
        private string OidExpiditeur;
        private string OidRecepteur;

        public Message()
        {
            Oid = Guid.NewGuid().ToString();
            Contenu = "";
            DateEnvoi = DateTime.Now;
            OidExpiditeur = "";
            OidRecepteur = "";
        }

        public Message (string id, string contenuMessage, string IdExpediteur, string idRecepteur, DateTime dateEnv)
        {
            Oid = id;
            Contenu = contenuMessage;
            DateEnvoi  = dateEnv;
            OidExpiditeur = IdExpediteur;
            OidRecepteur = idRecepteur;
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
            return Contenu;
        }

        public void SetContenu(string value)
        {
            Contenu = value;
        }

        public string GetOidExpediteur()
        {
            return OidExpiditeur;
        }

        public void SetOidExpediteur(string value)
        {
            OidExpiditeur = value;
        }

        public string GetOidRecepteur()
        {
            return OidRecepteur;
        }

        public void SetOidRecepteur(string value)
        {
            OidRecepteur = value;
        }

        public DateTime GetDateEnvoi()
        {
            return DateEnvoi;
        }

        public void SetDateEnvoi (DateTime value)
        {
            DateEnvoi = value;
        }
    }
}