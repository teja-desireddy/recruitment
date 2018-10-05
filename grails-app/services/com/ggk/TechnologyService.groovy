package com.ggk

class TechnologyService {

    def serviceMethod() {

    }

    List<Technology> listTechnologies(){

        Technology.list().each{
            log.info(it.techName)
        }

        return Technology.list();

    }
}
