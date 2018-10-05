package com.ggk

import javax.persistence.Id

class Technology {

    long id
    String techName;

    static constraints = {
        techName nullable: false
    }

}