using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;

namespace matching.Models
{
    public class Utilisateur
    {
        public int Id { get; set; }
        public string Nom { get; set; }
        public string Prenom { get; set; }
        public string Email { get; set; }
        public string motdepasse { get; set; }
        public int AnneedeNaissance { get; set; }
        public string  Bio {  get; set; }

        public string sexe { get; set; }

        public string  interesseBy  { get; set; }

        public string ville {  get; set; }

        public string  lookingfor { get; set; }

        public string photo {  get; set; }

        public virtual ICollection<Message> MessagesRecus {  get; set; }
        public virtual ICollection <Message> MessagesEnvoyes { get; set;}

    }
}