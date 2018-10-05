package com.ggk

class InterviewerController {

    def index() { }

    def interviewerService;

    def createInterviewer(){

        log.info("==========Inside CreateInterviewee =================")
        Boolean status = interviewerService.createInterviewer(params);
        log.info(status)

        if(status){
            render "Success";
        }else{
            render "Failure"
        }

    }
}
