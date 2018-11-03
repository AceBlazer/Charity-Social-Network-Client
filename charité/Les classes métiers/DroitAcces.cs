using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace charité.Les_classes_métiers
{
    public class DroitAcces
    {
        private string Oid;
        private string OidEvenement;
        private string Droit;
        private string OidUtilisateur;
        private DateTime DateParticipation;

        public DroitAcces ()
        {
            Oid = Guid.NewGuid().ToString();
            OidEvenement  = "";
            Droit = "Consultateur";
            DateParticipation = DateTime.Now;
            OidUtilisateur = "";
        }

        public DroitAcces(string id , string idEvt ,string idUtilisateur ,string droitAcces, DateTime date )
        {
            Oid = id;
            OidEvenement = idEvt ;
            Droit = droitAcces;
            DateParticipation = date;
            OidUtilisateur = idUtilisateur;
        }

        public string GetOid()
        {
            return Oid;
        }

        public void SetOid(string value)
        {
            Oid = value;
        }

        public string GetOidUtilisateur()
        {
            return OidUtilisateur;
        }

        public void SetUtilisateur(string value)
        {
            OidUtilisateur = value;
        }

        public string GetOidEvenement()
        {
            return OidEvenement;
        }

        public void SetEvenement(string value)
        {
            OidEvenement = value;
        }

        public string GetDroit()
        {
            return Droit;
        }

        public void SetDroit(string value)
        {
            Droit  = value;
        }

        public DateTime GetDateParticipation()
        {
            return DateParticipation;
        }

        public void SetDateParticipation(DateTime value)
        {
            DateParticipation = value;
        }
        public string GetDateParticipationToString()
        {
            string formatForMySql = DateParticipation.ToString("yyyy-MM-dd HH:mm");
            return formatForMySql ;
        }

    }
}