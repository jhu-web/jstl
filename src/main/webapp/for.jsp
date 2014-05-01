<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title><c:out value="<c:foreach>, <c:forTokens> Tags"/></title>
</head>
<body>
<h1 align="center"><code><c:out value="<c:foreach>, <c:forTokens> Tags"/></code></h1>
<table>
<tr><td>
<ul>
 <c:forEach var="i" begin="1" end="10" step="2">
 <li>i = ${i}</li>
 </c:forEach>
</ul>
</td>
<td>
<% 
java.util.List list = new java.util.ArrayList();
list.add("One");
list.add("Two");
list.add("Three");
list.add("Four");
list.add("Five");
request.setAttribute("list", list);
%>
<ul>
 <c:forEach var="item" items="${list}">
 <li>${item}</li>
 </c:forEach>
</ul>
</td>
<td>
<ul>
 <c:forTokens var="item" 
    items="<Once)Upon,A(Time%There...>" 
    delims="<),(%>">
 <li>${item}</li>
 </c:forTokens>
</ul>
</td>
</tr>
</table>
</body>
</html>