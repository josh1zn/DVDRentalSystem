﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="MakeSale.aspx.cs" Inherits="DVDRentalUI.MakeSale" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Scripts/jquery-2.0.3.min.js"></script>
    <script src="Bootstrap/js/bootstrap.js"></script>
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Bootstrap/css/Custom.css" rel="stylesheet" />
    <script src="Scripts/Custom.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            getItemsByType("Game");
            getAllCustomers();
        });

        function getItemsByType(type) {
            HandleAjax("GetAllRentalItemsByType", "{type:'" + type + "'}", populateItems);
        }

        function populateItems(data) {
            var items = data.d;
            $("#dlItem").empty();
            $.each(items, function (i,o) {
                $("#dlItem").append("<option value='" + o.ID + "'>" + o.Name + "</option>");
            });
            $("#dlItem").children().first().attr("selected", "selected");
        }

        function getAllCustomers() {
            HandleAjax("getAllCustomers", null, populateCustomers);
        }

        function populateCustomers(data) {
            var customers = data.d;
            $.each(customers, function (i,o) {
                $("#dlCustomer").append("<option value='" + o.ID + "'>" + o.Name + " " + o.Surname + "</option>");
            });
            $("#dlCustomer").children().first().attr("selected", "selected");
        }

        function refreshItems() {
            var type = $("#dlType").val();
            getItemsByType(type);
        }

        function addSale() {
            var data = "{rentalItemID:'" + $("#dlItem").val() + "', customerID:'" + $("#dlCustomer").val() + "'}";
            HandleAjax("AddSales", data, saveSale);
        }

        function saveSale() {
            alert("Sale saved.");
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title">Make Sale</h3>
        </div>
        <div class="panel-body">
            <table>
                <tr><td style="padding:10px;width:200px;">Rental Item Type: </td><td style="padding:10px;width:200px;"><select id="dlType" class="form-control" onchange="refreshItems();"><option>Game</option><option>DVD</option><option>BluRay</option></select></td></tr>
                <tr><td style="padding:10px;">Rental Item: </td><td style="padding:10px;"><select id="dlItem" class="form-control"></select></td></tr>
                <tr><td style="padding:10px;">Customer: </td><td style="padding:10px;"><select id="dlCustomer" class="form-control"></select></td></tr>
                <tr><td style="padding:10px;"></td><td style="padding:10px;"><input id="btnAdd" type="button" value="Record Sale" class="btn btn-primary" onclick="addSale();"/></td></tr>
            </table>
        </div>
    </div>
</asp:Content>
