package invoicegeneration

import com.grailsbrains.auth.Role
import com.grailsbrains.auth.User
import com.grailsbrains.auth.UserRole

class BootStrap {

    def init = { servletContext ->

        def adminRole = new Role(authority: 'ROLE_ADMIN').save()
        def userRole  = new Role(authority: 'ROLE_USER').save()

        def testUser = new User(username: 'thakur.ajeet91@gmail.com', password: 'password').save(failOnError:true)
        def testUser1 = new User(username: 'raj', password: 'password').save(failOnError:true)

        UserRole.create testUser, userRole
        UserRole.create testUser, adminRole
        UserRole.create testUser1, userRole
        UserRole.create testUser1, adminRole

        UserRole.withSession {
            it.flush()
            it.clear()
        }

        println(User.count())
        assert User.count() == 2
        assert Role.count() == 2
        assert UserRole.count() == 4
    }
    def destroy = {
    }
}
