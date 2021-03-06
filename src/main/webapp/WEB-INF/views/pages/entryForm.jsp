<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Entry Report Form</title>
<link rel="stylesheet" href="../../../css/main.css">
</head>
<body style="background: aliceblue">


	<header>
		<nav class="navbar navbar-default" style="background: aliceblue">
			<div class="container-fluid">
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
				<div class="container">
					<h2>Entry Report Select Form</h2>
					<p></p>
					<br> <br> <br>
					<div class="form-group" style="background: aliceblue">
						<form action="/faculty/entry" method="post">
							<div class="container">
								<div class="container">
									<div class="container">
										Select an Entry: <select name="entry" class="form-control">
											<c:forEach items="${entryList}" var="en">
												<option value="${en.id}">${en.startPeriod}</option>
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