<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Retreat</title>
</head>
<body style="background: aliceblue">
	
		<div class="card-header">
           <h3 class="mb-0">Add retreat attendance for the selected student: </h3>
        </div>
            
		<form action="/admin/retreat"  method="post">
		
			<p>
			<input type="text" name="studentid"
					class= "form-control mb-4 col-4" placeholder="Student Id" />
			</p>
			
			<p>
				<input type="text" class= "form-control mb-4 col-4" name = "retreatNumber" placeholder="Number of retreats" />
			</p>
			
			<button type="submit" class="btn btn-info col-2">Save</button>
						
		</form>



</body>
</html>