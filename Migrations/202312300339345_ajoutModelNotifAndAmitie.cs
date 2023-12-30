namespace matching.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class ajoutModelNotifAndAmitie : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Amities",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Utilsateur1Id = c.Int(nullable: false),
                        Utilsateur2Id = c.Int(nullable: false),
                        Statut = c.Int(nullable: false),
                        Utilisateur1_Id = c.Int(),
                        Utilisateur2_Id = c.Int(),
                        Utilisateur_Id = c.Int(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Utilisateurs", t => t.Utilisateur1_Id)
                .ForeignKey("dbo.Utilisateurs", t => t.Utilisateur2_Id)
                .ForeignKey("dbo.Utilisateurs", t => t.Utilisateur_Id)
                .Index(t => t.Utilisateur1_Id)
                .Index(t => t.Utilisateur2_Id)
                .Index(t => t.Utilisateur_Id);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Amities", "Utilisateur_Id", "dbo.Utilisateurs");
            DropForeignKey("dbo.Amities", "Utilisateur2_Id", "dbo.Utilisateurs");
            DropForeignKey("dbo.Amities", "Utilisateur1_Id", "dbo.Utilisateurs");
            DropIndex("dbo.Amities", new[] { "Utilisateur_Id" });
            DropIndex("dbo.Amities", new[] { "Utilisateur2_Id" });
            DropIndex("dbo.Amities", new[] { "Utilisateur1_Id" });
            DropTable("dbo.Amities");
        }
    }
}
