using matching.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace matching
{
    public partial class essaie : System.Web.UI.Page
    {
        static Int32 refId;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                addCities();
                LookingFor();

                if (Session["userId"] != null)
                {
                    refId = Convert.ToInt32(Session["userId"]);

                    using (var db = new SiteDeRencontreContext())
                    {
                        var user = db.Utilisateurs.FirstOrDefault(
                            u => u.Id == refId);

                        //ddlInters.Items.Insert(0, new ListItem(user.interesseBy));
                        //ddlInters.Items.Add("homme");
                        //ddlInters.Items.Add("femme");



                        //ajout city
                        ddlCity.Items.Insert(0, new ListItem(user.ville));
                        //ajout relation rechercher
                        ddlLook.Items.Insert(0, new ListItem(user.lookingfor));

                        ddlAnnee.Items.Insert(0, new ListItem(user.AnneedeNaissance.ToString()));
                        int currentYear = DateTime.Now.Year;
                        for (int year = 1960; year <= currentYear; year++)
                        {
                            ddlAnnee.Items.Add(new ListItem(year.ToString(), year.ToString()));
                        }



                        ddlInters.Items.Clear();  // Pour éviter des doublons lors des appels multiples

                        // Ajoutez d'abord les éléments
                        ddlInters.Items.Add(new ListItem("homme", "1"));
                        ddlInters.Items.Add(new ListItem("femme", "2"));

                        // Ajustez l'ordre selon la valeur de user.interesse
                        if (user.interesseBy == "femme")
                        {
                            ListItem itemFemme = ddlInters.Items.FindByText("femme");
                            ddlInters.Items.Remove(itemFemme);
                            ddlInters.Items.Insert(0, itemFemme);
                        }
                        else if (user.interesseBy == "homme")
                        {
                            ListItem itemHomme = ddlInters.Items.FindByText("homme");
                            ddlInters.Items.Remove(itemHomme);
                            ddlInters.Items.Insert(0, itemHomme);
                        }

                        //sexe

                        ddlSexe.Items.Clear();  // Pour éviter des doublons lors des appels multiples

                        // Ajoutez d'abord les éléments
                        ddlSexe.Items.Add(new ListItem("homme", "1"));
                        ddlSexe.Items.Add(new ListItem("femme", "2"));

                        // Ajustez l'ordre selon la valeur de user.interesse
                        if (user.sexe == "femme")
                        {
                            ListItem itemFemme = ddlSexe.Items.FindByText("femme");
                            ddlSexe.Items.Remove(itemFemme);
                            ddlSexe.Items.Insert(0, itemFemme);
                        }
                        else if (user.sexe == "homme")
                        {
                            ListItem itemHomme = ddlInters.Items.FindByText("homme");
                            ddlSexe.Items.Remove(itemHomme);
                            ddlSexe.Items.Insert(0, itemHomme);
                        }


                    }
                }

            }
        }

        private void addCities()
        {

            List<string> cities = new List<string>()
{
    "Toronto",
    "Vancouver",
    "Montreal",
    "Calgary",
    "Ottawa",
    "Edmonton",
    "Winnipeg",
    "Quebec City",
    "Hamilton",
    "Kitchener",
    "London",
    "Halifax",
    "Regina",
    "Saskatoon",
    "Victoria",
    "St. John's",
    "Windsor",
    "Oshawa",
    "Surrey",
    "Laval",
    "Gatineau",
    "Longueuil",
    "Burnaby",
    "Sherbrooke",
    "Barrie",
    "Kelowna",
    "Abbotsford",
    "Trois-Rivières",
    "St. Catharines",
    "Guelph",
    "Cambridge",
    "Whitby",
    "Kingston",
    "Waterloo",
    "Brampton",
    "Delta",
    "Thunder Bay",
    "Richmond Hill",
    "Red Deer",
    "Pickering",
    "Kamloops",
    "Saint-Jean-sur-Richelieu",
    "Niagara Falls",
    "Shawinigan",
    "Chatham",
    "Cape Breton",
    "Lethbridge",
    "Peterborough",
    "Markham",
    "Vaughan"



            };
            ddlCity.DataSource = cities;
            ddlCity.DataBind();


        }
        private void LookingFor()
        {
            ddlLook.Items.Add(new ListItem("Causal Date"));
            ddlLook.Items.Add(new ListItem("One night ", "1"));
            ddlLook.Items.Add(new ListItem("long term", "2"));
            ddlLook.Items.Add(new ListItem("Relationship", "3"));
            ddlLook.Items.Add(new ListItem("serious", "4"));

            if (ddlLook.SelectedValue == "0")
            {

            }

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            using (var db = new SiteDeRencontreContext())
            {
                var user = db.Utilisateurs.FirstOrDefault(u => u.Id == refId);

                user.interesseBy = ddlInters.SelectedItem.ToString();
                user.ville = ddlCity.SelectedItem.ToString();
                user.lookingfor = ddlLook.SelectedItem.ToString();
                user.sexe = ddlSexe.SelectedItem.ToString();
                user.AnneedeNaissance =Convert.ToInt32(ddlAnnee.SelectedItem.ToString());
                db.SaveChanges();
                Response.Redirect("accueil.aspx");
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("accueil.aspx");
        }
    }
}