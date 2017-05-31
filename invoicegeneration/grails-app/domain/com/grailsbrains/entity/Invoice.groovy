package com.grailsbrains.entity

import javax.management.StandardEmitterMBean

class Invoice {
    long id
    String title
    int referenceNumber
    String poNumber
    Date invoiceDate
    Date dueDate
    String description

    static hasOne = [vendor:Vendor, client:Client]
    static hasMany = [items:Item]

    static constraints = {
        description(nullable: true)
    }
}
