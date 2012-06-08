<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


        <div class="field">
			<div class="label">
				<label for="cardNumber">Card number:</label>
			</div>
			<div class="input">
				<form:input path="cardNumber"/>
				
				<script type="text/javascript">
					Spring.addDecoration(new Spring.ElementDecoration({
						elementId : "cardNumber",
						widgetType : "dijit.form.ValidationTextBox",
						widgetAttrs : { required : true, invalidMessage : "A 16-digit credit card number is required.", 
						regExp : "[0-9]{16}"  }}));
				</script>
								
				<span class="errors">
					<form:errors path="firstName" />
				</span>
			</div>
		</div>