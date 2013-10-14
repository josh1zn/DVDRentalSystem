<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DVDRentalUI.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <script src="Scripts/jquery-2.0.3.min.js"></script>
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="Bootstrap/js/bootstrap.min.js"></script>
    <link href="Bootstrap/css/Custom.css" rel="stylesheet" />
    <script src="Scripts/Custom.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {

        });

        function verifyLogin() {
            HandleAjax("checkLogin", "{username:'" + $("#txtUsername").val() + "', password:'" + $("#txtPassword").val() + "'}", redirectUser);
        }

        function redirectUser(data) {
            var res = data.d;
            if (res.Pass == "true") {
                if (res.Role == "Customer") {
                    location.href = "AccountDetails.aspx";
                }
                else if (res.Role == "Clerk") {
                    location.href = "MakeSale.aspx";
                }
                else if(res.Role == "Administrator"){
                    location.href = "AddEmployee.aspx";
                }
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-color: whitesmoke; text-align: center">
            <img src="Images/ABCRentalLogo.png" class="align-center" />
        </div>
        <div class="align-center login">
            <div class="well">
                <h1>Login</h1>
                <input type="text" id="txtUsername" class="form-control" placeholder="Username" /><br />
                <input type="password" id="txtPassword" class="form-control" placeholder="Password" /><br />
                <button type="button" class="btn btn-primary btn-block" onclick="verifyLogin();">Sign in</button>
            </div>
            <p class="text-center muted ">&copy; Copyright 2013</p>
        </div>
    </form>
</body>
</html>
