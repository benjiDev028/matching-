using matching.Data;
using matching.Models;
using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Net.Mime;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace matching
{
    public partial class discussion : System.Web.UI.Page
    {
        static Int32 refUser;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                PanRedigemsg.Visible = false;

                if (PanRedigemsg.Visible == false)
                {
                    btnNouveau.Visible = true;
                }
                
                refUser = Convert.ToInt32(Session["userId"]);
                using (var db = new SiteDeRencontreContext())
                {
                    var user = db.Utilisateurs.First(u => u.Id == refUser);
                    

                    var messages = db.Messages.Where(m => m.DestinataireId == refUser).Include(m => m.Expediteur).ToList();

                    ListVMessage.DataSource = messages;
                    ListVMessage.DataBind();
                    PanelViewMsg.Visible = false;
                    btnRepondre.Visible = false;
                    btnSupprimer.Visible = false;

                }
            }
        }
        protected string LimitText(string text, int maxLength)
        {
            if (string.IsNullOrEmpty(text)) return string.Empty;
            return text.Length <= maxLength ? text : text.Substring(0, maxLength);
        }

        protected void btnMessagesRecus_Click(object sender, EventArgs e)
        {
            using (var db = new SiteDeRencontreContext())
            {
                refUser = Convert.ToInt32(Session["userId"]);
                var user = db.Utilisateurs.First(u => u.Id == refUser);
                ListVMessage.DataSource = user.MessagesRecus;
                ListVMessage.DataBind();
            }
        }

        protected void btnMessagesEnvoyes_Click(object sender, EventArgs e)
        {
            using (var db = new SiteDeRencontreContext())
            {
                refUser = Convert.ToInt32(Session["userId"]);
                var user = db.Utilisateurs.First(u => u.Id == refUser);
                ListVMessage.DataSource = user.MessagesEnvoyes;
                ListVMessage.DataBind();
            }
        }




        protected void ListVMessage_ItemCommand(object sender, ListViewCommandEventArgs e)
        {

            if (e.CommandName == "ShowDetails")
            {
                int messageId = Convert.ToInt32(e.CommandArgument);


                // Obtenez les détails du message à partir de la base de données.
                using (var db = new SiteDeRencontreContext())
                {
                    var message = db.Messages
                                    .Include(m => m.Expediteur)
                                    .FirstOrDefault(m => m.Id == messageId);

                    if (message != null)
                    {
                        // Mettez à jour le PanelDetails avec les détails du message.
                        List<List<matching.Models.Message>> messagesList = new List<List<matching.Models.Message>>() { new List<matching.Models.Message>() { message } };

                        //ListView1.DataSource = messagesList;
                        //ListView1.DataBind();

                        //PanelDetails.Visible = true;
                    }
                }


            }
        }
        protected void lnkMessage_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            string messageId = btn.CommandArgument;
            // Redirection ou autre logique avec l'ID du message

            //Response.Redirect($"crudMessage.aspx?refM={messageId}");

            using (var db = new SiteDeRencontreContext())
            {
                var message = db.Messages.FirstOrDefault(u => u.Id.ToString() == messageId);
                if (message != null)
                {
                    PanelViewMsg.Visible = true;

                   
                    lblNomPrenom.Text = message.Expediteur.Prenom + " " + message.Expediteur.Nom;
                    lblDest.Text = message.Destinataire.Prenom + " " + message.Destinataire.Nom;
                    lblDate.Text = message.DateEnvoye.ToLongDateString();
                    lblObjet.Text = message.Titre;
                    
                    LitShow.Visible = true;
                    btnRepondre.Visible = btnSupprimer.Visible = true;
                    LitShow.Text = message.message;

                }
            }

        }

        protected void btnNouveau_Click(object sender, EventArgs e)
        {
            PanRedigemsg.Visible = true;
            btnNouveau.Enabled = false;

            
        }

        protected void btnAnnuler_Click(object sender, EventArgs e)
        {
            PanRedigemsg.Visible = false;
            btnNouveau.Enabled = true;
        }
    }
}