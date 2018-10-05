<%--
  Created by IntelliJ IDEA.
  User: teja.desireddy
  Date: 25-09-2018
  Time: 17:29
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <title>Submit Feedback</title>
</head>

<body>
<g:form controller="feedback" >
    <div style="margin-left: 100px; margin-top:50px;">

    <div>
        <div>
            <div>
                <h2>Interview Details</h2></br>
    <label>Interviewer:</label>
                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <g:select name="interviewerId"
              from="${interviewers}"
              optionKey="id"
              optionValue="name"/>
                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <label>Interviewee:</label>
                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <g:select name="intervieweeId"
              from="${interviewees}"
              optionKey="id"
              optionValue="firstName"/></br></br>
    </div>
            <div>
    <label>Interview Level:</label>
                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <g:select name="interviewLevelId"
              from="${interviewLevels}"
              optionKey="id"
              optionValue="description" />
                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <label>Interview Slot:</label>
                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <g:select name="interviewSlotId"
              from="${interviewSlots}"
              optionKey="id"
              optionValue="interviewDate"
    /></br></br>
            </div>
        </div>
    %{--<h3>Interviewee Details</h3><br>--}%
    %{--<label>First Name: </label>--}%
    %{--<g:field type="text" name="firstName" readonly="readonly" value="${interviewee.firstName}"/>--}%
    %{--<label>Last Name: </label>--}%
    %{--<g:field type="text" name="lastName" readonly="readonly" value="${interviewee.lastName}"/><br/>--}%
    %{--<label>Contact Number: </label>--}%
    %{--<g:field type="text" name="contactNo" readonly="readonly" value="${interviewee.contactNo}"/>--}%
    %{--<label>Date of Birth:</label>--}%
    %{--<g:field type="text" name="dob" readonly="readonly" value="${interviewee.dob}"/><br/>--}%
    %{--<Label>Uploaded CV:</Label>--}%
    %{--<g:field type="text" name="cv" readonly="readonly" value="${interviewee.cv}"/>--}%
    %{--<label>Total Experience:</label>--}%
    %{--<g:field type="text" name="experience" readonly="readonly" value="${interviewee.experience}"/><br/>--}%
    %{--<label>Technologies:</label>--}%
    %{--<g:field type="text" name="technologies" readonly="readonly" value="${interviewee.technologies}"/><br/>--}%


    %{--Repeat loop to display all the interview levels--}%
    %{--<label>Interviewer Name: </label>--}%
    %{--<g:field type="text" name="name" readonly="readonly" value="${interviewer.name}"/><br/>--}%
    %{--<label>Level of Interview</label>--}%
    %{--<g:field type="text" name="level" readonly="readonly" value="${interviewer.level}"/><br/>--}%
    %{--<label>Interview Date and Time</label>--}%
    %{--<g:field type="text" name="interviewDate" readonly="readonly" value="${interviewer.level}"/><br/>--}%
    <div>
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <h2>Feedback</h2><br/>
    <label>Interview Notes:</label>
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        &nbsp&nbsp
    <g:textArea name="notes"/><br/><br/>
    <label>Score:</label>
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        &nbsp&nbsp&nbsp
    <g:textField name="score"/><br/><br/>
    <label>Areas Covered:</label>
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        &nbsp&nbsp
    <g:textArea name="areasCovered"/><br/><br/>
    <label>Areas Not Covered:</label>
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <g:textArea name="areasNotCovered"/><br/><br/>
    <label>Upload Assignment Docs:</label>
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <g:textArea name="assignments"/><br/><br/>
    <label>Strengths:</label>
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <g:textArea name="strengths"/><br/><br/>
    <label>Weaknesses:</label>
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <g:textArea name="weaknesses"/><br/><br/><br/>
    </div>
    </div>
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <g:actionSubmit value="SUBMIT" action="createFeedback"/>
    </div>
</g:form>
</body>
</html>