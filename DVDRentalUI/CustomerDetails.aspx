<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="CustomerDetails.aspx.cs" Inherits="DVDRentalUI.CustomerDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Scripts/jquery-2.0.3.min.js"></script>
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="Bootstrap/js/bootstrap.min.js"></script>
    <link href="Bootstrap/css/Custom.css" rel="stylesheet" />
    <script src="Scripts/Custom.js"></script>

        <script type="text/javascript">
            function getCustomerDetails(idnumber) {
                var idnumber = $("#txtCustID").val();
                HandleAjax("getCustomerByIDNumber", "{idnumber:'" + idnumber + "'}", populateItems)
            }

            function populateItems(data) {
                var items = data.d;
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
            <h3 class="panel-title">Customer Details:</h3>
        </div>
        <div class="panel-body">
            <table>
                 <tr><td style="padding:10px;">Customer ID Number: </td><td style="padding:10px;"><input id="txtCustID" type ="text" name ="CustID" placeholder ="Identification Number" class ="form-control"/></td></tr>
                 <tr><td style="padding:10px;"></td><td style="padding:10px;"><input id="btnAdd" type="button" value="Get Details" class="btn btn-primary" onclick="getCustomerDetails();"/></td></tr>
            </table>

            <table class="table-bordered table-hover">     
                <tr><td style="padding:10px"><span class="label label-primary">Name:</span></td><td style="padding:10px"><span  id="cust_name"></span></td></tr>
                <tr><td style="padding:10px"><span class="label label-primary">Surname:</span></td><td style="padding:10px"><span id="cust_surname"></span></td></tr>
                <tr><td style="padding:10px"><span class="label label-primary">ID Number:</span></td><td style="padding:10px"><span  id="cust_IDno"></span></td></tr>
                <tr><td style="padding:10px"><span class="label label-primary">Address:</span></td><td style="padding:10px"><span  id="cust_address"></span></td></tr>
                <tr><td style="padding:10px"><span class="label label-primary">Contact Number.</span></td><td style="padding:10px"><span  id="cust_contactno"></span></td></tr>
                <tr><td style="padding:10px"><span class="label label-primary">Email:</span></td><td style="padding:10px"><span  id="cust_email"></span></td></tr>
                <tr><td style="padding:10px"><span class="label label-primary">Balance:</span></td><td style="padding:10px"><span  id="cust_bal"></span></td></tr>
                <tr><td style="padding:10px"><span class="label label-primary">Fine:</span></td><td style="padding:10px"><span " id="cust_fine"></span></td></tr>
            </table>

        </div>
    </div>
</asp:Content>
