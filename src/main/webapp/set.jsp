<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title><c:out value="<c:set>, <c:remove> Tags"/></title>
</head>
<body>
<h1 align="center"><code><c:out value="<c:set>, <c:remove> Tags"/></code></h1>
<table border="1">
<tr>
<td valign="top">
<% 
java.util.Map map = new java.util.HashMap();
map.put("One","One");
map.put("Two", "Two");
request.setAttribute("map", map);
%>
Before Adding Values to Map
<ul>
 <c:forEach var="item" items="${map}">
 <li>${item.value}</li>
 </c:forEach>
</ul>
</td>
<td>
<c:set target="${map}" property="Three" value="Three"/>
<c:set target="${map}" property="Four">Four</c:set>
After Adding Values to Map
<ul>
 <c:forEach var="item" items="${map}">
 <li>${item.value}</li>
 </c:forEach>
</ul>
</td>
<td valign="top">
<c:remove var="map"/>
After Removing Map
<ul>
 <c:forEach var="item" items="${map}">
 <li>${item}</li>
 </c:forEach>
</ul>
</td>
</tr>
</table><br/>
<c:set var="list" value="Three" scope="request"/>
<c:set var="list" property="Four">Four</c:set>
Default "list": ${list}<br/>
Request "list": ${requestScope.list}

</body>
</html>