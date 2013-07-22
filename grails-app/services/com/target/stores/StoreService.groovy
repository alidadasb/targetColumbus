package com.target.stores

import static com.target.constants.Target.*

class StoreService {
    def rest

    def storesByZipCode(Map searchCriteria) {
        //https://api.target.com/v2/store?nearby=43230&key=fzg8mSgoVXUxtSp3yjh4JdOusGPVwvCn

        def _serviceUrl = "${API_BASE}/v2/store?nearby=${searchCriteria.zip}&range=$searchCriteria.radius&key=$consumerKey"
        println _serviceUrl

        def storesByZip = rest.get(_serviceUrl){
            accept "application/json"
        }

        println storesByZip
        println("888888888888888888888888888888888888")
        storesByZip.text
    }

    def findDeals(String zip){
        def _serviceUrl = "${API_BASE}/v1/promotions/weeklyad/storeslugs?citystatezip=$zip&key=$consumerKey"

        def findDeals = rest.get(_serviceUrl){
            accept "application/json"
        }

        findDeals.text
    }
}
