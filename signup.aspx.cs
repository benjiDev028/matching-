using matching.Data;
using matching.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace matching
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                remplirGenre();
                remplirSexe();

            }
        }

        private void remplirSexe()
        {
            ListItem femme = new ListItem();
            femme.Text = "Femme";
            femme.Value = "Femme";  // si nécessaire

            ListItem homme = new ListItem();
            homme.Text = "Homme";
            homme.Value = "Homme";  // si nécessaire

            // Supposons que vous ayez une DropDownList appelée ddlSexe :
            DropGenre.Items.Add(femme);
            DropGenre.Items.Add(homme);



        }
        private void remplirGenre()
        {
            ListItem femme = new ListItem();
            femme.Text = "Femme";
            femme.Value = "Femme";  // si nécessaire

            ListItem homme = new ListItem();
            homme.Text = "Homme";
            homme.Value = "Homme";  // si nécessaire

            // Supposons que vous ayez une DropDownList appelée ddlSexe :
            DropSexeOppose.Items.Add(femme);
            DropSexeOppose.Items.Add(homme);
        }

        protected void txtprenom_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropGenre_SelectedIndexChanged(object sender, EventArgs e)
        {
           



        }

        protected void DropSexeOppose_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void brnJoin_Click(object sender, EventArgs e)
        {
            using (var db = new SiteDeRencontreContext())
            {
                var user = new Utilisateur
                {
                    Nom = txtnom.Text,
                    Prenom = txtprenom.Text,
                    sexe = DropSexeOppose.SelectedItem.ToString(),
                    interesseBy = DropSexeOppose.SelectedItem.ToString(),
                    AnneedeNaissance = Convert.ToInt32(txtAnnee.Text),
                    Email = txtMail.Text,
                    motdepasse =txtPassword.Text

                   

                };
                db.Utilisateurs.Add(user);
                db.SaveChanges();
                Response.Redirect("index.aspx");
            }
        }
    }
}