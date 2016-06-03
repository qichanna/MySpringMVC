package main.mvcbind;

import java.util.Map;

/**
 * Created by liqi7 on 2016/6/3.
 */
public class UserMapForm {
    private Map<String,User> users;

    public Map<String, User> getUsers() {
        return users;
    }

    public void setUsers(Map<String, User> users) {
        this.users = users;
    }

    @Override
    public String toString() {
        return "UserMapForm{" +
                "users=" + users +
                '}';
    }
}
