package com.grailsbrains.entity

import com.grailsbrains.auth.User

class Vendor extends ClientVendorDetail {

    String cin
    String website
    Invoice invoice

    static belongsTo = [user:User]
    static hasMany = [address:Address]

    static constraints = {
        lastName(nullable:true, blank:true)
        logo(nullable:true, blank:true)
        website(nullable:true, blank:true)
        phoneNumber(nullable:true, blank:true)
    }
}
