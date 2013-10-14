<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ViewNotifications.aspx.cs" Inherits="DVDRentalUI.ViewNotifications" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Scripts/jquery-2.0.3.min.js"></script>
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="Bootstrap/js/bootstrap.min.js"></script>
    <link href="Bootstrap/css/Custom.css" rel="stylesheet" />
    <script src="Scripts/Custom.js"></script>

    <script type="text/javascript">

        ////main method
        function viewAllNotifications() {
            HandleAjax("GetAllNotifications", "{}", populateNotifications)
        }

        ////called method
        function populateNotifications(data) {

            var items = data.d;

            $("#notificationsTable").empty();

            $("#notificationsTable").append("<tr>"
                        + "<th>Notification #</th>"
                        + "<th>Date of notification</th>"
                        + "<th>Customer Full Name</th>"
                 + "</tr>");

            $.each(items, function (i, o) {

                $("#notificationsTable").append("<tr>"
                                                    + "<td>" + o.ID + "</td>"
                                                    + "<td>" + o.Date + "</td>"
                                                    + "<td>" + o.FName + "</td>"
                                                    + "<tr/>");
            });
        }

    </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h2 class="panel-title">Notifications:</h2>
        </div>
        <div class="panel-body">
            <input type="button" id="btnViewAllNotifs" value="Show all notifications" class="btn btn-success" onclick="viewAllNotifications();" />

            <table id="notificationsTable" class="table table-bordered table-hover table-condensed">
            </table>
        </div>
    </div>
    
</asp:Content>

