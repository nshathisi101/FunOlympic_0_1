<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no">
    <title>Login-1 | Equation - Multipurpose Bootstrap Dashboard Template </title>
    <link rel="icon" type="image/x-icon" href="assets/img/favicon.ico"/>
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700' rel='stylesheet' type='text/css'>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/plugins.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/users/login-1.css" rel="stylesheet" type="text/css" />
    <!-- END GLOBAL MANDATORY STYLES -->
    
</head>
<body class="login">

<form class="form-login" method="post" id="login_test" action="ServletLogin2">
    <c:if test="${alertErrorLogin=='Incorrect password or email'}">
        <div class="alert alert-arrow-left alert-icon-left alert-light-danger mb-4" role="alert">
            <i class="flaticon-cancel-12 close" data-dismiss="alert"></i>
            <i class="flaticon-bell-13"></i>
            <strong>Wrong credentials!</strong><br>
            Invalid email or password.
        </div>
    </c:if>
    <c:if test="${alertSuccessful=='Successfully registered'}">
        <div class="alert alert-arrow-left alert-icon-left alert-light-success mb-4" role="alert">
            <i class="flaticon-cancel-12 close" data-dismiss="alert"></i>
            <i class="flaticon-checked-13"></i>
            <strong>Success!</strong> You are ${alertSuccessful}.
        </div>
    </c:if>
    <div class="row">
        <div class="col-md-12 text-center mb-4">
            <img alt="logo" src="assets/img/olympic-rings.png" class="theme-logo">
        </div>

        <div class="col-md-12">
            <input class="inputs" type="hidden" name="command" value="Login_User">
            <label for="inputEmail" class="">Login</label>
            <input type="email" id="inputEmail" name="email" class="form-control mb-4" value="${email}" placeholder="Login" required >
            <label for="inputPassword" class="">Password</label>
            <input type="password" id="inputPassword" name="password" class="form-control mb-5" placeholder="Password" required>
            <div class="checkbox d-flex justify-content-between mb-4 mt-3">
                <div class="custom-control custom-checkbox mr-3">
                    <input type="checkbox" class="custom-control-input" id="customCheck1" value="remember-me">
                    <label class="custom-control-label" for="customCheck1">Remember</label>
                </div>
                <div class="forgot-pass">
                    <a href="user_pass_recovery.jsp">Forgot Password?</a>
                </div>
            </div>
            <button class="btn btn-lg btn-gradient-danger btn-block btn-rounded mb-4 mt-5" type="submit">Login</button>
            <a href="user_register.jsp" class="btn btn-lg btn-outline-dark btn-block btn-rounded mb-3">Register</a>
        </div>

    </div>
</form>


<!-- BEGIN GLOBAL MANDATORY SCRIPTS -->
    <script src="assets/js/libs/jquery-3.1.1.min.js"></script>
    <script src="bootstrap/js/popper.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    
    <!-- END GLOBAL MANDATORY SCRIPTS -->
</body>
</html>