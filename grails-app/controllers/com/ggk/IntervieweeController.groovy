package com.ggk

class IntervieweeController {

    static allowedMethods = [createInterviewee:'POST']

    def intervieweeService
    def technologyService

    def index() {

//        Interviewee interviewee = new Interviewee();
//        interviewee.intervieweeId = 1;
//        interviewee.firstName = "Teja";
//        interviewee.lastName = "Desireddy";
//        interviewee.contactNo = 23456789;
//        interviewee.cv="sdfgfhgkl";
//        interviewee.dob= new Date();
//        interviewee.experience=2.4;


//        Boolean status = intervieweeService.save(failOnError:true, flush:true);


        render (view:'interviewee.gsp', technologies:getTechnologies())
    }

    def hi(){
        render "Success"
    }

    def createInterviewee(){

        log.info("==========Inside CreateInterviewee =================")
       Boolean status = intervieweeService.createInterviewee(params);
        log.info(status)

        if(status){
            render "Success";
        }else{
            render "Failure"
        }

    }

    def getTechnologies(){

        log.info("======Inside getTechnologies=========")
        def technologies = technologyService.listTechnologies()
        log.info(technologies)
        return technologies
    }

    def updateInterviewee(){

    }

    def deleteInterviewee(){

    }

    def getInterviewee(){

    }
}
