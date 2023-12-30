using matching.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace matching
{
     
    public partial class viewProfile : System.Web.UI.Page
    {
        public static Int32  refId ; 
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack==false)
            {
                refId =Convert.ToInt32(Request.QueryString["refM"]);

                using (var db = new SiteDeRencontreContext())
                {
                    var user = db.Utilisateurs.FirstOrDefault(u=> u.Id == refId);

                    lblNom.InnerHtml = user.Prenom.ToString() + user.Nom.ToString();
                    lblVille.InnerHtml = user.ville.ToString();
                    lblLook.InnerText = user.lookingfor.ToString();
                    
                   var relation = db.
                }
            }
            
        }
    }
}