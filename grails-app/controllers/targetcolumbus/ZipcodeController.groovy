package targetcolumbus

import grails.converters.JSON

/**
 * ZipcodeController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
class ZipcodeController {
   def storeService


    def findDeal(){
        println params
        render ( template: "dealsList", model: [deals: storeService.findDeals(params.id)])
    }
	def zipcode(){
        10.times {println ""}
        println params
        def res = storeService.storesByZipCode([zip:params.zipcode,radius: 10])
        res.each {
          it.value.Location.each {println "^^^^^^ $it"}
        }
        render ( template: "storeList", model: [stores: res])
    }
//	def index = { }
}
