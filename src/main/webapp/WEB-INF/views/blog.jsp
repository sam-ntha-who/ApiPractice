<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Blog</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
<a href="/">Back</a>
<h1>${blog.title}</h1>
<h2>Language: ${blog.language}</h2>
<br>
<c:forEach var="post" items="${blog.posts}">
<h3>${post.title} by ${post.author}</h3>
<h5>${post.date}</h5>
<p>${post.content}</p>
<p>${post.tags}
</c:forEach>

</body>
</html>