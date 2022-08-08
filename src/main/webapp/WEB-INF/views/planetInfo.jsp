<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Planet Info</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
<a href="/">Back</a>
<h1>The first four planets:</h1>

<table>
<thead>
<tr>
<th>Planet</th>
<th>Diameter</th>
<th>Colors</th>
<th>Millions of Miles from the Sun</th>
</tr>
<c:forEach var="planet" items ="${planets}">
<tr>
<td>${planet.name}</td>
<td>${planet.diameter} miles</td>
<td><c:forEach var="color" items="${planet.colors}">
${color}, </c:forEach></td>
<td>min: ${planet.milesFromSun.min}, average: ${planet.milesFromSun.average}, max: ${planet.milesFromSun.max} </td>

</tr>


</c:forEach>

</thead>
</table>
</body>
</html>