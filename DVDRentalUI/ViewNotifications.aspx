﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ViewNotifications.aspx.cs" Inherits="DVDRentalUI.ViewNotifications" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Scripts/jquery-2.0.3.min.js"></script>
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="Bootstrap/js/bootstrap.min.js"></script>
    <link href="Bootstrap/css/Custom.css" rel="stylesheet" />

    
    <script type="text/javascript">

        ////main method
        //function viewAllNotifications() {
        //    HandleAjax("GetAllNotifications", "{}", populateNotifications)
        //}

        ////called method
        //function populateNotifications(data) {
        //    var items = data.d;
        //    $.each(items, function (i, o) {
        //        $("#notificationsTable").append("Notification #:" + o.ID + "<t/>" + "Date: " + o.Date + "<t/>" + "Customer: " + o.Date + "<br/>");
        //    });
        //}

        function viewAllNotifications() {
            $.ajax({
                type: "POST",
                contentType: "application/json; charset=utf-8",
                url: "DVDRental.asmx/GetAllNotifications",
                data: "{}",
                dataType: "json",
                success: function (data) {
                    var items = data.d;

                    var tblTxt = new String("");

                    //$("#notificationsTable").append("<tr>" +
                    //                                    "<th>Notification #</th>" +
                    //                                    "<th>Date of notification #</th>" +
                    //                                    "<th>Customer Full Name #</th>" +
                    //                                "</tr>");
                    $.each(items, function (i, o) {
                        //$("#notificationsTable").append("<tr> <td>" + o.ID + "<td/><td>" + o.Date + "<td/><td>" + o.FName + "<td/><tr/>");
                        tblTxt += "<tr>"
                                    + "<td>" + o.ID + "<td/>"
                                    + "<td>" + o.Date + "<td/>"
                                    + "<td>" + o.FName + "<td/>"
                                 + "<tr/>";

                    }
                    );
                    $("#notificationsTable").append("<tr>" +
                                                        "<th>Notification #</th>" +
                                                        "<th>Date of notification #</th>" +
                                                        "<th>Customer Full Name #</th>" +
                                                    "</tr>"
                                                    + tblTxt);


                }
            })
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
        <input type="button" id="Button1" value="Show all notifications by date" class="btn btn-success" onclick="viewAllNotifications();" />
    <table id="notificationsTable" class="table table-bordered table-hover">
        

    </table>
  </div>
</div>>

  

</asp:Content>

