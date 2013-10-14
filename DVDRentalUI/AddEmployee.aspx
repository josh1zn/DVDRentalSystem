﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AddEmployee.aspx.cs" Inherits="DVDRentalUI.Pages.AddEmployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Scripts/jquery-2.0.3.min.js"></script>
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="Bootstrap/js/bootstrap.min.js"></script>
    <link href="Bootstrap/css/Custom.css" rel="stylesheet" />
    <script src="Scripts/Custom.js"></script>

        <script type="text/javascript">
            function addEmployee() {
                var data = "{nm:'" + $("#txtName").val() + "', snm:'" + $("#txtSurname").val() + "', idno:'" + $("#txtID").val() + "', add:'" + $("#txtAdd").val() + "', emi:'" + $("#txtEmail").val() + "', rol:'" + $("#dlRole").val() + "', usr:'" + $("#txtUsername").val() + "', pass:'" + $("#Passwprd").val() + "'}";
                HandleAjax("AddUser", data, saveEmployee);
            }

            function saveEmployee() {
                alert("Employee Added.");
            }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title">Add Employee</h3>
        </div>
        <div class="panel-body">
            <table >
                <tr><td style="padding:10px;">Role: </td><td style="padding:10px;"><select id="dlRole" class="form-control"><option>Select Role...</option><option>Clerk</option><option>Administrator</option></select></td></tr>
                <tr><td style="padding:10px;">Name: </td><td style="padding:10px;"><input id="txtName" type ="text" name ="Name" placeholder ="Name" class ="form-control"/></td></tr>
                <tr><td style="padding:10px;">Surname: </td><td style="padding:10px;"><input id="txtSurname" type ="text" name ="Surname" placeholder ="Surname" class ="form-control"/></td></tr>
                <tr><td style="padding:10px;">ID Number: </td><td style="padding:10px;"><input id="txtID" type ="text" name ="ID Num" placeholder ="Identification Number" class ="form-control"/></td></tr>
                <tr><td style="padding:10px;">Address: </td><td style="padding:10px;"><input id="txtAdd" type ="text" name ="Address" placeholder ="Home Address, City" class ="form-control"/></td></tr>
                <tr><td style="padding:10px;">Email: </td><td style="padding:10px;"><input id="txtEmail" type ="email" name ="Email" placeholder ="Email Address" class ="form-control"/></td></tr>
                <tr><td style="padding:10px;">Username: </td><td style="padding:10px;"><input id="txtUsername" type ="text" name ="Username" placeholder ="Username" class ="form-control"/></td></tr>
                <tr><td style="padding:10px;">Password: </td><td style="padding:10px;"><input id="Password" type ="password" name ="Password" placeholder ="Password" class ="form-control"/></td></tr>
                <tr><td style="padding:10px;"></td><td style="padding:10px;"><input id="btnAdd" type="button" value="Add Employee" class="btn btn-primary" onclick ="addEmployee();"/></td></tr>
            </table>

        </div>
    </div>
   
</asp:Content>
