package com.ggk

import com.ggk.TechnologyService

class TechnologyController {

    TechnologyService techService = new TechnologyService();

    def index() { }

    def createTechnology(){


    }

    def updateTechnology(){

    }

    def deleteTechnology(){

    }

    def getTechnologies(){


        def technologies = techService.getTechnologies()
        [technologies:technologies]
    }
}
