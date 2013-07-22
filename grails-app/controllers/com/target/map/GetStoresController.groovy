package com.target.map

class GetStoresController {
    def storeService

    def storesByZip() {
        render storeService.storesByZipCode([zip: params.zip, radius: params.radius])
    }

    def findDeals(){
        render storeService.findDeals(params.zip)
    }
}
