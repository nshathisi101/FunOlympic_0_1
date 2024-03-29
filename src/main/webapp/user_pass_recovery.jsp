<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no">
    <title>Password Recovery-1 | Equation - Multipurpose Bootstrap Dashboard Template </title>
    <link rel="icon" type="image/x-icon" href="assets/img/olympic-rings.png"/>
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700' rel='stylesheet' type='text/css'>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/plugins.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/users/pass_recovery_1.css" rel="stylesheet" type="text/css" />
    <!-- END GLOBAL MANDATORY STYLES -->
    
</head>
<body class="pass-recovery">

<form class="form-pass-recovery" method="post" action="ServletLogin2">
    <input type="hidden" name="command" value="forgotPassword">
    <div class="row">
        <div class="col-md-12 text-center mb-4">
            <img alt="logo" src="assets/img/olympic-rings.png" class="theme-logo">
        </div>
        <div class="col-md-12">
            <h4>Recover Password</h4>
            <p>If you forgot your password enter your email and instructions will sent to you!</p>
        </div>
        <div class="col-md-12">
            <label for="inputEmail" class="">Email</label>
            <input type="email" name="email" id="inputEmail" class="form-control mb-4" placeholder="Login" required >
            <button class="btn btn-lg btn-gradient-danger btn-block btn-rounded mb-4 mt-5" type="submit">Reset Password</button>
            <a href="user_login.jsp" class="btn btn-lg btn-outline-dark btn-block btn-rounded mb-3">Back</a>
        </div>
    </div>
</form>
    
    <!-- BEGIN GLOBAL MANDATORY SCRIPTS -->
    <script src="assets/js/libs/jquery-3.1.1.min.js"></script>
    <script src="bootstrap/js/popper.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    
    <!-- END GLOBAL MANDATORY SCRIPTS -->
    <script>
    </script>
</body>
</html>