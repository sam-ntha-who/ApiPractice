<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Grand Circus Info</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
<a href="/">Back</a>
<h1>Grand Circus Info</h1>
<p>Organization: ${info.organization}</p>
<p>CEO: ${info.ceo.firstName} ${info.ceo.lastName}</p>
<p>Rooms: 
<c:forEach var="rooms" items="${info.rooms}">
<ul>${rooms.name} Level: ${rooms.level}</ul> 
</c:forEach>
<p>Languages:  
<c:forEach var="languages" items="${info.languages}">
<ul><li>${languages.name} - creator: ${languages.creator.firstName} ${languages.creator.lastName}</li></ul>   
</c:forEach></p>
</body>
</html>