using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace matching.Models
{
    public class Notification
    {
        public int Id { get; set; }
        public int UtilisateurId { get; set; }

        public string Contenu { get; set; }

        public bool EstLu { get; set; }


        public DateTime DateCreation { get; set; } = DateTime.Now;

        public virtual Utilisateur Utilisateur { get; set; }

    }
}