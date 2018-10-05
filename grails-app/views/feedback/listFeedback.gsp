<%--
  Created by IntelliJ IDEA.
  User: teja.desireddy
  Date: 28-09-2018
  Time: 14:19
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Interviewee Feedback Information</title>
</head>

<body>
<g:form controller="feedback" >
<label>Interviewee:</label>

<g:select name="intervieweeId"
          from="${interviewees}"
          optionKey="id"
          optionValue="firstName"/>

    <g:actionSubmit value="GET FEED BACK" action="sendFeedback"/>
</g:form>
</body>
</html>