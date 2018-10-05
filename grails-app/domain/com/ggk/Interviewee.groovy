package com.ggk

import javax.persistence.Id
import javax.persistence.OneToMany

class Interviewee {

    Integer id
    String firstName
    String lastName
    Integer contactNo
    Date dob
    String cv
    Double experience

    static hasMany = [technologies: Technology]

    static constraints = {
        firstName nullable: false
        lastName nullable:false
        dob nullable: false
        cv nullable: false
        experience nullable: false
        technologies nullable: false
    }

}
