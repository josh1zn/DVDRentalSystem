<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestBootstrap.aspx.cs" Inherits="DVDRentalUI.TestBootstrap" %>

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
            $.ajax({
                type: "POST",
                contentType: "application/json; charset=utf-8",
                url: "DVDRental.asmx/GetRentalItemById",
                data: "{id:'1'}",
                dataType: "json",
                success: function (data) {
                    $("#lblAjaxData").append("Name: " + data.d.Name + "<br/>" + "Type: " + data.d.Type + "<br/>" + "Price: " + data.d.Price + "<br/>");
                }
            });
        }

        function makeAjaxCallForType() {
            $.ajax({  type: "POST",
                contentType: "application/json; charset=utf-8",
                url: "DVDRental.asmx/GetAllRentalItemsByType",
                data: "{type: 'DVD'}",
                dataType: "json",
                success: function (data) 
                {
                    rentalItems = data.d;
                    $.each(rentalItems, function () 
                    {
                        $("#lblAjaxData").append("Name: " + this.Name + "<br/>" + "Type: " + this.Type + "<br/>" + "Price: " + this.Price + "<br/>"); 
                    }
                    );

                }
            })
            }

        

       
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
         <h1>Bootstrap </h1>
         <table class="table table-hover table-bordered" style="width:50%;margin-left:100px;">
             <tr><th>Joshua</th><th>Nigel</th><th>Himal</th></tr>
             <tr><td>hello</td><td>bye</td><td>maybe</td></tr>
         </table>
        <label class="text-info">Date and time:</label><input type="text" class="text-warning"/>
        <input type="button" value="show item 1" class="btn btn-success" onclick="makeAjaxCall();"/>

        <input type="button" value="show all dvd items" class="btn btn-success" onclick="makeAjaxCallForType();"/>
        <div id="lblAjaxData"></div>
    </div>
    </form>
</body>
</html>
