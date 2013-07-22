package com.target.map

class GetStoresController {
    def storeService

    def storesByZip() {
        def result = storeService.storesByZipCode([zip: params.zip, radius: params.radius])

        //println result.Locations.Location*.ID
        println result

        render view: 'getStores', model: [stores: result.Locations.Location]

        //result
    }
}
