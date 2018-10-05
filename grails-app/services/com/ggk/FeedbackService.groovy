package com.ggk

import groovy.sql.Sql

class FeedbackService {


    Boolean createFeedback(params){
        log.info("======= Inside CreateFeedback(params) ===========")
        Feedback feedback = new Feedback(params);
        Boolean status = feedback.save(failOnError: true , flush: true);

    }

    Map getFeedbackById(Integer id){

        Map<String , Map<String , String>> feedbackMap = new HashMap<String , Map<String , String>>();


        log.info(id);
        def sql = Sql.newInstance('jdbc:mysql://localhost:3306/recruitment', 'root',
                'root', 'com.mysql.jdbc.Driver')

        sql.eachRow('select * from feedback where interviewee_id = '+id) {
            row ->

                Map<String,String> feedback = new LinkedHashMap<String, String>() ;
                feedback.put("AreasCovered" , row.getString("areas_covered"));
                feedback.put("AreasNotCovered" , row.getString("areas_not_covered"));
                feedback.put("Assignments" , row.getString("assignments"));
                feedback.put("Notes" , row.getString("notes"));
                feedback.put("Strengths" , row.getString("strengths"));
                feedback.put("Weaknesses" , row.getString("weaknesses"));
                feedback.put("Score" , row.getString("score").toString());
                feedback.put("Interviewee" , Interviewee.findById(row.getString("interviewee_id")).firstName);
                feedback.put("Interviewer" , Interviewer.findById(row.getString("interviewer_id")).name);
                feedback.put("InterviewSlot" , InterviewSlot.findById(row.getString("interview_slot_id")).interviewDate.toString());
                feedbackMap.put(InterviewLevel.findById(row.getString("interview_level_id")).description , feedback);
        }

        sql.close()

        log.info(feedbackMap.toString())
        log.info(feedbackMap.size())

        return feedbackMap;
    }


}
