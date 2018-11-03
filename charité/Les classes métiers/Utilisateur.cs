
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace charité
{
    public class Utilisateur
    {
            private string Oid;
            private string nom;
            private string prenom;
            private string image;
            private string adresse;
            private string fonction;
            private string mail;
            private string password;
            private DateTime datenaissance  ;
            private string sexe ;

        public Utilisateur()
        {
            Oid= Guid.NewGuid().ToString();
            nom = "";
            prenom = "";
            image = "";
            adresse = "";
            fonction = "";
            mail = "";
            password = "";
            datenaissance = DateTime.Now ;
            sexe = "";
        }
        public Utilisateur(string id , string NomUser , string PrenomUser , string img , string adresseUser , string fonctionUser, string emailUser , string passwordUser , DateTime naissance,string sexeUser)
        {
            Oid = id;
            nom = NomUser;
            prenom = PrenomUser;
            image = img;
            adresse = adresseUser;
            fonction = fonctionUser;
            mail = emailUser;
            password = passwordUser;
            datenaissance = naissance;
            sexe = sexeUser;

        }

        public string GetOid()
        {
            return Oid  ;
        }

        public void SetOid(string value)
        {
            Oid = value;
        }

        public string GetNom()
        {
            return nom ;
        }

        public void SetNom(string value)
        {
           nom  = value;
        }

        public string GetPrenom()
        {
            return prenom;
        }

        public void SetPrenom(string value)
        {
            prenom = value;
        }

        public string GetImage()
        {
            return image;
        }

        public void SetImage(string value)
        {
            image = value;
        }

        public string GetAdresse()
        {
            return adresse ;
        }

        public void SetAdress(string value)
        {
            adresse = value;
        }

        public string GetFonction()
        {
            return fonction ;
        }

        public void SetFonction(string value)
        {
            fonction  = value;
        }

        public string GetMail()
        {
            return mail ;
        }

        public void SetMail(string value)
        {
             mail = value;
        }

        public string GetPassword()
        {
            return password ;
        }

        public void SetPassword(string value)
        {
            password  = value;
        }

        public DateTime  GetNaissance()
        {
            return datenaissance ;
        }

        public void Set(DateTime  value)
        {
            datenaissance  = value;
        }

        public string GetSexe()
        {
            return sexe ;
        }

        public void SetSexe(string value)
        {
            sexe  = value;
        }



    }
}