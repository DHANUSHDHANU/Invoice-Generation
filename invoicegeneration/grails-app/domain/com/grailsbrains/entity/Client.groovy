package com.grailsbrains.entity

class Client extends ClientVendorDetail {


    String OrganizationName
    Invoice invoice

    static hasMany = [address:Address]

    static constraints = {
        lastName(nullable:true, blank:true)
        logo(nullable:true, blank:true)
        phoneNumber(nullable:true, blank:true)
    }
}
