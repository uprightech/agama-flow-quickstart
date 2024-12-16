package io.jans.agama.quickstart;

import java.util.List;
import java.util.ArrayList;


import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

public class UserPermissionVerificationTest {
    
    //poorly written tests. Just for demonstration purposes  

    private List<String> users;

    public UserPermissionVerificationTest() {

        users = new ArrayList<>();
        users.add("fred");
        users.add("sylvia");
    }

    @Test
    public void testUserNotInUserlistCannotAuthenticate() {

       UserPermissionVerification service = new UserPermissionVerification(users);
       assertTrue(!service.canAuthenticate("francis"));
    }

    @Test
    public void testUserInUserlistCanAuthenticate() {

        UserPermissionVerification service = new UserPermissionVerification(users);
        assertTrue(service.canAuthenticate("fred"));
    }
}
