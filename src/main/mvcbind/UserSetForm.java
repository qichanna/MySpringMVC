package main.mvcbind;

import java.util.LinkedHashSet;
import java.util.Set;

/**
 * Created by liqi7 on 2016/6/3.
 */
public class UserSetForm {
    private Set<User> users;

    private UserSetForm(){
        users = new LinkedHashSet<User>();
        users.add(new User());
        users.add(new User());
    }

    public Set<User> getUsers() {
        return users;
    }

    public void setUsers(Set<User> users) {
        this.users = users;
    }

    @Override
    public String toString() {
        return "UserSetForm{" +
                "users=" + users +
                '}';
    }
}
