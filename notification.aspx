<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="notification.aspx.cs" Inherits="matching.notification" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <style type="text/css">
    .container {
        width: 80%;
        margin: 0 auto;
        padding: 20px;
    }

    h2 {
        text-align: center;
        color: #333;
    }

    .notifications-list {
        list-style: none;
        padding: 0;
    }

    .notification {
        margin: 10px 0;
        padding: 15px;
        border: 1px solid #ddd;
        background-color: #f9f9f9;
        border-radius: 5px;
        box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        transition: all 0.3s ease;
    }

    .notification:hover {
        background-color: #eef9ff;
        border-color: #bce8f1;
        cursor: pointer;
        box-shadow: 0 4px 8px rgba(0,0,0,0.15);
    }

    .notification button {
        padding: 5px 10px;
        margin-right: 10px;
        border: none;
        border-radius: 3px;
        background-color: #5cb85c;
        color: white;
        cursor: pointer;
    }

    .notification button:hover {
        background-color: #4cae4c;
    }
</style>

    	
    <!-- Styles -->
    <link href="css/finalbuild.css" rel="stylesheet">
    <link href="css/style_changes.css" rel="stylesheet">
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Notifications</h2>
            <div id="notificationsContainer" class="notifications-list">
                <!-- Les notifications seront affichées ici -->
            </div>
        </div>
    </form>
</body>

</html>
