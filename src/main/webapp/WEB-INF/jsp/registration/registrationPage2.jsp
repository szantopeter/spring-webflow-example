<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Page2</title>
</head>
<body>


<b>${ageBand}</b>

<form:form modelAttribute="user" method="post">
		
	<fieldset>
        
        <div class="field">
			<div class="label">
				<label for="firstName">First Name:</label>
			</div>
			<div class="input">
				<form:input path="firstName"/>
			</div>
		</div>

<%--
commented out until Tiles 2.1.x support is enabled again 
		<tiles:insertAttribute name="ageBandPage" />
--%>

<c:if test="${ageBandPage == 'adultPage'}">
	<%@ include file="adultPage.jsp" %>
</c:if>

<c:if test="${ageBandPage != 'adultPage'}">
	<%@ include file="teenChildPage.jsp" %>
</c:if>


		<div class="buttonGroup">
			<input type="submit" name="_eventId_back" value="back" />
			<input type="submit" id="register" name="_eventId_store" value="register" />
			
			<script type="text/javascript">
				Spring.addDecoration(new Spring.ValidateAllDecoration({elementId:'register', event:'onclick'}));
			</script>			
		</div>
		p.s.: The back button is configured to not save the changes

	</fieldset>		
		
</form:form>






</body>
</html>