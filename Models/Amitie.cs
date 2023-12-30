using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace matching.Models
{
    public class Amitie
    {
        public int Id { get; set; }
        public int Utilsateur1Id { get; set; }
        public int Utilsateur2Id { get; set; }
        public StatutAmitie Statut { get; set; }


        public virtual Utilisateur Utilisateur1 { get; set; }
        public virtual Utilisateur Utilisateur2 { get; set; }
    }

    public enum StatutAmitie
    {
        Demandee,
        Acceptee,
        Refusee
    }
}