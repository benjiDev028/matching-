<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="crudMessage.aspx.cs" Inherits="matching.crudMessage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Gestion des Messages</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet"/>
    <style type="text/css">
        .container-custom {
            margin-top: 20px;
        }

        .header-custom {
            margin-bottom: 30px;
        }

        .alert-custom {
            margin-bottom: 20px;
        }

        /* Ajoutez ici d'autres styles personnalisés si nécessaire */
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">Matching App</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="Accueil.aspx">Accueil</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Gérer les Messages</a>
                    </li>
                    <!-- Autres liens de navigation si nécessaires -->
                </ul>
            </div>
        </nav>
        <div class="container container-custom">
            <h2 class="header-custom">Gestion des Messages</h2>
            <asp:Label ID="lblTest" runat="server" Text="Message" CssClass="alert alert-info alert-custom"></asp:Label>
            <!-- Ici, ajoutez d'autres éléments de formulaire et boutons pour la gestion des messages -->
        </div>
    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
