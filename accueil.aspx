
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Accueil.aspx.cs" Inherits="matching.accueil" %>
<!DOCTYPE html>
<html lang="fr">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Navbar Example</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />

    <style type="text/css">

        .dropdown 
        {
            margin-right:95px;
        }
        .user-card {
    border: 1px solid #ccc;
    padding: 10px;
    margin: 10px;
    width: 200px;
    display: inline-block;
    vertical-align: top;
}

.user-card img {
    width: 100%;
    height: auto;
}

    </style>
</head>
<body>

<form id="form1" runat="server">
    <nav class="navbar navbar-expand-lg navbar-light bg-light justify-content-between">
        <!-- Logo à gauche -->
        <a class="navbar-brand" href="#">
            <img src="path_to_logo_image" alt="lavalife" />
        </a>

        <!-- Liens au centre -->
        <div class="mx-auto">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="discussion.aspx">Discussion</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Blog</a>
                </li>
            </ul>
        </div>

        <!-- Informations utilisateur et menu déroulant à droite -->
        <!-- Informations utilisateur et menu déroulant à droite -->
<div class="d-flex align-items-center">
    <div id="divinfo" class="mr-3"> <!-- mr-3 is a Bootstrap class to add a right margin -->
        <center>
            <asp:Label ID="h3titre" runat="server" Text="Label" ForeColor="#666666"></asp:Label></center>
        <asp:Label ID="lblnfo" runat="server" Text="Label" Font-Bold="False" Font-Italic="True" ForeColor="#666666"></asp:Label>
        <center runat="server" id="suitP"><p></p></center>
    </div>

    <div class="dropdown">
        <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="userInfoDropdown" data-toggle="dropdown">
            <!-- Remplacer par le code pour afficher le nom d'utilisateur -->
        </a>
        <div class="dropdown-menu" aria-labelledby="userInfoDropdown">
            <a class="dropdown-item" href="MonProfil.aspx">Mon profil</a>
            <a class="dropdown-item" href="MonCompte.aspx">Mon compte</a>
            <a class="dropdown-item" href="Dec.aspx">Déconnexion</a>
        </div>
    </div>
</div>

    </nav><hr />

<section>
    <asp:Label ID="lblsearch" runat="server" Text="Recherche" CssClass="form-label"></asp:Label>
    <div class="d-flex flex-wrap align-items-center gap-2">
        <span>LOOKING:</span>
        <asp:DropDownList ID="ddlLookingFor" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddlLookingFor_SelectedIndexChanged"></asp:DropDownList>

        <span>ANNEE:</span>
        <asp:DropDownList ID="ddlAgeFrom" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddlAgeFrom_SelectedIndexChanged"></asp:DropDownList>

        <span>TO:</span>
        <asp:DropDownList ID="ddlAgeTo" runat="server" CssClass="form-control"></asp:DropDownList>

        <span>VILLE:</span>
        <asp:DropDownList ID="ddlDistance" runat="server" CssClass="form-control"></asp:DropDownList>

        <asp:Button ID="btnSearch" runat="server" Text="SEARCH" CssClass="btn btn-danger" OnClick="btnSearch_Click" />
    </div>
</section>
<asp:Label ID="lblLookInfo" runat="server" Text="Résultats de Recherche" CssClass="form-label mt-3"></asp:Label>

<section>
    <asp:Repeater ID="UserRepeater" runat="server">
        <ItemTemplate>
            <div class="user-card p-3 mb-3 border rounded">
                <h5><%#Eval("prenom")%> <%# Eval("Nom") %></h5>
                <p><%# Eval("AnneedeNaissance") %>, <%# Eval("ville") %></p>
                <p><%# Eval("lookingfor") %></p>
                <div class="d-flex justify-content-around">
                    <a href='discussion.aspx?refM=<%# Eval("Id") %>'>like</a>
                    <a href='discussion.aspx?refM=<%# Eval("Id") %>'>Chat</a>
                    <a href='viewProfile.aspx?refM=<%# Eval("Id") %>'>View profile</a>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</section>

  
</form>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>