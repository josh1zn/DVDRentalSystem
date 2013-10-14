<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="SendNotifications.aspx.cs" Inherits="DVDRentalUI.SendNotifications" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Scripts/jquery-2.0.3.min.js"></script>
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="Bootstrap/js/bootstrap.min.js"></script>
    <link href="Bootstrap/css/Custom.css" rel="stylesheet" />
    <script src="Scripts/Custom.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            viewAllNotifications();
        });
        //main method
        function viewAllNotifications() {
            HandleAjax("GetAllUsersWithFines", "{}", populateUsers);
        }
        //called method to generate table of customers
        function populateUsers(data) {
            var items = data.d;
            $("#customersWithFinesTable").empty();
            $("#customersWithFinesTable").append("<tr>"
                        + "<th>Full Name</th>"
                        + "<th>ID Number</th>"
                        + "<th>Address</th>"
                        + "<th>Contact Number</th>"
                        + "<th>Email Address</th>"
                        + "<th>Balance Amount</th>"
                        + "<th>Fine Amount</th>"
                        + "<th>Send Notification?</th>"
                 + "</tr>");

            $.each(items, function (i, o) {
                $("#customersWithFinesTable").append("<tr>"
                                                        + "<td>" + o.Name + " " + o.Surname + "</td>"
                                                        + "<td>" + o.IDNumber + "</td>"
                                                        + "<td>" + o.Address + "</td>"
                                                        + "<td>" + o.ContactNumber + "</td>"
                                                        + "<td>" + o.Email + "</td>"
                                                        + "<td>" + o.Balance + "</td>"
                                                        + "<td>" + o.Fine + "</td>"
                                                        + "<td>" + "<input type='button' value='Send' class='btn btn-success' onclick='sendNotification(" + o.ID + ");'/>" + "</td>"
                                                    + "</tr>");
            });
        }

        //send notfication Methods
        //main method send notification
        function sendNotification(data) {
            var dataItem = "{id: '" + data + "'}";
            HandleAjax("SendNotification", dataItem, notificationSent);
        }
        //alert method method  for success of notification sent
        function notificationSent() {
            alert("notification Sent!");
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="panel panel-primary">
  <div class="panel-heading">
    <h2 class="panel-title">Send customer notifications</h2>
  </div>
  <div class="panel-body">
    <table id="customersWithFinesTable" class="table table-bordered table-hover table-condensed">
        <caption><b>Customers with fines</b></caption>
    </table>
  </div>
</div>>
</asp:Content>
