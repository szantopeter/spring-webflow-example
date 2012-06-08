<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


        <div class="field">
			<div class="label">
				<label for="petName">Your pet's name</label>
			</div>
			<div class="input">
				<form:input path="petName"/>
				
				<script type="text/javascript">
					Spring.addDecoration(new Spring.ElementDecoration({
						elementId : "petName",
						widgetType : "dijit.form.ValidationTextBox",
						widgetAttrs : { required : true}}));
				</script>
								
				<span class="errors">
					<form:errors path="firstName" />
				</span>
			</div>
		</div>