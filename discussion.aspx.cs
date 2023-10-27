using matching.Data;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace matching
{
    public partial class discussion : System.Web.UI.Page
    {
        static Int32 refUser;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack==false)
            {
                refUser = Convert.ToInt32(Session["userId"]);
                using ( var db =new SiteDeRencontreContext())
                {
                    var user = db.Utilisateurs.First(u => u.Id == refUser);

                    var messages = db.Messages.Where(m => m.DestinataireId == refUser).Include(m => m.Expediteur).ToList();
                    ListVMessage.DataSource = messages;
                        ListVMessage.DataBind();
                    
                }
            }
        }
        protected string LimitText(string text, int maxLength)
        {
            if (string.IsNullOrEmpty(text)) return string.Empty;
            return text.Length <= maxLength ? text : text.Substring(0, maxLength);
        }


    }
    

}