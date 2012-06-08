<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


        <div class="field">
			<div class="label">
				<label for="firstName">First Name:</label>
			</div>
			<div class="input">
				<form:input path="firstName"/>
			</div>
		</div>		
        
        <div class="field">
			<div class="label">
				<label for="lastName">Last Name:</label>
			</div>
			<div class="input">
				<form:input path="lastName"/>
			</div>
		</div>		
		
        <div class="field">
			<div class="label">
				<label for="dob">Date Of Birth:</label>
			</div>
			<div class="input">
				<form:label path="dob"/>
			</div>
		</div>
		
        <div class="field">
			<div class="label">
				<label for="creditCard">Credit card:</label>
			</div>
			<div class="input">
				<form:input path="creditCard"/>
			</div>
		</div>
		
		
        
