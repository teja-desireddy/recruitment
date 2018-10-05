package com.ggk

class FeedbackController {

    def feedbackService

    def index() {
        render (view:'feedback.gsp', model: [ interviewers:Interviewer.list(), interviewees:Interviewee.list(), interviewLevels:InterviewLevel.list(), interviewSlots:InterviewSlot.list()])
    }

    def createFeedback(){
        log.info("============ Inside createFeedback() ==============")
        log.info(params.toString())
        Boolean status = feedbackService.createFeedback(params)
        if(status){
            render "Success"
        }else{
            render "Failure"
        }
    }

    def displayFeedback(){
        log.info("=========== Inside displayFeedback() =============")
        render(view: 'viewFeedback.gsp' , model: [interviewees:Interviewee.list()])
    }

    def sendFeedback(){
        log.info("===========Inside sendFeedback() ===========");
        log.info(getParams().toString())

        Map feedbackMap = feedbackService.getFeedbackById(Integer.parseInt(params.intervieweeId))
        log.info(feedbackMap.toString())
        render view: 'viewFeedback.gsp', model: [map: feedbackMap, intervieweeId : params.intervieweeId]
        log.info("============ End of sendFeedback() =============")
    }


}
