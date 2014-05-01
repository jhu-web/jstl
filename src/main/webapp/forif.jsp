<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title><c:out value="<c:if> Tags"/></title>
</head>
<body>
<h1 align="center"><code><c:out value="<c:if> Tag"/></code></h1>
<ul>
 <c:forEach var="i" begin="1" end="10" step="2">
 <li>
  i = ${i}
  <c:if test="${i > 3}">
  (greater than 3)
  </c:if>
 </li>
 </c:forEach>
</ul>
</body>
</html>