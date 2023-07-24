package examples.cydeo;

import com.intuit.karate.junit5.Karate;

class UsersRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("SpartansTest.feature").tags("@wip").relativeTo(getClass());
    }    

}
