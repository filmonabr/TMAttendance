<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="../../js/ajax.js"></script>
	<link rel="stylesheet" href="../../../css/main.css">
</head>
<body style="background: aliceblue">



	<div class="container" style="background: aliceblue">
		<h2>TM morning group meditation attendance per Block Report</h2>
		<h3>Course: <c:out value="${courseName}" /></h3>
		<h3>Block: <c:out value="${blockDescription}" /></h3>

		<a href="/faculty/report/block" class="btn btn-primary">Back</a>
		<a href="/faculty/excelreport" class="btn btn-primary">Export As Excel</a>


		<table class="table" style="background: aliceblue">
			<thead>
				<tr>
					<th>ID</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Percentage</th>
					<th>Credit Score</th>
					<th></th>
				</tr>
			</thead>
			<tbody style="background: aliceblue">
				<c:forEach items="${studentReports}" var="studentReport">
					<tr class="active">
						<td><c:out value="${studentReport.id}" /></td>
						<td><c:out value="${studentReport.firstName}" /></td>
						<td><c:out value="${studentReport.lastName}" /></td>
						<td><c:out value="${studentReport.percentage}" /></td>
						<td><c:out value="${studentReport.creditScore}" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</body>
</html>