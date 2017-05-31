package com.grailsbrains.auth

import org.springframework.security.access.annotation.Secured

class SecureController {

    @Secured('ROLE_ADMIN')
    def index() {
        println("user name is : " + session.id)
        render view:"dashboard"
    }


}
