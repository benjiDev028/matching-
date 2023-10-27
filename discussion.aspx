<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="discussion.aspx.cs" Inherits="matching.discussion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
    /* Stylisation de la liste */
.list-item {
    display: flex;
    align-items: center;
    margin-bottom: 10px;
}

/* Stylisation de l'avatar */
.list-item .avatar {
    width: 40px;
    height: 40px;
    border-radius: 50%;
    margin-right: 10px;
    background-color: #ddd; /* Couleur par défaut si aucune image n'est définie */
}

/* Stylisation du nom de l'utilisateur */
.list-item .username {
    font-weight: bold;
}

/* Stylisation du texte sous le nom de l'utilisateur */
.list-item .user-text {
    font-size: 12px;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListView ID="ListVMessage" runat="server">
    <ItemTemplate>
        <div class="list-item">
            <!-- Avatar -->
         <%--   <div class="avatar" style='background-image: url("<%# Eval("photo") %>");'></div>--%>
            
            <!-- Nom de l'utilisateur -->
            <div>
                <div class="username"><%# Eval("Expediteur.Nom") %> <%# Eval("Expediteur.Prenom") %></div>
                
                <!-- Texte sous le nom de l'utilisateur -->
                <div class="user-text"><%# LimitText(Eval("message").ToString(), 15) %></div> 
                <!-- Limiter le texte à 15 caractères comme exemple -->
            </div>
        </div>
    </ItemTemplate>
</asp:ListView>

        </div>
    </form>
</body>
</html>
