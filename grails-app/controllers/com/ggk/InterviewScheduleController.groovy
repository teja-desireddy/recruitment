package com.ggk



class InterviewScheduleController {

    def interviewScheduleService

    def index() {

        log.info("======================================")
        log.info(Interviewer.list().toString())

        render (view:'interviewSchedule.gsp', model: [ interviewers:Interviewer.list(), interviewees:Interviewee.list(), interviewLevels:InterviewLevel.list(), interviewSlots:InterviewSlot.list()])
    }

    def createInterviewSchedule(){

        log.info("==========Inside CreateInterviewSchedule =================")
        log.info(params.toString())
        Boolean status = interviewScheduleService.createInterviewSchedule(params);
        log.info(status)

        if(status){
            render "Success";
        }else{
            render "Failure"
        }

    }
}
