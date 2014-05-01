<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title><c:out value="<c:choose>, <c:when>, <c:otherwise> Tags"/>
</title>
</head>
<body>
<h1 align="center"><code>
<c:out value="<c:choose>, <c:when>, <c:otherwise> Tags"/></code></h1>
<ul>
 <c:forEach var="i" begin="1" end="10">
 <li>
  i = ${i}
  <c:choose>
    <c:when test="${i < 3}">(less than 3)</c:when>
    <c:when test="${i < 5}">(less than 5)</c:when>
    <c:when test="${i == 5}">(It IS 5! SO exciting!)</c:when>
    <c:otherwise>(greater than 5)</c:otherwise>
  </c:choose>
 </li>
 </c:forEach>
</ul>
</body>
</html>