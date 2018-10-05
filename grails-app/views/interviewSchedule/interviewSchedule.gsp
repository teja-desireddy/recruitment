<%--
  Created by IntelliJ IDEA.
  User: teja.desireddy
  Date: 26-09-2018
  Time: 12:17
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html xmlns="http://www.w3.org/1999/html" xmlns="http://www.w3.org/1999/html">
<head>
    <title>Interviewee Schedule</title>
</head>

<body>
<g:form controller="interviewSchedule" >

    <div style=" width:100%;margin-left: 100px; margin-top:50px;">
    <div style="width:100%;">
    <label>Interviewer:</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<g:select name="interviewerId"
          from="${interviewers}"
          optionKey="id"
          optionValue="name"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<label>Interviewee:</label>

        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        &nbsp&nbsp&nbsp&nbsp
<g:select name="intervieweeId"
          from="${interviewees}"
          optionKey="id"
          optionValue="firstName"/></br></br></br>
    </div>
 <div style="width:100%;">
<label>Interview Level:</label>&nbsp&nbsp&nbsp&nbsp
 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<g:select name="interviewLevelId"
          from="${interviewLevels}"
          optionKey="id"
          optionValue="description" />
 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<label>Interview Slot:</label>
     &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<g:select name="interviewSlotId"
          from="${interviewSlots}"
          optionKey="id"
          optionValue="interviewDate"
/>
</br></br></br>
 </div>
       <div style="margin-left: 400px">
            <g:actionSubmit value="SUBMIT" action="createInterviewSchedule"/>
       </div>

    </div>
</g:form>

</body>
</html>