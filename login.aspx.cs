using matching.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace matching
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            using (var db = new SiteDeRencontreContext())
            {
                var user = db.Utilisateurs.FirstOrDefault(
                    u => u.Email == txtCourriel.Text && u.motdepasse==(txtPassword.Text));

                if (user != null)
                {
                   
                    Session["userId"]  = user.Id;
                    Response.Redirect("accueil.aspx");


                    // lblInfo.Text = " bienvenue" + user.Id.ToString();

                }
                else
                {

                    lblInfo.Text = "adresse email ou mot de passe incorrecte";
                    
                }
            }
        }
    }
}