using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using matching.Models;

namespace matching.Data
{
    public class SiteDeRencontreContext : DbContext
    {
        public DbSet<Utilisateur> Utilisateurs { get; set; }
        public DbSet<Message> Messages { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            // Spécifiez les relations pour les messages
            modelBuilder.Entity<Message>()
                .HasRequired(m => m.Expediteur)
                .WithMany(u => u.MessagesEnvoyes)
                .HasForeignKey(m => m.ExpediteurId)
                .WillCascadeOnDelete(false); // Évitez la suppression en cascade

            modelBuilder.Entity<Message>()
                .HasRequired(m => m.Destinataire)
                .WithMany(u => u.MessagesRecus)
                .HasForeignKey(m => m.DestinataireId)
                .WillCascadeOnDelete(false);
        }
        }
}