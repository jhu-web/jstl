<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title><c:out value="<c:import>, <c:param> Tags"/></title>
</head>
<body>
<h1 align="center"><code><c:out value="<c:import>, <c:param> Tags"/></code></h1>
<table>
 <tr>
  <td>
   You got a problem?<br/>
   <c:import url="http://www.evergreen.loyola.edu/~yychaikin/problem.html"/>
  </td>
  <td>
   You STILL got a problem?
   <c:import url="http://db.cs.loyola.edu:4401/jstl/problem.jsp">
    <c:param name="imageId" value="20"/>
   </c:import>
  </td>
 </tr>
</table>
</body>
</html>