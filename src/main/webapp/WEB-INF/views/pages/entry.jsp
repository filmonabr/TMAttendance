<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background: aliceblue">


<div class="container" style="background: aliceblue">
		<h2>TM morning group meditation attendance Report per Entry</h2>
		<h3>Entry: <c:out value="${description}" /></h3>
		

		<a href="/faculty/entry"><input type="button"
			value="return to previous" /></a>

		<table class="table" style="background: aliceblue">
			<thead>
				<tr>
					<th>ID</th>
					<th>First Name</th>
					<th>Last Name</th>					
					<th>PossibleSession</th>
					<th>Total Session Attended</th>
					<th>Percentage</th>
					<th></th>
				</tr>
			</thead>
			<tbody style="background: aliceblue">
				<c:forEach items="${studententrylist}" var="studEntry">
					<tr class="active">
						<td><c:out value="${studEntry.id}" /></td>
						<td><c:out value="${studEntry.firstname}" /></td>
						<td><c:out value="${studEntry.lastname}" /></td>
						<td><c:out value="${studEntry.possibleSession}" /></td>
						<td><c:out value="${studEntry.totalSessionAttended}" /></td>
						<td><c:out value="${studEntry.percentage}" />%</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</body>
</html>