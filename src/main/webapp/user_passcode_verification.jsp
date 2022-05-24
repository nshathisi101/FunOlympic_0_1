<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no">
    <title>Fun Olympic | Verification Code </title>
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
    <c:if test="${alertWaring=='The provided code is incorrect'}">
        <div class="alert alert-arrow-left alert-icon-left alert-light-danger mb-4" role="alert">
            <i class="flaticon-cancel-12 close" data-dismiss="alert"></i>
            <i class="flaticon-bell-13"></i>
            <strong>Warning!</strong><br>
            ${alertWaring}
        </div>
    </c:if>
    <c:if test="${alertWaring=='The code has expired'}">
        <div class="alert alert-arrow-left alert-icon-left alert-light-danger mb-4" role="alert">
            <i class="flaticon-cancel-12 close" data-dismiss="alert"></i>
            <i class="flaticon-bell-13"></i>
            <strong>Warning!</strong><br>
                ${alertWaring}
        </div>
    </c:if>
    <input type="hidden" name="command" value="VerifyCode">
    <div class="row">
        <div class="col-md-12 text-center mb-4">
            <img alt="logo" src="assets/img/olympic-rings.png" class="theme-logo">
        </div>
        <div class="col-md-12">
            <h4>Verification Code</h4>
            <p>Enter verification code!</p>
        </div>
        <div class="col-md-12">
            <label for="static-mask-code" class="">VerifyCode</label>
            <input id="static-mask-code" type="text" name="codeVerify"  class="form-control mb-4" placeholder="Login" required >
            <button class="btn btn-lg btn-gradient-danger btn-block btn-rounded mb-4 mt-5" type="submit">Verify Code</button>
            <a href="user_login.jsp" class="btn btn-lg btn-outline-dark btn-block btn-rounded mb-3">Back</a>
        </div>
    </div>
</form>

<!-- BEGIN GLOBAL MANDATORY SCRIPTS -->
<script src="assets/js/libs/jquery-3.1.1.min.js"></script>
<script src="bootstrap/js/popper.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<!-- END GLOBAL MANDATORY SCRIPTS -->

<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="plugins/input-mask/jquery.inputmask.bundle.min.js"></script>
<script src="plugins/input-mask/input-mask.js"></script>
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script>
</script>
</body>
</html>