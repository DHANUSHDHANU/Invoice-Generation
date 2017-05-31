package com.grailsbrains.entity

class ClientVendorDetail {
    long id
    String firstName
    String lastName
    String email
    String phoneNumber
    String mobileNumber
    Integer fax

    static constraints = {
        tablePerHierarchy false
    }
}
