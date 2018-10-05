<%--
  Created by IntelliJ IDEA.
  User: teja.desireddy
  Date: 24-09-2018
  Time: 12:53
--%>

<%@ page import="com.ggk.Technology" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Interviewee Details</title>
</head>

<body>
<g:form controller="interviewee" >
    <div style=" width:100%;margin-left: 100px; margin-top:50px;">
        <label>First Name: </label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <g:textField name="firstName"/><br/><br/>
    <label>Last Name: </label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <g:textField name="lastName"/><br/><br/>
    <label>Contact Number: </label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <g:textField name="contactNo"/><br/><br/>
    <label>Date of Birth:</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <g:datePicker name="dob"/><br/><br/>
    <Label>Upload CV:</Label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <g:textField name="cv"/><br/><br/>
    <label>Total Experience:</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <g:textField name="experience"/><br/><br/>
    <label>Technologies:</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp

   %{--<g:each in="${technologies}" var="tech">
        <h2>${tech.techName}</h2>
        <h2>${tech.techName}</h2>
    </g:each>--}%
        <g:select name="technologies"
                  from="${technologies}"
                  optionKey="id"
                  optionValue="techName"
                  multiple="true" /><br/><br/><br/>

        &nbsp&nbsp&nbsp&nbsp&nbsp<g:actionSubmit value="SUBMIT" action="createInterviewee"/>
    </div>
</g:form>
</body>
</html>