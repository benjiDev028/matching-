using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace matching
{
    public partial class crudMessage : System.Web.UI.Page
    {
        static string messageID;
        protected void Page_Load(object sender, EventArgs e)
        {

            if(Page.IsPostBack == false)
            {
                messageID = Request.QueryString["refM"];
                lblTest.Text = messageID;
            }
        }
    }
}