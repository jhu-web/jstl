<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title><c:out value="<c:out></c:out> Tag"/></title>
</head>
<body>
<h1 align="center"><code><c:out value="<c:out> Tag"/></code></h1>
<ul>
 <li>Subscription ID: 
     <c:out value="${account}" default="none"/></li>
</ul>
</body>
</html>