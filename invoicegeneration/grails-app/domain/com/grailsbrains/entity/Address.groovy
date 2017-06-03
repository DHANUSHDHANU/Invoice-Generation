package com.grailsbrains.entity

class Address {

    long id
    int pincode
    String landMark
    String street
    String city
    String state
    String country
    String description

    static hasMany = [vendor:Vendor, client:Client]

    static constraints = {
        landMark(nullable:true, blank:true)
        description(nullable:true, blank:true)
        street(nullable:true, blank:true)
    }
}
