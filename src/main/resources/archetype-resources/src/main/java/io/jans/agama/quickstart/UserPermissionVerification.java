package io.jans.agama.quickstart;

import java.util.ArrayList;
import java.util.List;

public class UserPermissionVerification {
    
    private List<String> users;

    public UserPermissionVerification() {

        this.users = new ArrayList<>();
    }
    
    public UserPermissionVerification(List<String> users) {

        this.users = users;
    }

    public boolean canAuthenticate(final String username) {

        for(String user: users) {

            if(user.equals(username)) {
                return true;
            }
        }

        return false;
    }
}
