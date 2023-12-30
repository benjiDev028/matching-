<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MonProfil.aspx.cs" Inherits="matching.essaie" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mon Profil</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        #haut {
            background-color: aquamarine;
            width: 100%;
            height: 300px;
            position: relative;
            text-align: center;
        }

        #img {
            width: 200px;
            height: 200px;
            background-color: azure;
            position: absolute;
            bottom: 0;
            left: 50%;
            transform: translateX(-50%);
        }

        .form-section {
            padding: 20px;
        }

        .form-label {
            font-weight: bold;
        }

        .form-control {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="haut">
            <div id="img">
                <h1>Photo</h1>
            </div>
        </div>
      
        <section class="form-section">
            <asp:Panel ID="PanInfo" runat="server" CssClass="container">
                <h2>The Basics</h2>

                <label class="form-label">Interessing In:</label>
                <asp:DropDownList ID="ddlInters" runat="server" CssClass="form-control"></asp:DropDownList>

                <label class="form-label">City:</label>
                <asp:DropDownList ID="ddlCity" runat="server" CssClass="form-control"></asp:DropDownList>

                <label class="form-label">Looking for:</label>
                <asp:DropDownList ID="ddlLook" runat="server" CssClass="form-control"></asp:DropDownList>

                <label class="form-label">Sexe:</label>
                <asp:DropDownList ID="ddlSexe" runat="server" CssClass="form-control"></asp:DropDownList>

                <label class="form-label">Annee Naissance:</label>
                <asp:DropDownList ID="ddlAnnee" runat="server" CssClass="form-control"></asp:DropDownList>

                <div class="mt-3">
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-secondary" OnClick="btnCancel_Click" />
                    <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-primary" OnClick="btnSave_Click" />
                </div>
            </asp:Panel>
        </section>
    </form>
</body>
</html>
