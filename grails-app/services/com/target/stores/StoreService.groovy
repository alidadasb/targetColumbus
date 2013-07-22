package com.target.stores

import static com.target.constants.Target.*

class StoreService {
    def rest

    def storesByZipCode(Map searchCriteria) {
        //https://api.target.com/v2/store?nearby=43230&key=fzg8mSgoVXUxtSp3yjh4JdOusGPVwvCn

        def _serviceUrl = "${API_BASE}/v2/store?nearby=$searchCriteria.zip&range=$searchCriteria.radius&key=$consumerKey"
        println _serviceUrl

        def storesByZip = rest.get(_serviceUrl){
            accept "application/json"
//            contentType "application/json"
        }

        println storesByZip

        def resultMap = [:] << storesByZip.json
        resultMap
    }
}
