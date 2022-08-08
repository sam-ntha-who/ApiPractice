<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Recipes</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
<a href="/">Back</a>
<h1>${recipes.title}</h1>
<c:forEach var="recipe" items="${recipes.recipes}">
<h2>${recipe.name}</h2>
<h3>by ${recipe.contributor} </h3>
<h4>Ingredients:</h4>
<c:forEach var="ingredient" items="${recipe.ingredients}">
<ul><li>${ingredient}</li></ul>
</c:forEach>
<h4>Directions:</h4>
<p>${recipe.directions}</p>
</c:forEach>

</body>
</html>