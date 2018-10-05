package com.ggk

class IntervieweeService {


    Boolean createInterviewee(params){

        Interviewee interviewee = new Interviewee(params);
        log.info("*******************")
        log.info(params.contactNo)
        log.info("******************")
        Boolean status = interviewee.save(failOnError:true, flush:true);
        return status;

    }
}
