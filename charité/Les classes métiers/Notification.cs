using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace charité.Les_classes_métiers
{
    public class Notification
    {
        private string Oid;
        private string Contenu;
        private string Lien;
        private DateTime date;
        private string OidUtilisateur;
        private int etat;

        public Notification()
        {
            Oid = Guid.NewGuid().ToString();
            Contenu  = "";
            Lien  = "";
            date = DateTime.Now;
            OidUtilisateur  = "";
            etat  = 0 ;
        }

        public Notification(string id , string cont , string lienNotf ,DateTime dateNotf ,string IdUtilisateur, int etatNotf)
        {
            Oid = Guid.NewGuid().ToString();
            Contenu =cont;
            Lien = lienNotf ;
            date =dateNotf ;
            OidUtilisateur =IdUtilisateur ;
            etat =etatNotf ;
        }

        public string GetOid()
        {
            return Oid;
        }

        public void SetOid(string value)
        {
            Oid = value;
        }

        public string GetContinu()
        {
            return Contenu ;
        }

        public void SetContenu(string value)
        {
            Contenu  = value;
        }

        public string GetLien()
        {
            return Lien;
        }

        public void SetLien(string value)
        {
            Lien  = value;
        }

        public string GetOidUtilisateur()
        {
            return OidUtilisateur;
        }

        public void SetUtilisateur(string value)
        {
            OidUtilisateur = value;
        }

        public int GetEtat()
        {
            return etat ;
        }

        public void SetEtat(int  value)
        {
            etat  = value;
        }

        public DateTime  GetDate()
        {
            return date ;
        }

        public void SetDate(DateTime value)
        {
            date = value;
        }

    }
}