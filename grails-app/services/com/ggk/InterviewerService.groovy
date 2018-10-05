package com.ggk

class InterviewerService {

    def serviceMethod() {
    }

    Boolean createInterviewer(params){

        Interviewer interviewer = new Interviewer(params);
        Boolean status = interviewer.save(failOnError:true, flush:true);
        return status;

    }
}
