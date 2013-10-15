<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AddCustomer.aspx.cs" Inherits="DVDRentalUI.AddCustomer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Scripts/jquery-2.0.3.min.js"></script>
    <script src="Bootstrap/js/bootstrap.js"></script>
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Bootstrap/css/Custom.css" rel="stylesheet" />
    <script src="Scripts/jquery.validate.min.js"></script>
    <script src="Scripts/Custom.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $("#form1").validate();
        });

        function addCustomer() {
            if ($("#form1").valid()) {
                if (verifyConfirmPass()) {
                    var data = "{name:'" + $("#txtName").val() + "', surname:'" + $("#txtSurname").val() + "', idnumber:'" + $("#txtID").val() + "', address:'" + $("#txtAdd").val() + "', contactNumber:'" + $("#txtCont").val() + "', role:'Customer', email:'" + $("#txtEmail").val() + "', username:'" + $("#txtUsername").val() + "', password:'" + $("#Password").val() + "'}";
                    HandleAjax("AddUser", data, saveCustomer);
                }
            }
        }

        function saveCustomer() {
            alert("Customer Added.");
        }

        function verifyConfirmPass() {
            var pass = $("#Password").val();
            var cpass = $("#cPassword").val();
            if (pass != cpass) {
                $("#lblError").show();
                $("#cPassword").addClass("error")
                return false;
            }
            else {
                $("#lblError").hide();
                $("#cPassword").removeClass("error");
                return true;
            }
        }
    </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title">Add Customer</h3>
        </div>
        <div class="panel-body">
            <table>
                <tr>
                    <td style="padding: 10px;">Name: </td>
                    <td style="padding: 10px;">
                        <input id="txtName" type="text" name="Name" placeholder="Name" class="form-control" required/></td>
                </tr>
                <tr>
                    <td style="padding: 10px;">Surname: </td>
                    <td style="padding: 10px;">
                        <input id="txtSurname" type="text" name="Surname" placeholder="Surname" class="form-control" required/></td>
                </tr>
                <tr>
                    <td style="padding: 10px;">ID Number: </td>
                    <td style="padding: 10px;">
                        <input id="txtID" type="text" name="ID Num" placeholder="Identification Number" class="form-control" required/></td>
                </tr>
                <tr>
                    <td style="padding: 10px;">Address: </td>
                    <td style="padding: 10px;">
                        <input id="txtAdd" type="text" name="Address" placeholder="Home Address, City" class="form-control" required/></td>
                </tr>
                <tr>
                    <td style="padding: 10px;">Contact Number: </td>
                    <td style="padding: 10px;">
                        <input id="txtCont" type="text" name="Contact Number" placeholder="Contact Number" class="form-control" required/></td>
                </tr>
                <tr>
                    <td style="padding: 10px;">Email: </td>
                    <td style="padding: 10px;">
                        <input id="txtEmail" type="email" name="Email" placeholder="Email Address" class="form-control" required/></td>
                </tr>
                <tr>
                    <td style="padding: 10px;">Username: </td>
                    <td style="padding: 10px;">
                        <input id="txtUsername" type="text" name="Username" placeholder="Username" class="form-control" required/></td>
                </tr>
                <tr>
                    <td style="padding: 10px;">Password: </td>
                    <td style="padding: 10px;">
                        <input id="Password" type="password" name="Password" placeholder="Password" class="form-control" minlength="6" required onkeyup="verifyConfirmPass();"/></td>
                </tr>
                <tr>
                    <td style="padding: 10px;">Confirm Password: </td>
                    <td style="padding: 10px;">
                        <input id="cPassword" type="password" name="cPassword" placeholder="Confirm Password" class="form-control" minlength="6" required onkeyup="verifyConfirmPass();" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td style="padding: 10px;"><span id="lblError" style="display: none; color: red;" >Passwords do not match</span></td>
                </tr>
                <tr>
                    <td style="padding: 10px;"></td>
                    <td style="padding: 10px;">
                        <input id="btnAdd" type="button" value="Add Customer" class="btn btn-primary" onclick="addCustomer();" /></td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
