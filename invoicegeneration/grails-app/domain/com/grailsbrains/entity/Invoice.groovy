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
    String status
    Vendor vendor
    Client client


    static hasMany = [items:Item]

    static constraints = {
        description(nullable: true)
        status(nullable: true)
    }
}
