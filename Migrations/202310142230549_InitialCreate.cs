namespace matching.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class InitialCreate : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Messages",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Titre = c.String(),
                        ExpediteurId = c.Int(nullable: false),
                        DestinataireId = c.Int(nullable: false),
                        message = c.String(),
                        DateEnvoye = c.DateTime(nullable: false),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Utilisateurs", t => t.DestinataireId)
                .ForeignKey("dbo.Utilisateurs", t => t.ExpediteurId)
                .Index(t => t.ExpediteurId)
                .Index(t => t.DestinataireId);
            
            CreateTable(
                "dbo.Utilisateurs",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Nom = c.String(),
                        Prenom = c.String(),
                        Email = c.String(),
                        motdepasse = c.String(),
                        AnneedeNaissance = c.Int(nullable: false),
                        Bio = c.String(),
                        sexe = c.String(),
                        interesseBy = c.String(),
                        photo = c.String(),
                    })
                .PrimaryKey(t => t.Id);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Messages", "ExpediteurId", "dbo.Utilisateurs");
            DropForeignKey("dbo.Messages", "DestinataireId", "dbo.Utilisateurs");
            DropIndex("dbo.Messages", new[] { "DestinataireId" });
            DropIndex("dbo.Messages", new[] { "ExpediteurId" });
            DropTable("dbo.Utilisateurs");
            DropTable("dbo.Messages");
        }
    }
}
