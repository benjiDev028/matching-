<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MonProfil.aspx.cs" Inherits="matching.essaie" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chat Interface</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        #haut{
            background-color :aquamarine;
            width: 100%;
            height : 300px;
            
            position: relative;
        }

        #img{
            width: 200px;
            height : 200px;
           text-align : center;
            background-color : azure;
             position: absolute;
             bottom: 0;
             margin-left:80px;
            
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       
          <div id="haut">
               
              <div id="img">
                  <div>
                       <h1>photo</h1>
                  </div>            
                 
              </div>
               
          </div>
      
        <section>
            <asp:Panel ID="PanInfo" runat="server" Width="50%" BorderColor="#9900FF">

                <asp:Label ID="Label1" runat="server" Text="The Basics"></asp:Label><br /><br />

                <asp:Label ID="Label2" runat="server" Text="Interessing In :  "></asp:Label><asp:DropDownList ID="ddlInters" runat="server"></asp:DropDownList><br />
                <asp:Label ID="Label3" runat="server" Text="city :  "></asp:Label><asp:DropDownList ID="ddlCity" runat="server"></asp:DropDownList><br />
                <asp:Label ID="Label4" runat="server" Text="looking for : "></asp:Label><asp:DropDownList ID="ddlLook" runat="server"></asp:DropDownList><br />
                <asp:Label ID="Label5" runat="server" Text="sexe : "></asp:Label><asp:DropDownList ID="ddlSexe" runat="server"></asp:DropDownList><br />
                <asp:Label ID="Label6" runat="server" Text="Annee Naissance : "></asp:Label><asp:DropDownList ID="ddlAnnee" runat="server"></asp:DropDownList><br /><br /><br />


                <asp:Button ID="btnCancel" runat="server" Text="Cancel" /> <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />



            </asp:Panel>

        </section>
      
    </form>
</body>
</html>
