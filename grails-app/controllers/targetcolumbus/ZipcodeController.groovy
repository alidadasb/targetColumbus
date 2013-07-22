package targetcolumbus

import grails.converters.JSON

/**
 * ZipcodeController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
class ZipcodeController {
   def storeService


    def dealsList(){
        println params
        def zip = params.id.split('-')
        def res = storeService.findDeals(zip[0])

        def rr =JSON.parse(res)
        println(rr)

        render ( view: "dealsList", model: [deals:rr ])
    }

	def zipcode(){
        def res = storeService.storesByZipCode([zip:params.zipcode,radius: 10])
        render ( template: "storeList", model: [stores: JSON.parse(res)])
    }
}
