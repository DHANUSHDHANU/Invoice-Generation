package com.grailsbrains.auth

import grails.transaction.Transactional
import org.grails.web.util.WebUtils

@Transactional
class UserService {



    def createUser(User user) {
        println(user.toString())
        user.save(failOnError:true)
        println(Role.get(1))
    }
}
