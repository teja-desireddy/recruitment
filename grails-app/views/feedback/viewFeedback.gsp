<%--
  Created by IntelliJ IDEA.
  User: teja.desireddy
  Date: 28-09-2018
  Time: 15:54
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Interviewee Feedback</title>
</head>
<body>
    <g:form controller="feedback">
        <div style="margin-left: 100px; margin-top:50px;">

            <h4><label>Select Interviewee :</label>
                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            <%
                System.out.println("**********************");
                System.out.println(intervieweeId)
                System.out.println("**********************");
            %>
            <g:select name="intervieweeId"
                      from="${com.ggk.Interviewee.list()}"
                      optionKey="id"
                      optionValue="firstName"

                        />
                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            <g:actionSubmit value="GET FEED BACK" action="sendFeedback"/>
            <div>
                <h2>Feedback </h2></br>
            </div>
       <div>
        <g:each in="${map}" var="map1">

        <h4><label>Interview Level:</label>
            <g:textField name="interview_level" value="${map1.key}" readonly="true"/></h4><br/><br/>
            %{--${map1.key} is ${map1.value}--}%


            %{--<g:each in="${map1.value}" var="e">--}%

            %{--def map2 = ${map1.value}--}%
        <%
        System.out.println("Inside Loop")
        System.out.println(map1.value);
        %>


        <label>Interviewer:</label>
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        <g:textField name="name" value="${map1.value.Interviewer}" readonly="true"/>
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        <label>Interview Slot:</label>
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        <g:textField name="interview_slot" value="${map1.value.InterviewSlot}" readonly="true"/><br/><br/>

        <label>Interview Score:</label>
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        <g:textField name="interview_score" value="${map1.value.Score}" readonly="true"/>
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        <label>Interview Notes:</label>
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        <g:textArea name="notes" value="${map1.value.Notes}" readonly="true"/><br/><br/>

        <label>Assignment Docs:</label>
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        <g:textArea name="assignments" value="${map1.value.Assignments}" readonly="true"/>
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        <label>Areas Covered:</label>
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        <g:textArea name="areas_covered" value="${map1.value.AreasCovered}" readonly="true"/><br/><br/>

        <label>Areas Not Covered:</label>
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        <g:textArea name="areas_not_covered" value="${map1.value.AreasNotCovered}" readonly="true"/>
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        <label>Strengths:</label>
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        <g:textArea name="strengths" value="${map1.value.Strengths}" readonly="true"/><br/><br/>

        <label>Weaknesses:</label>
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        <g:textArea name="weaknesses" value="${map1.value.Weaknesses}" readonly="true"/><br/><br/>

        </g:each>
       </div>
        </div>
    </g:form>
<body>

</body>
</html>