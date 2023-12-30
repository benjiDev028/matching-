<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewProfile.aspx.cs" Inherits="matching.viewProfile" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Profile</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style type="text/css">
        .auto-style1 {
            position: relative;
            width: 100%;
            -ms-flex: 0 0 33.333333%;
            flex: 0 0 33.333333%;
            max-width: 33.333333%;
            left: 0px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
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
                    <a class="nav-link" href="#">Discussion</a>
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
        <div class="container mt-5">
            <div class="card" style="width: 18rem;">
                <!-- Profile Image Placeholder -->
                <img src="path-to-your-placeholder-image.jpg" class="card-img-top" alt="Profile Image Placeholder">
                
                <div class="card-body">
                    <!-- Profile Information -->
                    <h5 runat="server" id="lblNom"  class="card-title">  </h5>
                    <p runat="server" id="lblVille" class="card-text"></p>
                    <p><strong>Zodiac Sign</strong><br />Pisces</p>
                    <p runat="server" id="lblLook"><strong>Preference</strong><br /></p>
                    <p><strong>Will You Click?</strong><br /> Send a message to learn more about her/he.</p>
                    <!-- View Profile Button -->
                    <a href='<%="discussion.aspx?refM=" + refId %>' class="btn btn-primary">CHAT</a>&nbsp;
                    <a href='<%="notifaction.aspx?refM=" + refId %>' class="btn btn-primary">connaissance ? </a>&nbsp;
                </div>
            </div>
        </div>
       

<!-- Footer -->
<footer class="bg-dark text-white p-4">
    <div class="container">
        <div class="row">
            <!-- Lavalife.com Discussion Section -->
            <div class="auto-style1">
                <h5>Lavalife.com Discussion</h5>
                <p>
                    Lavalife.com is Where Singles Click...and have since 2001! We're committed to offering our members a fun and safe place to meet new people.
                </p>
                <p>
                    Interested in trying Lavalife? <a href="#" class="text-primary">Create your free profile</a> now and receive a 7-day free trial - no strings attached. Or get a feel for what Lavalife has to offer by browsing the forum above.
                </p>
            </div>
            
            <!-- Contact Us Section -->
            <div class="col-md-4">
                <h5>Contact Us</h5>
                <address>
                    530 Kipling Avenue, Toronto ON M8Z 5E3 <br>
                    <abbr title="Phone">P:</abbr> 1.866.371.8906 <br>
                    <abbr title="Email">E:</abbr> <a href="mailto:customercare@lavalife.com">customercare@lavalife.com</a>
                </address>
            </div>

            <!-- Discussion 101 & Social Links Section -->
            <div class="col-md-4">
                <h5>Discussion 101</h5>
                <ul class="list-unstyled">
                    <li><a href="#" class="text-white">Rules</a></li>
                    <li><a href="#" class="text-white">FAQ</a></li>
                    <li><a href="#" class="text-white">Terms of Use</a></li>
                    <li><a href="#" class="text-white">Privacy Policy</a></li>
                    <li><a href="#" class="text-white">Code of Ethics</a></li>
                </ul>
                <h5>Get Social with Us</h5>
                <ul class="list-inline">
                    <li class="list-inline-item"><a href="#" class="text-white"><i class="fab fa-pinterest"></i></a></li>
                    <li class="list-inline-item"><a href="#" class="text-white"><i class="fab fa-youtube"></i></a></li>
                    <li class="list-inline-item"><a href="#" class="text-white"><i class="fab fa-twitter"></i></a></li>
                    <li class="list-inline-item"><a href="#" class="text-white"><i class="fab fa-facebook"></i></a></li>
                    <li class="list-inline-item"><a href="#" class="text-white"><i class="fab fa-google-plus"></i></a></li>
                    <li class="list-inline-item"><a href="#" class="text-white"><i class="fab fa-linkedin"></i></a></li>
                    <li class="list-inline-item"><a href="#" class="text-white"><i class="fab fa-rss"></i></a></li>
                </ul>
            </div>
        </div>
    </div>
</footer>

<!-- Optional Bootstrap JS & Font Awesome JS -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"></script>
</body>
</html>

