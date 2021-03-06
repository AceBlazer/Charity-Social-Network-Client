﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace charité.MesClasses
{
    public class Demande
    {
        private string Oid;
        private string titre;
        private string description;
        private string image;
        private string Lieu;
        private DateTime datepublication;
        private string categorie;
        private string OidCreateur;

        public Demande()
        {
            Oid = Guid.NewGuid().ToString();
            titre = "";
            description = "";
            image = "";
            Lieu = "";
            datepublication = DateTime.Now;
            categorie = "";
            OidCreateur = "";
        }

        public Demande (string id , string titreDemande,string desc,string img ,string lieuDemande,DateTime datePub , string catg ,string idCreateur)
        {
            Oid = id;
            titre = titreDemande;
            description = desc;
            image = img;
            Lieu = lieuDemande;
            datepublication = datePub;
            categorie = catg;
            OidCreateur = idCreateur;
        }
        public string GetOid()
        {
            return Oid;
        }

        public void SetOid(string value)
        {
            Oid = value;
        }

        public string GetTitre()
        {
            return titre;
        }

        public void SetTitre(string value)
        {
            titre = value;
        }
        public string GetImage()
        {
            return image ;
        }

        public void SetImage(string value)
        {
            image  = value;
        }

        public string GetDescription()
        {
            return description ;
        }

        public void SetDescription(string value)
        {
            description = value;
        }

        public string GetLieu()
        {
            return Lieu ;
        }

        public void SetLieu(string value)
        {
            Lieu  = value;
        }

        public string GetCategorie()
        {
            return categorie ;
        }

        public void SetCategorie(string value)
        {
            categorie  = value;
        }

        public string GetCreateur()
        {
            return OidCreateur ;
        }

        public void SetCreateur(string value)
        {
            OidCreateur  = value;
        }

        public DateTime  GetDatePub()
        {
            return datepublication ;
        }

        public void SetDatePub(DateTime value)
        {
            datepublication = value;
        }
    }
}