using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace charité
{
    public class Evenement
    {
        private string Oid ;
        private string titre ;
        private string description;
        private string image;
        private string depart;
        private string arrivee;
        private DateTime datedepart ;
        private DateTime datearrive;
        private DateTime datepublication;
        private string categorie;
        private string OidCreateur;


        public Evenement (string id, string tit, string desc, string img, string Ldepart, string Larrive, string categ,DateTime datedep , DateTime datearr, DateTime datepub,string IdCreateur)
        {
            Oid = id;
            titre = tit;
            description = desc;
            image = img;
            depart = Ldepart;
            arrivee = Larrive;
            categorie = categ;
            datedepart = datedep;
            datearrive = datearr;
            datepublication = datepub;
            OidCreateur = IdCreateur;
        }
        public string GetOid()
        {
            return Oid ;
        }

        public void SetOid(string value)
        {
            Oid  = value;
        }

        public string GetTitre()
        {
            return titre ;
        }

        public void SetTitre(string value)
        {
           titre   = value;
        }

        public string GetDescription()
        {
            return description ;
        }

        public void SetDescription(string value)
        {
            description  = value;
        }

        public string GetImage()
        {
            return image ;
        }

        public void SetImage(string value)
        {
            image  = value;
        }

        public string GetDepart()
        {
            return depart ;
        }

        public void SetDepart(string value)
        {
            depart  = value;
        }

        public string GetArrivee()
        {
            return arrivee ;
        }

        public void SetArrivee(string value)
        {
           arrivee  = value;
        }

        public DateTime  GetDateDep()
        {
            return datedepart;
        }

        public void SetDatedep(DateTime  value)
        {
           datedepart   = value;
        }

        public DateTime  GetDateArr()
        {
            return datearrive ;
        }

        public void SetDateArr(DateTime value)
        {
           datearrive   = value;
        }

        public DateTime GetDatePub()
        {
            return datepublication ;
        }

        public void SetDatePub(DateTime value)
        {
            datepublication  = value;
        }

        public string GetCategorie()
        {
            return categorie ;
        }

        public void SetCategorie(string value)
        {
          categorie = value;
        }

    }
}