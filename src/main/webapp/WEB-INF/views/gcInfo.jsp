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
<h1>Grand Circus Info</h1>
<p>Organization: ${info.organization}</p>
<p>Rooms: 
<c:forEach var="rooms" items="${info.rooms}">
${rooms.name} Level: ${rooms.level}, 
</c:forEach>
<p>CEO: ${info.ceo.firstName} ${info.ceo.lastName}</p>
<p>Languages:  
<c:forEach var="languages" items="${info.languages}">
${languages.name} - creator: ${languages.creator.firstName} ${languages.creator.lastName};   
</c:forEach></p>
</body>
</html>