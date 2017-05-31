package com.grailsbrains.entity

class Item {

    long id
    String itemName
    int quantity
    int price
    int amount
    int subTotal
    String Description

    static constraints = {
        amount(nullable:true, blank:true)
        subTotal(nullable:true, blank:true)
        Description(nullable:true, blank:true)
    }
}
