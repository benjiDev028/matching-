namespace matching.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddNewFieldToUtilisateur : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Utilisateurs", "ville", c => c.String());
            AddColumn("dbo.Utilisateurs", "lookingfor", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.Utilisateurs", "lookingfor");
            DropColumn("dbo.Utilisateurs", "ville");
        }
    }
}
