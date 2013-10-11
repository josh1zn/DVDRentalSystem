﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestBootstrap.aspx.cs" Inherits="DVDRentalUI.TestBootstrap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>How to use bootstrap example</title>
    <%--gotta include jquery script and bootstrap file like below--%>
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-2.0.3.min.js"></script>
    <script src="Bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        function makeAjaxCall() {
            $.ajax("DVDRental.asmx/GetAllRentalItems", {
                type: "POST",
                dataType: $.ajaxSetup(),
                success: function (data) {
                    alert(data.d);
                },
                error: function () {
                    alert("Error");
                }
            });
        }

        function makeAjaxPost() {
            $.post("DVDRental.asmx/GetAllRentalItems", "{}", function (data) {
                alert(data.d);
            });
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
         <h1>Bootstrap </h1>
         <table class="table" style="width:50%;margin-left:100px;">
             <tr><th>Joshua</th><th>Nigel</th><th>Himal</th></tr>
             <tr><td>hello</td><td>bye</td><td>maybe</td></tr>
         </table>
        <label class="text-info">Date and time:</label><input type="text" class="text-warning"/>
        <input type="button" value="show ajax call for data" class="btn btn-success" onclick="makeAjaxPost();"/>
        <div id="lblAjaxData"></div>
    </div>
    </form>
</body>
</html>