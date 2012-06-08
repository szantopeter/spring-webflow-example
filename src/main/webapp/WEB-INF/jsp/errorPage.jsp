<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page
	import="org.springframework.webflow.engine.support.TransitionExecutingFlowExecutionExceptionHandler"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Exception Occurred</title>
</head>
<body>


<%
	Exception ex = (Exception) request
			.getAttribute(TransitionExecutingFlowExecutionExceptionHandler.FLOW_EXECUTION_EXCEPTION_ATTRIBUTE);
	Exception root = (Exception) request
			.getAttribute(TransitionExecutingFlowExecutionExceptionHandler.ROOT_CAUSE_EXCEPTION_ATTRIBUTE);
%>

<h1>Exception occurred: <%=ex.getMessage()%></h1>
<p>
<%
	ex.printStackTrace(new java.io.PrintWriter(out));
%>
</p>

<% if (root != null) { %>
<h2>Root cause: <%=root.getMessage()%></h2>
<p>
<%
	root.printStackTrace(new java.io.PrintWriter(out));
%>
</p>
<%} %>

</body>
</html>