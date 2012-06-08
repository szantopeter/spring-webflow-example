<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<form:form modelAttribute="user" method="post">
	<fieldset>
	
	<%-- 
	<span class="errors">
		<form:errors path="*" />
	</span>
	--%>	
	        
        <div class="field">
			<div class="label">
				<label for="firstName">First Name:</label>
			</div>
			<div class="input">
				<form:input path="firstName"/>
				
				<script type="text/javascript">
					Spring.addDecoration(new Spring.ElementDecoration({
						elementId : "firstName",
						widgetType : "dijit.form.ValidationTextBox",
						widgetAttrs : { required : true, promptMessage : "If you enter \'Peter\' you will receive a message from the java validation tier"  }}));
				</script>
								
				<span class="errors">
					<form:errors path="firstName" />
				</span>
			</div>
		</div>
		

		<div class="field">
			<div class="label">
				<label for="emailAddress">Email address:</label>
			</div>
			<div class="input">
				<form:input path="emailAddress"/>
				
				<script type="text/javascript">
					Spring.addDecoration(new Spring.ElementDecoration({
						elementId : "emailAddress",
						widgetType : "dijit.form.ValidationTextBox",
						widgetAttrs : { required : true, promptMessage : "Spring JS' AJAX support is used to check email address availability",
						invalidMessage : "This is not a valid email address.",
						regExp : "^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$"  }}));
				</script>
								
				<span class="errors">
					<form:errors path="emailAddress" />
				</span>
			</div>
		</div>

		<tiles:insertAttribute name="emailAvailability" />

		<a id="checkEmailAvailability" href="${flowExecutionUrl}&_eventId=checkEmailAvailability">Check availabilty (ajax)</a>
		<script type="text/javascript">
			Spring.addDecoration(new Spring.AjaxEventDecoration({
			elementId: "checkEmailAvailability",
			event: "onclick",
			params: { fragments: "emailAvailability" }
			}));
		</script>
		<br />

		<a id="checkEmailAvailabilityPopup" href="${flowExecutionUrl}&_eventId=checkEmailAvailability">Check availabilty (ajax + popup)</a>
		<script type="text/javascript">
			Spring.addDecoration(new Spring.AjaxEventDecoration({
			elementId: "checkEmailAvailabilityPopup",
			event: "onclick",
			popup: "true",
			params: { fragments: "emailAvailability" }
			}));
		</script>
        
        <div class="field">
			<div class="label">
				<label for="lastName">Last Name:</label>
			</div>
			<div class="input">
				<form:input path="lastName"/>
				<span class="errors">
					<form:errors path="lastName" />
					<form:errors path="lastName" />
				</span>
			</div>
		</div>		
		
        <div class="field">
			<div class="label">
				<label for="dob">Date Of Birth:</label>
			</div>
			<div class="input">
				<form:input path="dob"/>
				<script type="text/javascript">
					Spring.addDecoration(new Spring.ElementDecoration({
						elementId : "dob",
						widgetType : "dijit.form.DateTextBox",
						widgetAttrs : { required : true, datePattern : "yyyy-MM-dd"  }}));
				</script>
				<span class="errors">
					<form:errors path="dob" />
				</span>
			</div>
		</div>
        
		
		<div class="buttonGroup">
			<input type="submit" id="next" name="_eventId_next" value="Next" />
			<script type="text/javascript">
				Spring.addDecoration(new Spring.ValidateAllDecoration({elementId:'next', event:'onclick'}));
			</script>			
		</div>
		
		
	</fieldset>
</form:form>

