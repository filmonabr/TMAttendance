<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Login</title>
  <%--<base href="/">

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.2/cerulean/bootstrap.min.css" rel="stylesheet" integrity="sha384-EmRcsPP774S9MOi4ywB+JXUWjYnBdyInMzG2XsC5siZEUpexqxOMJW358dCYEjPu" crossorigin="anonymous">

  <script src="https://cdn.alloyui.com/3.0.1/aui/aui-min.js"></script>

  <link rel="icon" type="image/x-icon" href="favicon.ico">--%>

    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/main.css">
</head>
<body id="login" >
 
 
 <%--<div class="container py-5">
  <div class="row">
    <div class="col-md-12">

      <div class="row">
        <div class="col-md-6 mx-auto">

         <!--  form card login -->
          <div class="card rounded-0">
            <div class="card-header">
                <h3 class="mb-0">Login</h3>
            </div>
            <div class="card-body">
                <form class="form" action="login" method="POST" >
                <div class="form-group">
                    <c:if test="${param.error}">
						<p style="font-size: 20; color: #FF1C19;">Invalid Email or Password</p>
					</c:if>
					<c:if test="${param.logout != null}">
						<p class="alert alert-success">You have been logged out successfully.</p>
					</c:if>
                </div>
                <div class="form-group">
                    <input type="text" class="form-control form-control-lg rounded-0" name = "email" placeholder="Email">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control form-control-lg rounded-0" name="password" placeholder="Password">
                </div>
                <div>
                    <label class="custom-control custom-checkbox">
                      <input type="checkbox" class="checkbox" name="remember-me">
                      <span class="custom-control-indicator"></span>
                      <span class="custom-control-description small text-dark">Remember me</span>
                    </label>
                </div>
                <button type="submit" class="btn btn-success btn-lg float-left" id="btnLogin">Login</button>
              </form>
            </div>
           <!--  /card-block -->
          </div>
        <!--   /form card login -->
        </div>
      </div>
    <!--   /row -->
    </div>
  <!--   /col -->
  </div>
 <!--  /row -->
</div>
<!-- /container -->--%>

 <div class="container">
     <div class="row">
         <div class="col-md-4 col-md-offset-4 login">
             <h1 class="text-center"><i class="glyphicon glyphicon-user"></i> Login</h1>
             <hr>
             <form class="form" action="login" method="POST">

                 <div class="form-group">
                     <c:if test="${param.error}">
                         <p style="font-size: 20; color: #FF1C19;">Invalid Email or Password</p>
                     </c:if>
                     <c:if test="${param.logout != null}">
                         <p class="alert alert-success">You have been logged out successfully.</p>
                     </c:if>
                 </div>

                 <div class="form-group">
                     <label for="exampleInputEmail1">Email address</label>
                     <input type="email" class="form-control" name = "email" id="exampleInputEmail1" placeholder="Email">
                 </div>
                 <div class="form-group">
                     <label for="exampleInputPassword1">Password</label>
                     <input type="password" class="form-control" name="password" id="exampleInputPassword1" placeholder="Password">
                 </div>

                 <div class="checkbox">
                     <label>
                         <input type="checkbox" class="checkbox" name="remember-me"> Remember me
                     </label>
                 </div>

                 <div class="btn-group btn-group-justified" role="group" aria-label="...">

                     <%--<div class="btn-group" role="group">--%>
                         <%--<label class="custom-control custom-checkbox btn">--%>
                             <%--<input type="checkbox" class="checkbox" name="remember-me">--%>
                             <%--<span class="custom-control-indicator"></span><span class="custom-control-description small text-dark">Remember me</span>--%>
                         <%--</label>--%>
                     <%--</div>--%>

                     <div class="btn-group" role="group">
                         <button type="submit" class="btn btn-primary" >Login</button>
                     </div>
                 </div>
             </form>
             <hr>
         </div>
     </div>
 </div>

 
</body>
</html>
 