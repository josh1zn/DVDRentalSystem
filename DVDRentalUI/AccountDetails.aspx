<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AccountDetails.aspx.cs" Inherits="DVDRentalUI.Account_Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Scripts/jquery-2.0.3.min.js"></script>
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="Bootstrap/js/bootstrap.min.js"></script>
    <link href="Bootstrap/css/Custom.css" rel="stylesheet" />
    <script type="text/javascript">
        $(document).ready(function () {
            getAccountDetails(1);
        });

        function getAccountDetails(CustomerID) {
            HandleAjax("getCustomerbyID", "{ID:'" + CustomerID + "'}", populateItems)
        }

        function populateItems(data) {
            var items = data.d;
            $("#custid").append(items.ID);
            $("#cust_name").append(items.Name);
            $("#cust_surname").append(items.Surname);
            $("#cust_IDno").append(items.IDNumber);
            $("#cust_address").append(items.Address);
            $("#cust_contactno").append(items.ContactNumber);
            $("#cust_email").append(items.Email);
            $("#cust_bal").append(items.Balance);
            $("#cust_fine").append(items.Fine);
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title">Account Details:</h3>
        </div>
        <div class="panel-body">
            <table class="table-bordered " >
                <tr><td style="padding:10px"><span class="label label-primary">Customer ID:</span></td><td style="padding:10px"><span  id ="custid"></span></td></tr>
                <tr><td style="padding:10px"><span class="label label-primary">Name:</span></td><td style="padding:10px"><span  id="cust_name"></span></td></tr>
                <tr><td style="padding:10px"><span class="label label-primary">surname:</span></td><td style="padding:10px"><span id="cust_surname"></span></td></tr>
                <tr><td style="padding:10px"><span class="label label-primary">IDentity No.:</span></td><td style="padding:10px"><span  id="cust_IDno"></span></td></tr>
                <tr><td style="padding:10px"><span class="label label-primary">Address:</span></td><td style="padding:10px"><span  id="cust_address"></span></td></tr>
                <tr><td style="padding:10px"><span class="label label-primary">Contact no.</span></td><td style="padding:10px"><span  id="cust_contactno"></span></td></tr>
                <tr><td style="padding:10px"><span class="label label-primary">Email:</span></td><td style="padding:10px"><span  id="cust_email"></span></td></tr>
                <tr><td style="padding:10px"><span class="label label-primary">Balance:</span></td><td style="padding:10px"><span  id="cust_bal"></span></td></tr>
                <tr><td style="padding:10px"><span class="label label-primary">Fine:</span></td><td style="padding:10px"><span " id="cust_fine"></span></td></tr>
            </table>

        </div>
    </div>
</asp:Content>
