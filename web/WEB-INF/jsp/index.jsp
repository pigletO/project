<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0,  user-scalable=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../../assets/ico/favicon.png">

    <title>用户登录</title>

    <%@include file="./common/head.jsp" %>
    <base href="<%=pageContext.getAttribute("basePath")%>">
    <!-- Bootstrap core CSS -->
    <link href="css/common/bootstrap.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="css/signin.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="js/common/html5shiv.js"></script>
    <script src="js/common/respond.min.js"></script>
    <![endif]-->
</head>

<body>

<div class="container">

    <form class="form-signin">
        <h2 class="form-signin-heading">请登录</h2>
        <input type="text" name="username" class="form-control" placeholder="用户名" autofocus>
        <input type="password" name="password" class="form-control" placeholder="密码">
        <label class="checkbox">
            <input type="checkbox" value="remember-me"> 记住密码
        </label>
        <button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
    </form>

</div> <!-- /container -->


</body>
</html>
