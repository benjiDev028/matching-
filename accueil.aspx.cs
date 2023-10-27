using matching.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace matching
{
    public partial class accueil : System.Web.UI.Page
    {
        static Int32 refUser;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                LookingFor();
                FillYearsFrom();
                FillYearsTo();
                AddCities();
                lblsearch.Text = "Username search + ".ToUpper();
                // lblLooking.Text = "Looking  :   ".ToUpper();


                refUser = Convert.ToInt32(Session["userId"]);
                using (var db = new SiteDeRencontreContext())
                {
                    var user = db.Utilisateurs.FirstOrDefault(s => s.Id == refUser);

                    if (user != null)
                    {
                        Int32 age = DateTime.Now.Year - user.AnneedeNaissance;

                        h3titre.Text = user.Prenom.ToUpper();
                        lblnfo.Text = age.ToString() + "," + user.interesseBy.ToString();
                        //Label1.Text = " ed";

                    }
                }
            }
        }

        private void AddCities()
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
            ddlDistance.DataSource = cities;
            ddlDistance.DataBind();
        }

        private void FillYearsTo()
        {
            int currentYear = DateTime.Now.Year;
            for (int year = 1960; year <= currentYear; year++)
            {
                ddlAgeTo.Items.Add(new ListItem(year.ToString(), year.ToString()));
            }
        }

        private void FillYearsFrom()
        {
            int currentYear = DateTime.Now.Year;
            for (int year = 1960; year <= currentYear; year++)
            {
                ddlAgeFrom.Items.Add(new ListItem(year.ToString(), year.ToString()));
            }
        }

        private void LookingFor()
        {
            ddlLookingFor.Items.Add(new ListItem("Causal Dae"));
            ddlLookingFor.Items.Add(new ListItem("One night ", "1"));
            ddlLookingFor.Items.Add(new ListItem("long term", "2"));
            ddlLookingFor.Items.Add(new ListItem("Relationship", "3"));
            ddlLookingFor.Items.Add(new ListItem("serious", "4"));

            if (ddlLookingFor.SelectedValue == "0")
            {

            }

        }

        protected void ddlLookingFor_SelectedIndexChanged(object sender, EventArgs e)
        {


        }

        protected void ddlAgeFrom_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            using (var db = new SiteDeRencontreContext())
            {
                if (ddlLookingFor.SelectedValue == "0")
                {
                    lblLookInfo.Text = "please ! ";
                }
                var lookFor = ddlLookingFor.SelectedItem.ToString();


                var selectedCity = ddlDistance.SelectedItem.ToString();
                var ageFrom = int.Parse(ddlAgeFrom.SelectedItem.ToString());
                var ageTo = int.Parse(ddlAgeTo.SelectedItem.ToString());

                var users = db.Utilisateurs
                               .Where(u => u.lookingfor == lookFor ||
                                           u.ville == selectedCity ||
                                           (u.AnneedeNaissance >= ageFrom && u.AnneedeNaissance <= ageTo))
                               .ToList();
                
                UserRepeater.DataSource = users;
                UserRepeater.DataBind();
            }
        }
    }
}