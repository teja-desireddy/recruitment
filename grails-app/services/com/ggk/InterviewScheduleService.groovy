package com.ggk

class InterviewScheduleService {

    Boolean createInterviewSchedule(params){

        InterviewSchedule interviewSchedule = new InterviewSchedule(params)

        Boolean status = interviewSchedule.save(failOnError:true, flush:true)
        return status;

    }
}
