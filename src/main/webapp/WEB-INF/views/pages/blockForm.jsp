<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Add Employee Form</title>
<link rel="stylesheet" href="../../css/main.css">
</head>
<body style="background: aliceblue">
	<header>
		<nav class="navbar navbar-default " style="background: aliceblue">
			<div class="container-fluid" >
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
						aria-expanded="false">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="container" >
					<h3>Please select select the block and the course to view the students who attend the meditation for that particular block and course:</h3>
					<br> <br> <br>
					<div class="form-group">
						<form action="/faculty/report/block" method="post" >

							<div class="container">
								<div class="container">
									<div class="container">
										Block: <select name="block" class="form-control">
										<c:forEach items="${bList}" var="block">
											<option value="${block.id}">${block.description}</option>
										</c:forEach>
									</select>
									</div>
								</div>
							</div>
							<br> <br> <br>
							<div class="container">
								<div class="container">
									<div class="container">
										Course: <select name="course" class="form-control">
											<c:forEach items="${cList}" var="course">
												<option value="${course.code}">${course.name}</option>
											</c:forEach>
										</select>
									</div>
								</div>
							</div>

							<br> <br> <br>
							<div class="container">
								<div class="container">
									<div class="container">
										<p id="buttons">
											<input id="submit" value="Find Report" type="submit"
												tabindex="5" />
										</p>
									</div>
								</div>
							</div>

						</form>
					</div>
				</div>

			</div>
			<!-- /.container-fluid -->
		</nav>
	</header>
</body>
</html>






