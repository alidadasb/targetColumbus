package targetcolumbus

import grails.converters.JSON

/**
 * ZipcodeController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
class ZipcodeController {
   def storeService



	def zipcode(){
        10.times {println ""}
        println params
        def res = storeService.storesByZipCode([zip:params.zipcode,radius: 10])
        //println res
        //println res.Locations.Location*.ID

        //def result = res.Locations.Location
        res.each {
            println it
            println "*" * 100

        }

        render ( template: "storeList", model: [stores: res])
    }
//	def index = { }
}
