<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title><c:out value="<c:url>, <c:param> Tags"/></title>
</head>
<body>
<h1 align="center"><code><c:out value="<c:url>, <c:param> Tags"/></code></h1>
<a href="<c:url value='/out.jsp'/>">Click here</a><p/>
<c:url value="/out.jsp" var="inputUrl">
 <c:param name="name" value="Yaakov Chaikin"/>
</c:url>
The parameterized URL is: ${inputUrl}
</body>
</html>