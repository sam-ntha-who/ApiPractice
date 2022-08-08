<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CS Hall of Fame</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
<a href="/">Back</a>
<h1>Computer Science Hall of Fame</h1>
<table>
<thead>
<tr>
<th>Name</th>
<th>Year</th>
<th>Innovation</th>
</tr>
<c:forEach var="scientist" items="${scientist.complete}">
<tr>
<td>${scientist.firstName} ${scientist.lastName}</td>
<td>${scientist.year}</td>
<td>${scientist.innovation}</td>


</tr>


</c:forEach>

</thead>
</table>

</body>
</html>