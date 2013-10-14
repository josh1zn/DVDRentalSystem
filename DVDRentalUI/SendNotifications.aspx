<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="SendNotifications.aspx.cs" Inherits="DVDRentalUI.SendNotifications" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Scripts/jquery-2.0.3.min.js"></script>
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="Bootstrap/js/bootstrap.min.js"></script>
    <link href="Bootstrap/css/Custom.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="panel panel-primary">
  <div class="panel-heading">
    <h2 class="panel-title">Send a notification?</h2>
  </div>
  <div class="panel-body">
    <table>
        <tr><td>Select a notification to send:</td></tr>
        <tr><td style="padding:10px;"></td><td style="padding:10px;"><input id="btnSend" type="button" value="Send Notification" class="btn btn-primary"/></td></tr>
    </table>
  </div>
</div>>
</asp:Content>
