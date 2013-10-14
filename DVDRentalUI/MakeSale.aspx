<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="MakeSale.aspx.cs" Inherits="DVDRentalUI.MakeSale" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Bootstrap/css/Custom.css" rel="stylesheet" />
    <script type="text/javascript">
        $(document).ready(function () {
            getItemsByType("Game");
            getAllCustomers();
        });

        function getItemsByType(type) {
            HandleAjax("GetAllRentalItemsByType", "{type:'" + type + "'}", populateItems)
        }

        function populateItems(data) {
            var items = data.d;
            $.each(items, function (i,o) {
                $("#dlItem").append("<option value='" + o.ID +"'>" + o.Name +"</option>")
            });
        }

        function getAllCustomers() {
            HandleAjax("getAllCustomers", null, populateCustomers);
        }

        function populateCustomers(data) {
            var customers = data.d;
            $.each(customers, function () {
                $("#dlCustomer").append("<option value='" + o.ID + "'>" + o.Name + " " + o.Surname + "</option>");
            });
        }

        function refreshItems() {
            var type = $("#dlType").text();
            getItemsByType(type);
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title">Make Sale</h3>
        </div>
        <div class="panel-body">
            <table >
                <tr><td style="padding:10px;">Rental Item Type: </td><td style="padding:10px;"><select id="dlType" class="form-control" onchange="refreshItems();"><option>Game</option><option>DVD</option><option>BlueRay</option></select></td></tr>
                <tr><td style="padding:10px;">Rental Item: </td><td style="padding:10px;"><select id="dlItem" class="form-control"><option>Select Rental Item...</option></select></td></tr>
                <tr><td style="padding:10px;">Customer: </td><td style="padding:10px;"><select id="dlCustomer" class="form-control"><option>Select Customer</option></select></td></tr>
                <tr><td style="padding:10px;"></td><td style="padding:10px;"><input id="btnAdd" type="button" value="Record Sale" class="btn btn-primary"/></td></tr>
            </table>
        </div>
    </div>
</asp:Content>
