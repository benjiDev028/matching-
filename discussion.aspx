<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="discussion.aspx.cs" Inherits="matching.discussion" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Discussion</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        /* Styles personnalisés */
        .panel-custom {
            background-color: #996633;
            color: white;
            padding: 10px;
            border-radius: 5px;
            margin-bottom: 10px;
        }

        .btn-custom {
            width: 100%;
            margin-bottom: 10px;
        }

        .message-item {
            margin-bottom: 10px;
        }

        .nomPrenom {
            font-size: 1.2em;
            margin-bottom: 5px;
        }

        .message {
            font-size: 0.8em;
            color: red;
        }

        .container-flex {
            display: flex;
            gap: 20px;
        }

        #PanelBtn {
            flex-basis: 200px;
        }

        #PanelMessage, #PanelViewMsg {
            flex-grow: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="container mt-3">
        <h2 class="text-center mb-3">CHAT INBOX</h2>
        <div class="container-flex">

            <asp:Panel ID="PanelBtn" runat="server" CssClass="panel-custom">
                <asp:Button ID="btnNouveau" runat="server" Text="Composer" CssClass="btn btn-primary btn-custom" OnClick="btnNouveau_Click" />
                <asp:Button ID="btnMessagesRecus" runat="server" Text="Messages reçus" CssClass="btn btn-secondary btn-custom" OnClick="btnMessagesRecus_Click" />
                <asp:Button ID="btnMessagesEnvoyes" runat="server" Text="Messages envoyés" CssClass="btn btn-secondary btn-custom" OnClick="btnMessagesEnvoyes_Click" />
                <asp:Button ID="btnCorbeille" runat="server" Text="Corbeille" CssClass="btn btn-danger btn-custom" />
            </asp:Panel>

            <asp:Panel ID="PanelMessage" runat="server" CssClass="panel-custom">
                <asp:ListView ID="ListVMessage" runat="server">
                    <ItemTemplate>
                        <div class="message-item">
                            <span class="nomPrenom"><%# Eval("Expediteur.Nom") %> <%# Eval("Expediteur.Prenom") %></span>
                            <span class="message">
                                <asp:LinkButton ID="lnkMessage" runat="server" Text='<%# Eval("message") %>' CommandArgument='<%# Eval("Id") %>' OnClick="lnkMessage_Click" CssClass="text-white" />
                            </span>
                        </div>
                    </ItemTemplate>
                </asp:ListView>
            </asp:Panel>

            <asp:Panel ID="PanelViewMsg" runat="server" CssClass="panel-custom">
                <!-- Votre contenu de PanelViewMsg ici -->
             <asp:Panel ID="Panel1" runat="server" CssClass="panel-custom">
                <span class="nomPrenom">De : <asp:Label ID="lblNomPrenom" runat="server" Text="Label"></asp:Label></span><hr />
                <span class="object">À : <asp:Label ID="lblDest" runat="server" Text="Label"></asp:Label></span><hr />
                <span class="date">Date : <asp:Label ID="lblDate" runat="server" Text="Label"></asp:Label></span><hr />
                <span class="lblObjet">Objet : <asp:Label ID="lblObjet" runat="server" Text="Label"></asp:Label></span><hr />
                <asp:Literal ID="LitShow" runat="server" Visible="false"></asp:Literal><br /><br /><br />
                <asp:Button ID="btnSupprimer" runat="server" Text="Répondre" CssClass="btn btn-success btn-custom" />
                <asp:Button ID="btnRepondre" runat="server" Text="Supprimer" CssClass="btn btn-danger btn-custom" />
            </asp:Panel>
            </asp:Panel>

        </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <asp:Panel ID="PanRedigemsg" runat="server" BackColor="#996633" Height="600px">
            <div class="text-center">
                 <h2 class="text-center mb-3  alert-primary">NEW MESSAGE </h2>
                <br />
                <asp:ListBox ID="lstAmis" runat="server" Width="100%"></asp:ListBox>
                <br />
                <br />
                 <br />
                <asp:TextBox ID="txtMessage" runat="server" AutoCompleteType="Enabled" BackColor="White" CssClass="offset-sm-0" Height="186px" Rows="4" Width="58%"></asp:TextBox>
               
                 <br />
                 <br />
                 <br />
               
                <asp:Button ID="BtnEnvoyer" runat="server" CssClass="btn btn-success btn-custom" Text="Envoyer" />
                <asp:Button ID="btnAnnuler" runat="server" CssClass="btn btn-danger btn-custom" Text="Annuler" OnClick="btnAnnuler_Click" />
                <br />
                <br />
            </div>
        </asp:Panel>
    </form>
    </body>
</html>
