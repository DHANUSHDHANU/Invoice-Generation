package com.grailsbrains.entity

class Client extends ClientVendorDetail {

    String organizationName
    static hasMany = [address:Address]

    static constraints = {
        lastName(nullable:true, blank:true)

        phoneNumber(nullable:true, blank:true)
    }
}
