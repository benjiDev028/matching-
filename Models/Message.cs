using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace matching.Models
{
    public class Message
    {
        public int Id { get; set; }
        public string Titre { get; set; }
        public int  ExpediteurId { get; set; }
        public int  DestinataireId { get; set; }
        public string message { get; set; }
        public DateTime DateEnvoye { get; set; } = DateTime.Now;

        // Relations
        public virtual Utilisateur Expediteur { get; set; }
        public virtual Utilisateur Destinataire { get; set; }
    }
}